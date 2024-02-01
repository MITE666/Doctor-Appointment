using DoctorAppointments.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace DoctorAppointments.DataAccess.Persistence.Configurations
{
    public class UserTypeConfiguration : IEntityTypeConfiguration<UserType>
    {
        public void Configure(EntityTypeBuilder<UserType> builder)
        {
            builder.HasKey(type => type.Id);
            builder.HasData(
            new[]
            {
                new UserType
                {
                    Id=Guid.Parse("8A16D3E1-DC8D-47D6-B93A-BD7A1D5824AB"),
                    Type = "Patient"
                },
                new UserType
                {
                    Id=Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                    Type = "Doctor"
                }
            });
        }
    }
}