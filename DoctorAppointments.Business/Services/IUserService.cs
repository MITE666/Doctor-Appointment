using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services
{
    public interface IUserService
    {
        Task<ApiResponse<UserResponseModel>> GetUserById(Guid id);

        Task<ApiResponse<List<UserResponseModel>>> GetAllUsers();

        Task<ApiResponse<bool>> DeleteUser(Guid id);

        Task<ApiResponse<UserResponseModel>> UpdateUser(User user);

        Task<ApiResponse<UserResponseModel>> AddUser(UserRequestModel userRequestModel);
    }
}