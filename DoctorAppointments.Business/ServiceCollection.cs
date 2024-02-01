using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Services;
using DoctorAppointment.Application.Services.Implementation;
using DoctorAppointment.Application.Validators;
using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Stripe;

namespace DoctorAppointment.Application
{
    public static class ServiceCollection
    {
        public static IServiceCollection AddApplication(this IServiceCollection services, IConfiguration configuration)
        {
            // Stripe 
            StripeConfiguration.ApiKey = configuration["Stripe:Secret"];
            services.AddScoped<IPaymentService, PaymentService>();


            //FluentValidation
            services.AddValidatorsFromAssemblyContaining<UserValidator>();
            services.AddFluentValidationAutoValidation();

            //User
            services.AddAutoMapper(typeof(UserProfile));

            services.AddAutoMapper(typeof(DoctorProfile));

            services.AddScoped<IUserService, UserService>();

            //Doctor
            services.AddAutoMapper(typeof(DoctorProfile));

            services.AddScoped<IDoctorService, DoctorService>();

            //Pacient
            services.AddAutoMapper(typeof(PacientProfile));

            services.AddScoped<IPacientService, PacientService>();

            //MedicationStock
            services.AddAutoMapper(typeof(MedicationStockProfile));

            services.AddScoped<IMedicationStockService, MedicationStockService>();

            //MedicalFacility
            services.AddAutoMapper(typeof(MedicalFacilityProfile));

            services.AddScoped<IMedicalFacilityService, MedicalFacilityService>();
            
            //Billing
            services.AddAutoMapper(typeof(BillingProfile));

            services.AddScoped<IBillingService, BillingService>();

            //Region
            services.AddScoped<IRegionService, RegionService>();

            //City
            services.AddScoped<ICityService, CityService>();

            //Appointment
            services.AddScoped<IAppointmentService, AppointmentService>();


            return services;
        }
    }
}