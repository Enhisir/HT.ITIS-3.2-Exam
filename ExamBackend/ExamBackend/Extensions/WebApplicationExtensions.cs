using ExamBackend.Services;

namespace ExamBackend.Extensions;

public static class WebApplicationExtensions
{
    public static WebApplication MapGrpcServices(this WebApplication app)
    {
        app.MapGrpcService<StaffService>();
        return app;
    }
}