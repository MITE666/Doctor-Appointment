using DoctorAppointment;
using DoctorIntegrationTests;
using FluentAssertions;
using System.Net;

namespace PacientIntegrationTests;

public class PacientIntegrationTests
{
    private readonly HttpClient _httpClient;

    public PacientIntegrationTests()
    {
        _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
    }

    [Fact]
    public async void WhenRequestingGetAllPacients_GivenEmptyDatabse_ShouldReturn_BadRequest()
    {
        //act
        var response = await _httpClient.GetAsync("api/v1.0/Pacient");
        //assert
        response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
    }
}