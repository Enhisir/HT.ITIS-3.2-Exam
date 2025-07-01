using ExamBackend.Data.Filters;
using ExamBackend.Domain.Models;

namespace ExamBackend.Data.Repositories;

public interface IStaffRepository
{
    public IQueryable<StaffMember> GetStaffMembers(StaffMembersFilter? filter = null);
    public Task<bool> CreateStaffMember(StaffMember staffMember);
    public Task<StaffMember?> TryReadStaffMember(Guid id);
    public Task<bool> UpdateStaffMember(StaffMember staffMember);
    public Task<bool> DeleteStaffMember(Guid id);
}