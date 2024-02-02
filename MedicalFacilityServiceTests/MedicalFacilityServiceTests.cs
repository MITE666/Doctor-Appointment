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

namespace MedicalFacilityServiceTests;

public class MedicalFacilityServiceTests
{
    private readonly IMedicalFacilityService _service;
    private readonly IMedicalFacilityRepository _repository;
    private readonly IMapper _mapper;

    public MedicalFacilityServiceTests()
    {
        _repository = Substitute.For<IMedicalFacilityRepository>();
        var mapperConfiguration = new MapperConfiguration(x => { x.AddProfile(typeof(MedicalFacilityProfile)); });
        _mapper = new Mapper(mapperConfiguration);

        _service = new MedicalFacilityService(_repository, _mapper);
    }

    [Fact]
    public async Task AddMedicalFacility_Should_Return_Success()
    {
        //Arrange
        _repository.AddFacility(Arg.Any<MedicalFacility>())
            .Returns(new MedicalFacility());

        //Act
        var result = await _service
            .AddFacility(new MedicalFacilityRequestModel());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicalFacilityResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetMedicalFacilityById_Should_Return_Success_When_Id_Exists()
    {
        //Arrange
        _repository.GetFacilityById(Arg.Any<Guid>())
            .Returns(new MedicalFacility());

        //Act
        var result = await _service.GetFacilityById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicalFacilityResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetMedicalFacilityById_Should_Return_Null_When_Id_Doesnt_Exist()
    {
        //Arrange
        _repository.GetFacilityById(Arg.Any<Guid>())
            .Returns(null as MedicalFacility);

        //Act
        var result = await _service.GetFacilityById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }

    [Fact]
    public async Task UpdateMedicalFacility_Should_Return_MedicalFacility_When_MedicalFacility_Exists()
    {
        //Arrange
        _repository.UpdateFacility(Arg.Any<MedicalFacility>())
            .Returns(new MedicalFacility());

        //Act
        var result = await _service.UpdateFacility(new MedicalFacility());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicalFacilityResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task UpdateMedicalFacility_Should_Return_Null_When_MedicalFacility_Doesnt_Exist()
    {
        //Arrange
        _repository.UpdateFacility(Arg.Any<MedicalFacility>())!
            .Returns(null as MedicalFacility);

        //Act
        var result = await _service.UpdateFacility(new MedicalFacility());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }

    [Fact]
    public async Task DeleteMedicalFacility_Should_Return_Success_When_MedicalFacility_Exists()
    {
        //Arrange
        _repository.DeleteFacility(Arg.Any<Guid>())
            .Returns(true);
        //Act
        var result = await _service.DeleteFacility(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task DeleteMedicalFacility_Should_Return_Failure_When_MedicalFacility_Doesnt_Exist()
    {
        //Arrange

        //Act
        var result = await _service.DeleteFacility(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Count.Should().Be(1);
    }

    [Fact]
    public async Task GetAllMedicalFacility_Should_Return_Success_When_MedicalFacility_Exist()
    {
        //Arrange
        _repository.GetAllFacilities()
            .Returns(new List<MedicalFacility>() { new MedicalFacility() });

        //Act
        var result = await _service.GetAllFacilities();

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetAllMedicalFacility_Should_Return_Failure_When_MedicalFacility_Dont_Exist()
    {
        //Arrange
        _repository.GetAllFacilities()
            .Returns(new List<MedicalFacility>());

        //Act
        var result = await _service.GetAllFacilities();

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }
}