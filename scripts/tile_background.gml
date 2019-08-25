background_tileset = argument0;
num_tiles = argument1;
bg_width = background_get_width(background_tileset)
tile_width = bg_width/num_tiles
tile_height = background_get_height(background_tileset)

for (i=0; i < room_width; i+= tile_width)
{
    for (j=0; j < room_height; j+= tile_height)
    {
        base_rand = random_range(0,100)
        if (base_rand < 40) {
            floor_rand = 0
        } else {
            rand = random_range(0,bg_width)
            floor_rand = floor(rand/tile_width)*tile_width;
        }
        tile_add(background_tileset, floor_rand, 0, tile_width, tile_height, i, j, 1000001);
        tile_add(background_tileset, floor_rand, 0, tile_width, tile_height, i+room_width, j, 1000001);
        tile_add(background_tileset, floor_rand, 0, tile_width, tile_height, i-room_width, j, 1000001);
    }
}


