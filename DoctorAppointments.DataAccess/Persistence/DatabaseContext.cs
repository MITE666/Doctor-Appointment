using DoctorAppointments.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace DoctorAppointments.DataAccess.Persistence;

public class DatabaseContext : DbContext
{
    public DatabaseContext(DbContextOptions options) : base(options)
    {
    }

    public DbSet<User> Users { get; set; }
    public DbSet<Pacient> Pacients { get; set; }
    public DbSet<Appointment> Appointments { get; set; }
    public DbSet<Billing> Billings { get; set; }
    public DbSet<City> Cities { get; set; }
    public DbSet<MedicalFacility> MedicalFacilities { get; set; }
    public DbSet<MedicationStock> MedicationStocks { get; set; }
    public DbSet<Specialty> Specialties { get; set; }
    public DbSet<Doctor> Doctors { get; set; }
    public DbSet<UserType> UserTypes { get; set; }
    public DbSet<Region> Regions { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        base.OnModelCreating(modelBuilder);
    }
}