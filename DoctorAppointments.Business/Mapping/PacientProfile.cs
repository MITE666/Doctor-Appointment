using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class PacientProfile : Profile
{
    public PacientProfile()
    {
        this.CreateMap<Pacient, PacientResponseModel>();
        this.CreateMap<PacientRequestModel, Pacient>();
    }
}