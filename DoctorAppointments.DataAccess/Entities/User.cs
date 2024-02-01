namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class User : Entity
{
    public string Email { get; set; }

    public string Password { get; set; }

    public Guid UserTypeId { get; set; }

    public UserType UserType { get; set; }
}