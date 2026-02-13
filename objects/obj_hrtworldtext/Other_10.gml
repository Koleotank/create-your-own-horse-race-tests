/// @description controlled step event
// You can write your code in this editor
//repeat (150)
var _width = sprite_get_width(sprite_index);
var _height = sprite_get_height(sprite_index);
// ((i % i_max) + i_max) % i_max;
if(x<0 || x>=sprite_get_width(sprite_index)) x=((x%_width)+_width)%_width
if(y<0 || y>=sprite_get_height(sprite_index)) y=((y%_height)+_height)%_height

x-=0.2
y+=0.1