using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Mapping
{
    public class UserProfile : Profile
    {
        public UserProfile()
        {
            this.CreateMap<User, UserResponseModel>().ForMember(dest => dest.UserType, dest => dest.MapFrom(source => source.UserType.Type));
            this.CreateMap<UserRequestModel, User>();
        }
    }
}