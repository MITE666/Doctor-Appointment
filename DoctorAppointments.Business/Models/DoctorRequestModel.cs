namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class DoctorRequestModel
{
    public string CNP { get; set; }
    public string? ProfilePicture { get; set; }
    public string? FirstName { get; set; }
    public string? LastName { get; set; }
    public Guid UserId { get; set; }
    public Guid MedicalFacilityId { get; set; }
    public Guid SpecialtyId { get; set; }
}