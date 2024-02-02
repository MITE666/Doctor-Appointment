using AutoMapper;
using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointment.Application.Services.Implementation;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;
using FluentAssertions;
using NSubstitute;

namespace UserTests
{
    public class UserServiceTests
    {
        private readonly IUserService _service;
        private readonly IUserRepository _repository;
        private readonly IMapper _mapper;

        public UserServiceTests()
        {
            _repository = Substitute.For<IUserRepository>();
            var mapperConfiguration = new MapperConfiguration(x =>
            {
                x.AddProfile(typeof(UserProfile));
            });
            _mapper = new Mapper(mapperConfiguration);

            _service = new UserService(_repository, _mapper);
        }

        [Fact]
        public async Task GetUserByIdAsync_Should_Return_User()
        {
            //Arrange
            _repository.GetUserById(Guid.Parse("1eda85db-9e9f-44b1-880f-8f52fa742c6b"))
                .Returns(new User()
                {
                    Id = Guid.Parse("1eda85db-9e9f-44b1-880f-8f52fa742c6b"),
                    Email = "email@email.com",
                    Password = "password",
                    UserTypeId = Guid.Parse("d6d84185-d186-422f-8d94-17040b6982d3"),
                    UserType = new UserType()
                    {
                        Id = Guid.Parse("d6d84185-d186-422f-8d94-17040b6982d3"),
                        Type = "Doctor"
                    }
                });

            //Act
            var result = await _service.GetUserById(Guid.Parse("1eda85db-9e9f-44b1-880f-8f52fa742c6b"));
            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<UserResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task UpdateUser_Should_Return_Null_If_User_Not_Found()
        {
            //Arrange
            _repository.UpdateUser(Arg.Any<User>())
                .Returns(null as User);

            //Act
            var result = await _service.UpdateUser(new User());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task DeleteUser_Should_Return_Null_If_User_Not_Found()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(null as User);

            //Act
            var result = await _service.DeleteUser(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task DeleteUser_Should_Return_Success_If_User_Exists()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(new User());
            _repository.DeleteUser(Arg.Any<Guid>())
                .Returns(true);

            //Act
            var result = await _service.DeleteUser(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task DeleteUser_Should_Return_Failure_If_User_Doesnt_Exist()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(null as User);

            //Act
            var result = await _service.DeleteUser(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task GetAllUsers_Should_Return_Success_If_Users_Exist()
        {
            //Arrange
            _repository.GetAllUsers()
                .Returns(new List<User>() { new User() });

            //Act
            var result = await _service.GetAllUsers();

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetAllUsers_Should_Return_Failure_If_Users_Dont_Exist()
        {
            //Arrange
            _repository.GetAllUsers()
                .Returns(new List<User>());

            //Act
            var result = await _service.GetAllUsers();

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Count.Should().Be(1);
        }

        [Fact]
        public async Task GetUserById_Should_Return_Success_If_Users_Exist()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(new User());

            //Act
            var result = await _service.GetUserById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetUserById_Should_Return_Failure_If_User_Doesnt_Exist()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(null as User);

            //Act
            var result = await _service.GetUserById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task UpdateUser_Should_Return_Success_If_Users_Exist()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(new User());
            _repository.UpdateUser(Arg.Any<User>())
                .Returns(new User());

            //Act
            var result = await _service.UpdateUser(new User());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task UpdateUser_Should_Return_Failure_If_User_Doesnt_Exist()
        {
            //Arrange
            _repository.GetUserById(Arg.Any<Guid>())
                .Returns(null as User);

            //Act
            var result = await _service.UpdateUser(new User());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Count.Should().Be(1);
        }

        [Fact]
        public async Task AddUser_Should_Return_Failure_If_UserType_Doesnt_Exit()
        {
            //Arrange
            _repository.AddUser(Arg.Any<User>())
                .Returns(null as User);

            //Act
            var result = await _service.AddUser(new UserRequestModel());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Count.Should().Be(1);
        }

        [Fact]
        public async Task AddUser_Should_Return_Succes_If_Data_Is_Correct()
        {
            //Arrange
            _repository.AddUser(Arg.Any<User>())
                .Returns(new User());

            //Act
            var result = await _service.AddUser(new UserRequestModel());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }
    }
}