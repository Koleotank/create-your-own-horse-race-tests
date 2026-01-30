/// @description controlled step event
//x = clamp(x+hsp,0,room_width)
//y = clamp(y+vsp,0,room_height)
x += hsp
y += vsp

hsp = median(hsp-hspacc,targethsp,hsp+hspacc)
vsp = median(vsp-vspacc,targetvsp,vsp+vspacc)

if x > targetgoal.x
{
	targethsp = maxhsp*-1
}
if x < targetgoal.x
{
	targethsp = maxhsp
}
if y > targetgoal.y
{
	targetvsp = maxvsp*-1
}
if y < targetgoal.y
{
	targetvsp = maxvsp
}

