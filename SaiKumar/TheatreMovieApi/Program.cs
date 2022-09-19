using Microsoft.EntityFrameworkCore;
using TheatreMovieClassLibrary.Data;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");

builder.Services.AddDbContext<ApiApplicationDbContext>(option => option.UseSqlServer(connectionString));

builder.Services.AddControllers();
builder.Services.AddCors(option => option.AddPolicy("SpacificPolicy", builder => builder.WithOrigins("https://localhost:7021").AllowAnyHeader().AllowAnyMethod()));

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();
app.UseCors("SpacificPolicy");


app.MapControllers();

app.Run();
