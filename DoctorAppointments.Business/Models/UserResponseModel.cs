namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class UserResponseModel
{
    public Guid Id { get; set; }

    public string Password { get; set; }

    public string Email { get; set; }

    public string UserType { get; set; }
}