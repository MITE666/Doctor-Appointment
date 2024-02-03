namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class Billing : Entity
{
    public string Description { get; set; }

    public int Price { get; set; }

    public Guid AppointmentId { get; set; }

    public Appointment Appointment { get; set; }
}