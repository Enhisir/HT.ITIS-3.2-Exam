using ExamBackend.Data.Filters;
using ExamBackend.Data.Repositories;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Microsoft.EntityFrameworkCore;

namespace ExamBackend.Services;

public class StaffService(
    IStaffRepository staffRepository) : StaffApi.StaffApiBase
{
    public override async Task<GetStaffResponse> GetStaff(GetStaffRequest request, ServerCallContext context)
    {
        var query = staffRepository
            .GetStaffMembers(new StaffMembersFilter( (Domain.Enums.Position)request.PositionFilter ))
            .Select(model => new StaffMember
            {
                Id = model.Id.ToString(),
                FirstName = model.FirstName,
                LastName = model.LastName,
                Wage = model.Wage,
                Position = (Position)model.Position
            });
        
        var response = new GetStaffResponse();
        response.Members.AddRange(await query.ToListAsync());
        return response;
    }

    public override async Task<Empty> CreateStaffMember(CreateStaffRequest request, ServerCallContext context)
    {
        var model = new Domain.Models.StaffMember
        {
            FirstName = request.FirstName,
            LastName = request.LastName,
            Wage = request.Wage,
            Position = (Domain.Enums.Position)request.Position
        };

        if (await staffRepository.CreateStaffMember(model))
        {
            return new Empty();
        }
        throw new RpcException(new Status(StatusCode.InvalidArgument, "Bad request"));
    }

    public override async Task<Empty> UpdateStaffMember(StaffMember request, ServerCallContext context)
    {
        if (!Guid.TryParse(request.Id, out var id))
        {
            throw new RpcException(new Status(StatusCode.InvalidArgument, "Invalid id format"));
        }
        var model = new Domain.Models.StaffMember
        {
            Id = id,
            FirstName = request.FirstName,
            LastName = request.LastName,
            Wage = request.Wage,
            Position = (Domain.Enums.Position)request.Position
        };
        
        if (await staffRepository.UpdateStaffMember(model))
        {
            return new Empty();
        }
        throw new RpcException(new Status(StatusCode.InvalidArgument, "Bad request"));
    }

    public override async Task<Empty> DeleteStaffMember(DeleteStaffRequest request, ServerCallContext context)
    {
        if (Guid.TryParse(request.StaffId, out var staffId)
            && await staffRepository.DeleteStaffMember(staffId))
        {
            return new Empty();
        }
        throw new RpcException(new Status(StatusCode.NotFound, "staff member not found"));
    }
}