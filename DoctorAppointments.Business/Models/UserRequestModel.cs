namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class UserRequestModel
{
    public string Email { get; set; }

    public string Password { get; set; }

    public Guid UserTypeId { get; set; }
}