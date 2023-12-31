///Boss_state_p3_talk_start()

talk_time = 0;
talk_duration = 150;
talk_fade_duration = 10;
talk_alpha = 0;
talk_offset_x = 64;
talk_offset_y = -96;
if instance_exists(objPlayer) {
    talk_instance = instance_create(objPlayer.x + talk_offset_x, objPlayer.y + talk_offset_y, objBossSpeechBubble);
    talk_instance.image_alpha = 0;
    talk_instance.image_index = 2;
}

state = Boss_state_p3_talk;
