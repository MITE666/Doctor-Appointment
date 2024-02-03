using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class AppointmentProfile : Profile
{
    public AppointmentProfile()
    {
        this.CreateMap<Appointment, AppointmentResponseModel>();
        this.CreateMap<AppointmentRequestModel, Appointment>();
    }
}