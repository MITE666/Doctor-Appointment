namespace DoctorAppointment.Application.Models;

public class BillingRequestModel
{
    public string? Description { get; set; }
    
    public int Price { get; set; }
    
    public Guid AppointmentId  { get; set; }
}