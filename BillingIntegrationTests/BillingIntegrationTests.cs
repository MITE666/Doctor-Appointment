using System.Net;
using FluentAssertions;
using Microsoft.VisualStudio.TestPlatform.TestHost;
using Program = DoctorAppointment.Program;

namespace BillingIntegrationTests;

public class BillingIntegrationTests
{
    private readonly HttpClient _httpClient;

    public BillingIntegrationTests()
    {
        _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
    }

    [Fact]
    public async void WhenRequestingGetAllBillings_GivenEmptyDatabase_ShouldReturn_BadRequest()
    {
        //act
        var response = await _httpClient.GetAsync("api/v1/Billing");
        //assert
        response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
    }
}