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

namespace DoctorServiceTests
{
    public class DoctorServiceTests
    {
        private readonly IDoctorService _service;
        private readonly IDoctorRepository _repository;
        private readonly IMapper _mapper;

        public DoctorServiceTests()
        {
            _repository = Substitute.For<IDoctorRepository>();
            var mapperConfiguration = new MapperConfiguration(x =>
            {
                x.AddProfile(typeof(DoctorProfile));
            });
            _mapper = new Mapper(mapperConfiguration);

            _service = new DoctorService(_repository, _mapper);
        }

        [Fact]
        public async Task AddDoctor_Should_Return_Success()
        {
            //Arrange
            _repository.AddDoctor(Arg.Any<Doctor>())
                .Returns(new Doctor());

            //Act
            var result = await _service.AddDoctor(new DoctorRequestModel());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<DoctorResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetDoctorById_Should_Return_Success_When_Id_Exists()
        {
            //Arrange
            _repository.GetDoctorById(Arg.Any<Guid>())
                .Returns(new Doctor());

            //Act
            var result = await _service.GetDoctorById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<DoctorResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetDoctorById_Should_Return_Null_When_Id_Doesnt_Exist()
        {
            //Arrange
            _repository.GetDoctorById(Arg.Any<Guid>())
                .Returns(null as Doctor);

            //Act
            var result = await _service.GetDoctorById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task UpdateDoctor_Should_Return_Doctor_When_Doctor_Exists()
        {
            //Arrange
            _repository.UpdateDoctor(Arg.Any<Doctor>())
                .Returns(new Doctor());

            //Act
            var result = await _service.UpdateDoctor(new Doctor());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<DoctorResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task UpdateDoctor_Should_Return_Null_When_Doctor_Doesnt_Exist()
        {
            //Arrange
            _repository.UpdateDoctor(Arg.Any<Doctor>())!
                .Returns(null as Doctor);

            //Act
            var result = await _service.UpdateDoctor(new Doctor());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task DeleteDoctor_Should_Return_Success_When_Doctor_Exists()
        {
            //Arrange
            _repository.GetDoctorById(Arg.Any<Guid>())
                .Returns(new Doctor());
            _repository.DeleteDoctor(Arg.Any<Guid>())
                .Returns(true);
            //Act
            var result = await _service.DeleteDoctor(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task DeleteDoctor_Should_Return_Failure_When_Doctor_Doesnt_Exist()
        {
            //Arrange
            _repository.GetDoctorById(Arg.Any<Guid>())
                .Returns(null as Doctor);

            //Act
            var result = await _service.DeleteDoctor(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Count.Should().Be(1);
        }

        [Fact]
        public async Task GetAllDoctors_Should_Return_Success_When_Doctors_Exist()
        {
            //Arrange
            _repository.GetAllDoctors()
                .Returns(new List<Doctor>() { new Doctor() });

            //Act
            var result = await _service.GetAllDoctors();

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }
    }
}