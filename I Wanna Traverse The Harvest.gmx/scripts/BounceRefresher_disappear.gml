///BounceRefresher_disappear()

instance_destroy(spikes);
var inst = instance_create(x, y, objBounceRefresherDisappear);
inst.sprite_index = sprite_index;
inst.image_index = image_index;
inst.image_xscale = image_xscale;
inst.image_yscale = image_yscale;
inst.image_angle = image_angle;
inst.depth = depth;
instance_destroy();

return inst;
