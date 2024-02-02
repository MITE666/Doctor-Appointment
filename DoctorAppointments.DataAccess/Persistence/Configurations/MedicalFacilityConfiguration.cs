using DoctorAppointments.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace DoctorAppointments.DataAccess.Persistence.Configurations
{
    public class MedicalFacilityConfiguration : IEntityTypeConfiguration<MedicalFacility>
    {
        public void Configure(EntityTypeBuilder<MedicalFacility> builder)
        {
            builder.HasKey(type => type.Id);
            builder.HasData(
                new[]
                {
                    new MedicalFacility()
                    {
                        Id=Guid.Parse("4DA05E2D-F887-466C-80AD-89CF1C0A0E8F"),
                        Name = "Arcadia",
                        CityId = Guid.Parse("e2eba520-92a8-11ed-a93a-ffa9553478f9")
                    },
                    new MedicalFacility()
                    {
                        Id=Guid.Parse("45BDFDD5-8631-4F55-AD58-AA4D62F6A0D4"),
                        Name = "Regina Maria",
                        CityId = Guid.Parse("e2eba520-92a8-11ed-a93a-ffa9553478f9")
                    },
                });
        }
    }
}