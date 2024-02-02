using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace DoctorAppointments.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class AddConfigForUserDoctorAndPacient : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MedicalFacilities_Appointments_AppointmentId",
                table: "MedicalFacilities");

            migrationBuilder.DropTable(
                name: "AppointmentPacient");

            migrationBuilder.DropIndex(
                name: "IX_MedicalFacilities_AppointmentId",
                table: "MedicalFacilities");

            migrationBuilder.DropColumn(
                name: "AppointmentId",
                table: "MedicalFacilities");

            migrationBuilder.AddColumn<string>(
                name: "CNP",
                table: "Pacients",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "CNP",
                table: "Doctors",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<Guid>(
                name: "MedicalFacilityId",
                table: "Appointments",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "PacientId",
                table: "Appointments",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.InsertData(
                table: "Cities",
                columns: new[] { "Id", "Name" },
                values: new object[,]
                {
                    { new Guid("1e3e68c8-5d30-4210-93fd-6eca28a5b012"), "Bucuresti" },
                    { new Guid("37b677a1-229e-4df4-8c2a-694113d004ef"), "Galati" },
                    { new Guid("9170514b-575f-4cdd-8fbe-d628919df13e"), "Constanta" },
                    { new Guid("a91474ca-eeeb-4f96-9a43-54dab1dc961f"), "Vaslui" },
                    { new Guid("aa0016c4-1540-4138-a2fe-eee4f3b2516c"), "Iasi" }
                });

            migrationBuilder.InsertData(
                table: "Specialties",
                columns: new[] { "Id", "Name" },
                values: new object[,]
                {
                    { new Guid("20d8ed61-3b25-4b89-8724-bfff53dd8c43"), "Emergency medicine" },
                    { new Guid("410ba8be-0848-4fc2-9e15-19d883c0f19f"), "Pediatrics" },
                    { new Guid("b8cfaf4a-2be7-46b6-a30d-9156947623e9"), "Surgery" },
                    { new Guid("ba9c9af3-a17a-4863-99d1-75892e6987ca"), "Dermatology" },
                    { new Guid("d2147f37-b602-4a33-b29b-a5afbf844d4f"), "Family medicine" },
                    { new Guid("f2bfd52b-cbdd-4f90-afc8-d6f2bf903ab6"), "Ophthalmology" }
                });

            migrationBuilder.CreateIndex(
                name: "IX_Users_Email",
                table: "Users",
                column: "Email",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Pacients_CNP",
                table: "Pacients",
                column: "CNP",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Doctors_CNP",
                table: "Doctors",
                column: "CNP",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Billings_AppointmentId",
                table: "Billings",
                column: "AppointmentId");

            migrationBuilder.CreateIndex(
                name: "IX_Appointments_MedicalFacilityId",
                table: "Appointments",
                column: "MedicalFacilityId");

            migrationBuilder.CreateIndex(
                name: "IX_Appointments_PacientId",
                table: "Appointments",
                column: "PacientId");

            migrationBuilder.AddForeignKey(
                name: "FK_Appointments_MedicalFacilities_MedicalFacilityId",
                table: "Appointments",
                column: "MedicalFacilityId",
                principalTable: "MedicalFacilities",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Appointments_Pacients_PacientId",
                table: "Appointments",
                column: "PacientId",
                principalTable: "Pacients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Billings_Appointments_AppointmentId",
                table: "Billings",
                column: "AppointmentId",
                principalTable: "Appointments",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Appointments_MedicalFacilities_MedicalFacilityId",
                table: "Appointments");

            migrationBuilder.DropForeignKey(
                name: "FK_Appointments_Pacients_PacientId",
                table: "Appointments");

            migrationBuilder.DropForeignKey(
                name: "FK_Billings_Appointments_AppointmentId",
                table: "Billings");

            migrationBuilder.DropIndex(
                name: "IX_Users_Email",
                table: "Users");

            migrationBuilder.DropIndex(
                name: "IX_Pacients_CNP",
                table: "Pacients");

            migrationBuilder.DropIndex(
                name: "IX_Doctors_CNP",
                table: "Doctors");

            migrationBuilder.DropIndex(
                name: "IX_Billings_AppointmentId",
                table: "Billings");

            migrationBuilder.DropIndex(
                name: "IX_Appointments_MedicalFacilityId",
                table: "Appointments");

            migrationBuilder.DropIndex(
                name: "IX_Appointments_PacientId",
                table: "Appointments");

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("1e3e68c8-5d30-4210-93fd-6eca28a5b012"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("37b677a1-229e-4df4-8c2a-694113d004ef"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("9170514b-575f-4cdd-8fbe-d628919df13e"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("a91474ca-eeeb-4f96-9a43-54dab1dc961f"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("aa0016c4-1540-4138-a2fe-eee4f3b2516c"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("20d8ed61-3b25-4b89-8724-bfff53dd8c43"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("410ba8be-0848-4fc2-9e15-19d883c0f19f"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("b8cfaf4a-2be7-46b6-a30d-9156947623e9"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("ba9c9af3-a17a-4863-99d1-75892e6987ca"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("d2147f37-b602-4a33-b29b-a5afbf844d4f"));

            migrationBuilder.DeleteData(
                table: "Specialties",
                keyColumn: "Id",
                keyValue: new Guid("f2bfd52b-cbdd-4f90-afc8-d6f2bf903ab6"));

            migrationBuilder.DropColumn(
                name: "CNP",
                table: "Pacients");

            migrationBuilder.DropColumn(
                name: "CNP",
                table: "Doctors");

            migrationBuilder.DropColumn(
                name: "MedicalFacilityId",
                table: "Appointments");

            migrationBuilder.DropColumn(
                name: "PacientId",
                table: "Appointments");

            migrationBuilder.AddColumn<Guid>(
                name: "AppointmentId",
                table: "MedicalFacilities",
                type: "uuid",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "AppointmentPacient",
                columns: table => new
                {
                    AppointmentId = table.Column<Guid>(type: "uuid", nullable: false),
                    PacientIdId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AppointmentPacient", x => new { x.AppointmentId, x.PacientIdId });
                    table.ForeignKey(
                        name: "FK_AppointmentPacient_Appointments_AppointmentId",
                        column: x => x.AppointmentId,
                        principalTable: "Appointments",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AppointmentPacient_Pacients_PacientIdId",
                        column: x => x.PacientIdId,
                        principalTable: "Pacients",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MedicalFacilities_AppointmentId",
                table: "MedicalFacilities",
                column: "AppointmentId");

            migrationBuilder.CreateIndex(
                name: "IX_AppointmentPacient_PacientIdId",
                table: "AppointmentPacient",
                column: "PacientIdId");

            migrationBuilder.AddForeignKey(
                name: "FK_MedicalFacilities_Appointments_AppointmentId",
                table: "MedicalFacilities",
                column: "AppointmentId",
                principalTable: "Appointments",
                principalColumn: "Id");
        }
    }
}