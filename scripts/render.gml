// Renders out objects that aren't in the view
// Note: the activate region function for game maker takes in the top left of the object view
// To compensate for this, set the x position as a buffer before the view, and let the
// width be twice the view width

instance_deactivate_object(oEnemy);
instance_deactivate_object(oSolid);
y_pos = view_yview[0]-view_hview[0]/2
divisor = round(y_pos/256);

floor_y_pos = 256 * divisor;
height = view_hview[0]*2;
x_pos = view_xview[0]-view_wview[0]/2
width = view_wview[0]*3;
//show_debug_message(view_wview[0])
//show_debug_message(width)
/*
var solid_count = instance_number(oSolid);
for (var i = 0; i < solid_count; i++)
{
 var inst = instance_find(oSolid, i);
 in1 = point_in_rectangle(inst.x, inst.y, view_xview[0]-room_width, view_yview[0], view_xview[0]-room_width+view_wview, view_yview+view_hview)
 in2 = point_in_rectangle(inst.x, inst.y, view_xview[0], view_yview[0], view_xview[0]+view_wview, view_yview+view_hview)
 in3 = point_in_rectangle(inst.x, inst.y, view_xview[0]+room_width, view_yview[0], view_xview[0]+room_width+view_wview, view_yview+view_hview)
 
 if (in1 or in2 or in3) {instance_activate_object(inst)};
}

var enemy_count = instance_number(oEnemy);
for (var i = 0; i < enemy_count; i++)
{
 var inst = instance_find(oSolid, i);
 in1 = point_in_rectangle(inst.x, inst.y, view_xview[0]-room_width, view_yview[0], view_xview[0]-room_width+view_wview, view_yview+view_hview)
 in2 = point_in_rectangle(inst.x, inst.y, view_xview[0]-room_width, view_yview[0], view_xview[0]-room_width+view_wview, view_yview+view_hview)
 in3 = point_in_rectangle(inst.x, inst.y, view_xview[0]-room_width, view_yview[0], view_xview[0]-room_width+view_wview, view_yview+view_hview)
 
 if (in1 or in2 or in3) {instance_activate_object(inst)};
}
*/
instance_activate_region(x_pos-room_width, y_pos, width, height, true);
instance_activate_region(x_pos, y_pos, width, height, true);
instance_activate_region(x_pos+room_width, y_pos, width, height, true);

