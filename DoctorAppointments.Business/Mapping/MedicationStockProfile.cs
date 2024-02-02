using AutoMapper;
using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class MedicationStockProfile : Profile
{
    public MedicationStockProfile()
    {
        this.CreateMap<MedicationStock, MedicationStockResponseModel>();
        this.CreateMap<MedicationStock, CreateMedicationStockCommand>().ReverseMap();
        this.CreateMap<MedicationStockRequestModel, MedicationStock>();
    }
}