using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserService _userService;

        public UserController(IUserService userService)
        {
            _userService = userService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var response = await _userService.GetAllUsers();

            if (response.Succeeded == false)
            {
                return BadRequest("No users in the database");
            }
            return Ok(response);
        }

        [HttpDelete("{userId:guid}")]
        public async Task<IActionResult> Delete(Guid userId)
        {
            var result = await _userService.DeleteUser(userId);
            if (result.Succeeded == false)
            {
                return BadRequest("User not found");
            }
            return Ok();
        }

        [HttpGet("{userId:guid}")]
        public async Task<IActionResult> GetById(Guid userId)
        {
            var response = await _userService.GetUserById(userId);
            if (response.Succeeded == false)
            {
                return BadRequest("User not found");
            }
            return Ok(response);
        }

        [HttpPost]
        public async Task<IActionResult> AddUser([FromBody] UserRequestModel userRequestModel)
        {
            var response = await _userService.AddUser(userRequestModel);
            if (response.Succeeded == false)
            {
                return BadRequest();
            }
            return Created(nameof(GetById), response);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateUser([FromBody] User user)
        {
            var response = await _userService.UpdateUser(user);
            if (response.Succeeded == false)
            {
                return BadRequest();
            }

            return Ok(response);
        }
    }
}