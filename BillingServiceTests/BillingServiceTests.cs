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

namespace BillingServiceTests;

public class BillingServiceTests
{
    private readonly IBillingService _service;
    private readonly IBillingRepository _repository;
    private readonly IMapper _mapper;

    public BillingServiceTests()
    {
        _repository = Substitute.For<IBillingRepository>();
        var mapperConfiguration = new MapperConfiguration(x =>
        {
            x.AddProfile(typeof(BillingProfile));
        });
        _mapper = new Mapper(mapperConfiguration);

        _service = new BillingService(_repository, _mapper);
    }

    [Fact]
    public async Task AddBilling_Should_Return_Success()
    {
        //Arrange
        _repository.AddBilling(Arg.Any<Billing>())
            .Returns(new Billing());

        //Act
        var result = await _service.AddBilling(new BillingRequestModel());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<BillingResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetBillingById_Should_Return_Success_When_Id_Exists()
    {
        //Arrange
        _repository.GetBillingById(Arg.Any<Guid>())
            .Returns(new Billing());

        //Act
        var result = await _service.GetBillingById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<BillingResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetBillingById_Should_Return_Null_When_Id_Doesnt_Exist()
    {
        //Arrange
        _repository.GetBillingById(Arg.Any<Guid>())
            .Returns(null as Billing);

        //Act
        var result = await _service.GetBillingById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);

    }

    [Fact]
    public async Task UpdateBilling_Should_Return_Billing_When_Billing_Exists()
    {
        //Arrange
        _repository.UpdateBilling(Arg.Any<Billing>())
            .Returns(new Billing());

        //Act
        var result = await _service.UpdateBilling(new Billing());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<BillingResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task UpdateBilling_Should_Return_Null_When_Billing_Doesnt_Exist()
    {
        //Arrange
        _repository.UpdateBilling(Arg.Any<Billing>())!
            .Returns(null as Billing);

        //Act
        var result = await _service.UpdateBilling(new Billing());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }

    [Fact]
    public async Task DeleteBilling_Should_Return_Success_When_Billing_Exists()
    {
        //Arrange
        _repository.GetBillingById(Arg.Any<Guid>())
            .Returns(new Billing());
        _repository.DeleteBilling(Arg.Any<Guid>())
            .Returns(true);
        //Act
        var result = await _service.DeleteBilling(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task DeleteBilling_Should_Return_Failure_When_Billing_Doesnt_Exist()
    {
        //Arrange
        _repository.GetBillingById(Arg.Any<Guid>())
            .Returns(null as Billing);


        //Act
        var result = await _service.DeleteBilling(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Count.Should().Be(1);
    }

    [Fact]
    public async Task GetAllBillings_Should_Return_Success_When_Billings_Exist()
    {
        //Arrange
        _repository.GetAllBillings()
            .Returns(new List<Billing>(){new Billing()});


        //Act
        var result = await _service.GetAllBillings();

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }
    
    [Fact]
    public async Task GetAllBilling_Should_Return_Failure_When_Billing_Dont_Exist()
    {
        //Arrange
        _repository.GetAllBillings()
            .Returns(new List<Billing>());


        //Act
        var result = await _service.GetAllBillings();

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }
}