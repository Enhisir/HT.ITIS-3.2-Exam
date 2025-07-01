using ExamBackend.Domain.Enums;

namespace ExamBackend.Domain.Models;

public class StaffMember
{
    public Guid Id { get; set; }
    public string FirstName { get; set; } = null!;
    public string? MiddleName { get; set; } = null!;
    public string LastName { get; set; } = null!;
    public int Wage { get; set; }
    public Position Position { get; set; }
}