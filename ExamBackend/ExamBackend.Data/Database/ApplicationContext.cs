using ExamBackend.Domain.Enums;
using ExamBackend.Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace ExamBackend.Data.Database;

public sealed class ApplicationContext : DbContext
{
    public DbSet<StaffMember> StaffMembers { get; set; } = null!;
    
    public ApplicationContext() => Database.EnsureCreated();
    
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseInMemoryDatabase("ExamBackend");
        // optionsBuilder.UseNpgsql(); // TODO: дописать
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<StaffMember>().HasData([
            new StaffMember
            {
                Id = Guid.Parse("b2f1c587-3c52-4bc1-8c7f-53f98b8cfd87"),
                FirstName = "Alice",
                MiddleName = "Marie",
                LastName = "Johnson",
                Wage = 145000,
                Position = Position.Manager
            },
            new StaffMember
            {
                Id = Guid.Parse("6d0d8c64-5f3d-4f3e-9d3d-7ec3a674a222"),
                FirstName = "Bob",
                MiddleName = "James",
                LastName = "Smith",
                Wage = 139000,
                Position = Position.Analyst
            },
            new StaffMember
            {
                Id = Guid.Parse("9bfa7cd9-0cb8-41c2-8c34-2c0d08a4c17e"),
                FirstName = "Clara",
                MiddleName = "Elise",
                LastName = "Bennett",
                Wage = 152000,
                Position = Position.Designer
            },
            new StaffMember
            {
                Id = Guid.Parse("ad2f6c3a-2b88-4b9a-bf1a-5fd02ff9e750"),
                FirstName = "David",
                MiddleName = "",
                LastName = "Nguyen",
                Wage = 147000,
                Position = Position.Developer
            },
            new StaffMember
            {
                Id = Guid.Parse("7c8e7de1-099f-4a9e-88b7-4385b9e18329"),
                FirstName = "Eva",
                MiddleName = "Rose",
                LastName = "Kim",
                Wage = 156000,
                Position = Position.Manager
            },
            new StaffMember
            {
                Id = Guid.Parse("0f4a7efb-cc14-4e06-b43b-f46c3c8f7dd2"),
                FirstName = "Frank",
                MiddleName = null,
                LastName = "Lopez",
                Wage = 143000,
                Position = Position.Analyst
            }
        ]);
    }
}