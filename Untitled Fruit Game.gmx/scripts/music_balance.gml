///music_balance()

var songs = array_from_values(
    "Cutie", 0.7,
    "LoopScratch", 0.7,
    "Love", 0.7,
    "MelodyOfSmallLove", 0.7,
    "PapapaSweetSwing", 0.7,
    "SisterPurity", 0.7,
    "Adagio", 0.7,
    "ForTheSakeOfOneFlower", 0.65,
    "SoCloseYetSoFarAway", 0.65,
    "RooftopRun", 0.6,
    "InThePocket", 0.7,
    "TheCorpseWhisperer", 0.7,
    "AnywayLetsBeginTheDiagnosis", 0.6,
    "IHennesMajestatsHemligaHatt", 0.6,
    "B-in", 0.7,
    "1stF", 0.7,
    "GD", 0.7,
    "TheRatingsAreIn", 0.65,
    "Fields", 0.7,
    "Europe", 0.7,
);
for(var i = 0; i < array_length_1d(songs); i += 2) {
    audio_sound_gain(music_load(songs[i]), songs[i + 1], 0);
}

audio_sound_gain(sndMenuTransition, 0.6, 0);
audio_sound_gain(sndMenuSelect, 0.8, 0);
audio_sound_gain(sndThunder, 0.6, 0);
audio_sound_gain(sndScrape, 0.8, 0);
audio_sound_gain(sndItem, 0.6, 0);
