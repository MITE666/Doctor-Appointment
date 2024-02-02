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

namespace PacientServiceTests
{
    public class PacientServiceTests
    {
        private readonly IPacientService _service;
        private readonly IPacientRepository _repository;
        private readonly IMapper _mapper;

        public PacientServiceTests()
        {
            _repository = Substitute.For<IPacientRepository>();
            var mapperConfiguration = new MapperConfiguration(x =>
            {
                x.AddProfile(typeof(PacientProfile));
            });
            _mapper = new Mapper(mapperConfiguration);

            _service = new PacientService(_repository, _mapper);
        }

        [Fact]
        public async Task AddPacient_Should_Return_Success()
        {
            //Arrange
            _repository.AddPacient(Arg.Any<Pacient>())
                .Returns(new Pacient());

            //Act
            var result = await _service.AddPacient(new PacientRequestModel());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<PacientResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetPacientById_Should_Return_Success_When_Id_Exists()
        {
            //Arrange
            _repository.GetPacientById(Arg.Any<Guid>())
                .Returns(new Pacient());

            //Act
            var result = await _service.GetPacientById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<PacientResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task GetPacientById_Should_Return_Null_When_Id_Doesnt_Exist()
        {
            //Arrange
            _repository.GetPacientById(Arg.Any<Guid>())
                .Returns(null as Pacient);

            //Act
            var result = await _service.GetPacientById(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task UpdatePacient_Should_Return_Pacient_When_Pacient_Exists()
        {
            //Arrange
            _repository.UpdatePacient(Arg.Any<Pacient>())
                .Returns(new Pacient());

            //Act
            var result = await _service.UpdatePacient(new Pacient());

            //Assert
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<PacientResponseModel>>();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task UpdatePacient_Should_Return_Null_When_Pacient_Doesnt_Exist()
        {
            //Arrange
            _repository.UpdatePacient(Arg.Any<Pacient>())!
                .Returns(null as Pacient);

            //Act
            var result = await _service.UpdatePacient(new Pacient());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Should().HaveCount(1);
        }

        [Fact]
        public async Task DeletePacient_Should_Return_Success_When_Pacient_Exists()
        {
            //Arrange
            _repository.GetPacientById(Arg.Any<Guid>())
                .Returns(new Pacient());
            _repository.DeletePacient(Arg.Any<Guid>())
                .Returns(true);
            //Act
            var result = await _service.DeletePacient(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async Task DeletePacient_Should_Return_Failure_When_Pacient_Doesnt_Exist()
        {
            //Arrange
            _repository.GetPacientById(Arg.Any<Guid>())
                .Returns(null as Pacient);

            //Act
            var result = await _service.DeletePacient(new Guid());

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeFalse();
            result.Errors.Count.Should().Be(1);
        }

        [Fact]
        public async Task GetAllPacients_Should_Return_Success_When_Pacients_Exist()
        {
            //Arrange
            _repository.GetAllPacients()
                .Returns(new List<Pacient>() { new Pacient() });

            //Act
            var result = await _service.GetAllPacients();

            //Assert
            result.Should().NotBeNull();
            result.Succeeded.Should().BeTrue();
        }
    }
}