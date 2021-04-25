/*var right = false;
if (val<101) && (!right) 
{
	val += valSp;
	if (val > 100) right = true; 
}
if (val>-1) && (right) 
{
	val -= valSp; 
	//if (val < 0) right = false;
}
light[| eLight.X] = x + val;
//light[| eLight.Y] = y + val;
*/
light[| eLight.Type] = eLightType.Point;
light[| eLight.Range] = 100;
light[| eLight.Intensity] = 1.5;