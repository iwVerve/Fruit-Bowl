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
        
    case rClimb1:
    case rClimb2:
    case rClimb3:
        return "SoCloseYetSoFarAway";
        
    case rSecret1:
        return "AnywayLetsBeginTheDiagnosis";
        
    case rSecret3:
        return "RooftopRun";
    
    case rTower:
        return "Adagio";
    
    case rClear:
        return "PapapaSweetSwing";
    
    case rJigsaw:
        return "InThePocket";
    
    case rGlitch1:
    case rGlitch2:
    case rGlitch3:
    case rGlitch4:
    case rGlitch5:
        return "TheCorpseWhisperer";

    default:
        return -1;          //Play nothing
}
