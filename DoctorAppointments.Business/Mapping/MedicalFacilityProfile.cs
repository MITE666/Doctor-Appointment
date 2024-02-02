using AutoMapper;
using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class MedicalFacilityProfile : Profile
{
    public MedicalFacilityProfile()
    {
        this.CreateMap<MedicalFacility, MedicalFacilityResponseModel>().ReverseMap();
        this.CreateMap<MedicalFacility, CreateMedicalFacilityCommand>().ReverseMap();
        this.CreateMap<MedicalFacilityRequestModel, MedicalFacility>();
    }
}