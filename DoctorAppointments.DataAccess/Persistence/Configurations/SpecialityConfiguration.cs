using DoctorAppointments.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace DoctorAppointments.DataAccess.Persistence.Configurations;

public class SpecialityConfiguration : IEntityTypeConfiguration<Specialty>
{
    public void Configure(EntityTypeBuilder<Specialty> builder)
    {
        builder.HasKey(type => type.Id);
        builder.HasData(
            new[]
            {
                new Specialty()
                {
                    Id=Guid.Parse("ba9c9af3-a17a-4863-99d1-75892e6987ca"),
                    Name = "Dermatology"
                },
                new Specialty()
                {
                    Id=Guid.Parse("20d8ed61-3b25-4b89-8724-bfff53dd8c43"),
                    Name = "Emergency medicine"
                },
                new Specialty()
                {
                    Id=Guid.Parse("d2147f37-b602-4a33-b29b-a5afbf844d4f"),
                    Name = "Family medicine"
                },
                new Specialty()
                {
                    Id=Guid.Parse("f2bfd52b-cbdd-4f90-afc8-d6f2bf903ab6"),
                    Name = "Ophthalmology"
                },
                new Specialty()
                {
                    Id=Guid.Parse("b8cfaf4a-2be7-46b6-a30d-9156947623e9"),
                    Name = "Surgery"
                },
                new Specialty()
                {
                    Id=Guid.Parse("410ba8be-0848-4fc2-9e15-19d883c0f19f"),
                    Name = "Pediatrics"
                }
            });
    }
}