using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DoctorAppointments.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class MedicationStockChanges : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "MedicalFacilityMedicationStock");

            migrationBuilder.AddColumn<Guid>(
                name: "MedicalFacilityId",
                table: "MedicationStocks",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_MedicationStocks_MedicalFacilityId",
                table: "MedicationStocks",
                column: "MedicalFacilityId");

            migrationBuilder.AddForeignKey(
                name: "FK_MedicationStocks_MedicalFacilities_MedicalFacilityId",
                table: "MedicationStocks",
                column: "MedicalFacilityId",
                principalTable: "MedicalFacilities",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MedicationStocks_MedicalFacilities_MedicalFacilityId",
                table: "MedicationStocks");

            migrationBuilder.DropIndex(
                name: "IX_MedicationStocks_MedicalFacilityId",
                table: "MedicationStocks");

            migrationBuilder.DropColumn(
                name: "MedicalFacilityId",
                table: "MedicationStocks");

            migrationBuilder.CreateTable(
                name: "MedicalFacilityMedicationStock",
                columns: table => new
                {
                    MedicalFacilitiesId = table.Column<Guid>(type: "uuid", nullable: false),
                    MedicationsId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MedicalFacilityMedicationStock", x => new { x.MedicalFacilitiesId, x.MedicationsId });
                    table.ForeignKey(
                        name: "FK_MedicalFacilityMedicationStock_MedicalFacilities_MedicalFac~",
                        column: x => x.MedicalFacilitiesId,
                        principalTable: "MedicalFacilities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_MedicalFacilityMedicationStock_MedicationStocks_Medications~",
                        column: x => x.MedicationsId,
                        principalTable: "MedicationStocks",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MedicalFacilityMedicationStock_MedicationsId",
                table: "MedicalFacilityMedicationStock",
                column: "MedicationsId");
        }
    }
}