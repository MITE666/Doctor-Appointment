namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class Doctor : Entity
{
    public string CNP { get; set; }
    public string ProfilePicture { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public Guid UserId { get; set; }

    public User User { get; set; }

    public Guid MedicalFacilityId { get; set; }

    public MedicalFacility MedicalFacility { get; set; }

    public Guid SpecialtyId { get; set; }

    public Specialty Specialty { get; set; }

    public IEnumerable<Appointment> Appointments { get; set; }
}