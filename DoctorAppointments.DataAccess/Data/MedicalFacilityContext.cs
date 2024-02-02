using DoctorAppointments.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Data
{
    public class MedicalFacilityContext : DbContext
    {
        public MedicalFacilityContext(DbContextOptions<MedicalFacilityContext> options) : base(options)
        {
            
        }

        public DbSet<MedicalFacility>  Facilities { get; set; }
    }
}
