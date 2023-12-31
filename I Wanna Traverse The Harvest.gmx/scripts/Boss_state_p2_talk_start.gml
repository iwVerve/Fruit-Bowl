///Boss_state_p2_talk_start()

talk_time = 0;
talk_duration = 150;
talk_fade_duration = 10;
talk_alpha = 0;
talk_instance = instance_create(x - 16, y + 136, objBossSpeechBubble);
talk_instance.image_alpha = 0;
talk_instance.image_index = 1;

state = Boss_state_p2_talk;
