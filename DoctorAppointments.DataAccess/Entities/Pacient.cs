namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class Pacient : Entity
{
    public string CNP { get; set; }
    public Guid UserId { get; set; }
    public User User { get; set; }
    public string? Phone { get; set; }
    public DateTime BirthDate { get; set; }
    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public string? Allergies { get; set; }
    public string? MedicalHistory { get; set; }
    public string? ProfilePicture { get; set; }
    public Guid? CityId { get; set; }
    public City City { get; set; }
    public string? Gender { get; set; }
    public string? Height { get; set; }
    public string? Weight { get; set; }
    public IEnumerable<Appointment> Appointments { get; set; }
}