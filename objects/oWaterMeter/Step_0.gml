if (waterGaugeCurrent < waterGaugeMax)
{
	waterGaugeCurrent += global.waterSpeed;
	global.waterGaugePercent = waterGaugeCurrent / waterGaugeMax
}