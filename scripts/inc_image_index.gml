// Takes in a current image index, image speed, and max image index to determine 
// the next image index for the sprite
//wallslide_fx_image_index = inc_image_index(wallslide_fx_image_index, wallslide_fx_image_speed, sprite_get_number(spr_wallslide_sparks));
cur_img_index = argument0;
img_spd = argument1;
max_img_index = argument2;
result = 0;

if (cur_img_index + img_spd <= max_img_index) {
    result = cur_img_index + img_spd;
} else {
    result = img_spd - (max_img_index - cur_img_index);
}
return result
