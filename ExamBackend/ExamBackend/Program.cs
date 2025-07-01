using ExamBackend.Extensions;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddGrpc().AddJsonTranscoding();

var app = builder.Build();

app.UseHttpsRedirection();
app.MapGrpcServices();
app.Run();