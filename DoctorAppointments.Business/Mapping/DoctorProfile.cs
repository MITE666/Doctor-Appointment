using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class DoctorProfile : Profile
{
    public DoctorProfile()
    {
        this.CreateMap<Doctor, DoctorResponseModel>();
        this.CreateMap<DoctorRequestModel, Doctor>();
    }
}