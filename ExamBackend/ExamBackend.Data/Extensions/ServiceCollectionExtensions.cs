using ExamBackend.Data.Database;
using ExamBackend.Data.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace ExamBackend.Data.Extensions;

public static class ServiceCollectionExtensions
{
    // private static IConfiguration GetConfiguration(this IServiceCollection services)
    //     => services.BuildServiceProvider().GetService<IConfiguration>()
    //        ?? throw new SystemException("IConfiguration instance not found");
    
    public static IServiceCollection AddDatabaseConfigured(this IServiceCollection services)
        => services
            .AddDbContext<ApplicationContext>(options => options.UseInMemoryDatabase("ExamBackend"))
            // .AddDbContext<ApplicationContext>(options => options.UseNpgsql(
            // services.GetConfiguration().GetConnectionString("Database"),
            // b => b.MigrationsAssembly("ExamBackend.Data")))
            .AddScoped<IStaffRepository, StaffRepository>();
}