using ExamBackend.Data.Database;
using ExamBackend.Data.Extensions;
using ExamBackend.Data.Filters;
using ExamBackend.Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace ExamBackend.Data.Repositories;

public class StaffRepository(
    ApplicationContext context,
    ILogger<StaffRepository> log) : IStaffRepository
{
    private DbSet<StaffMember> StaffMembers => context.StaffMembers;
    
    public IQueryable<StaffMember> GetStaffMembers(StaffMembersFilter? filter = null)
        => StaffMembers
            .AsNoTracking()
            .AsQueryable()
            .WhereIf(
                q => q.Where(e => e.Position == filter!.Position), 
                () => filter != null);

    public async Task<bool> CreateStaffMember(StaffMember staffMember)
    {
        try
        {
            await StaffMembers.AddAsync(staffMember);
            await context.SaveChangesAsync();
            return true;
        }
        catch (Exception e)
        {
            log.LogError("Error occured while creating model: {error}", e);
            return false;
        }
    }

    public async Task<StaffMember?> TryReadStaffMember(Guid id)
        => await StaffMembers.SingleOrDefaultAsync(e => e.Id == id);

    public async Task<bool> UpdateStaffMember(StaffMember staffMember)
    {
        try
        {
            StaffMembers.Update(staffMember);
            await context.SaveChangesAsync();
            return true;
        }
        catch (Exception e)
        {
            log.LogError("Error occured while updating model: {error}", e);
            return false;
        }
    }

    public async Task<bool> DeleteStaffMember(Guid id)
    {
        var staffMember = await StaffMembers.SingleOrDefaultAsync(e => e.Id == id);
        if (staffMember == null) return false;
        
        try
        {
            StaffMembers.Remove(staffMember);
            await context.SaveChangesAsync();
            return true;
        }
        catch (Exception e)
        {
            log.LogError("Error occured while deleting model: {error}", e);
            return false;
        }
    }
}