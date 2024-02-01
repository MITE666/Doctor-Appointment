using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _userRepository;
        private readonly IMapper _mapper;

        public UserService(IUserRepository userRepository, IMapper mapper)
        {
            _userRepository = userRepository;
            _mapper = mapper;
        }

        public async Task<ApiResponse<UserResponseModel>> AddUser(UserRequestModel userRequestModel)
        {
            var user = _mapper.Map<User>(userRequestModel);
            user = await _userRepository.AddUser(user);
            if (user == null)
            {
                return ApiResponse<UserResponseModel>.Fail("Could not add user");
            }
            return ApiResponse<UserResponseModel>.Success(_mapper.Map<UserResponseModel>(user));
        }

        public async Task<ApiResponse<bool>> DeleteUser(Guid id)
        {
            var result = await _userRepository.DeleteUser(id);

            if (result)
                return ApiResponse<bool>.Success(true);

            return ApiResponse<bool>.Fail("User not found");
        }

        public async Task<ApiResponse<List<UserResponseModel>>> GetAllUsers()
        {
            var users = await _userRepository.GetAllUsers();
            if (users.Count == 0)
            {
                return ApiResponse<List<UserResponseModel>>.Fail("Could not find any users in db");
            }
            var mappedUser = _mapper.Map<List<UserResponseModel>>(users);
            return ApiResponse<List<UserResponseModel>>.Success(mappedUser);
        }

        public async Task<ApiResponse<UserResponseModel>> GetUserById(Guid id)
        {
            var user = await _userRepository.GetUserById(id);
            if (user == null)
            {
                return ApiResponse<UserResponseModel>.Fail("Could not find user in db");
            }
            return ApiResponse<UserResponseModel>.Success(_mapper.Map<UserResponseModel>(user));
        }

        public async Task<ApiResponse<UserResponseModel>> UpdateUser(User user)
        {
            var result = await _userRepository.UpdateUser(user);
            if (result == null)
            {
                return ApiResponse<UserResponseModel>.Fail("User not found");
            }
            return ApiResponse<UserResponseModel>.Success(_mapper.Map<UserResponseModel>(result));
        }
    }
}