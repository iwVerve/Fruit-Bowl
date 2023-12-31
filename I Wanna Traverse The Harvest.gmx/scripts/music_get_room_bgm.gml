///music_get_room_bgm()
// Gets which song is supposed to be playing for the current room

switch (room) {
    case rTitle:            //Add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
        return "SisterPurity";
        
    case rIntro:
        return "MelodyOfSmallLove";
    
    case rTutorial:
    case rBanana:
    case rCherry:
    case rGrape:
        return "LoopScratch";
    
    case rApple:
    case rKiwi:
    case rCoconut:
        return "Love";
    
    case rBlackberry:
    case rStrawberry:
    case rWatermelon:
        return "Cutie";
        
    case rOutside:
    case rOutsideAbove:
    case rTowerOutside:
    case rOutsideRight:
        return "ForTheSakeOfOneFlower";
    
    case rTower:
        return "Adagio";
        
    case rClimb1:
    case rClimb2:
    case rClimb3:
        return "SoCloseYetSoFarAway";
        
    case rSecret1:
        return "AnywayLetsBeginTheDiagnosis";
    
    case rFops:
        return "TheRatingsAreIn";
    
    case rJigsaw:
        return "InThePocket";
        
    case rSecret3:
        return "RooftopRun";
    
    case rO1:
    case rO2:
    case rO3:
    case rO4:
    case rO5:
    case rO6:
        return "IHennesMajestatsHemligaHatt";
    
    case rNegative1:
    case rNegative2:
    case rNegative3:
        return "Fields";
    
    case rGlitch1:
    case rGlitch2:
    case rGlitch3:
    case rGlitch4:
    case rGlitch5:
        return "TheCorpseWhisperer";
    
    case rBoss1:
    case rBoss2:
    case rBoss3:
        var song;
        switch(room) {
            case rBoss1:
                song = "B-in"; break;
            case rBoss2:
                song = "1stF"; break;
            case rBoss3:
                song = "GD"; break;
        }
        if global.currentMusicID == music_load(song) {
            return song;
        }
        return -1;
    
    case rClear:
        return "PapapaSweetSwing";
    
    case rTrueClear:
        return "Europe";

    default:
        return -1;          //Play nothing
}
