using DoctorAppointments.DataAccess.Persistence;
using DoctorAppointments.DataAccess.Repositories;
using DoctorAppointments.DataAccess.Repositories.Implementation;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace DoctorAppointments.DataAccess;

public static class ServiceCollection
{
    public static IServiceCollection AddDataAccess(this IServiceCollection services, IConfiguration configuration)
    {
        services.AddDbContext<DatabaseContext>(options =>
        {
            options.UseNpgsql(configuration["Database:ConnectionString"]);
        });

        services.AddScoped<IUserRepository, UserRepository>();

        services.AddScoped<IDoctorRepository, DoctorRepository>();
        services.AddScoped<IPacientRepository, PacientRepository>();
        services.AddScoped<IMedicationStockRepository, MedicationStockRepository>();
        services.AddScoped<IMedicalFacilityRepository, MedicalFacilityRepository>();
        services.AddScoped<IRegionRepository, RegionRepository>();
        services.AddScoped<ICityRepository, CityRepository>();
        services.AddScoped<IBillingRepository, BillingRepository>();
        services.AddScoped<IAppointmentRepository, AppointmentRepository>();

        return services;
    }
}