using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping;

public class BillingProfile : Profile
{
    public BillingProfile()
    {
        this.CreateMap<Billing, BillingResponseModel>();
        this.CreateMap<BillingRequestModel, Billing>();
    }
}