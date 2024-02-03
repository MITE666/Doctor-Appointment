using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models;

public class BillingResponseModel
{
    public string? Description { get; set; }

    public int Price { get; set; }

    public Guid AppointmentId  { get; set; }

    public Appointment? Appointment { get; set; }
}