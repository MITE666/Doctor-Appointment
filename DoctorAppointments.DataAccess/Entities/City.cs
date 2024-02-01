namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class City : Entity
{
    public string Name { get; set; }
    public Guid RegionId { get; set; }
    public Region Region { get; set; }
}