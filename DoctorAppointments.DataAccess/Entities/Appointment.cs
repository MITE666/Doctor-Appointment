namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class Appointment : Entity
{
    public Guid DoctorId { get; set; }
    public Doctor Doctor { get; set; }
    public Guid PacientId { get; set; }
    public Pacient Pacient { get; set; }
    public Guid MedicalFacilityId { get; set; }
    public MedicalFacility MedicalFacility { get; set; }
    public DateTime Date { get; set; }
    public Status Status { get; set; }
}

public enum Status
{
    Pending=0,
    Paid=1
}
