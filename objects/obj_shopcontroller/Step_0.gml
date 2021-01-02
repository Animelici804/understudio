if (menu == 0) {
    if (!instance_exists(obj_typer)) {
        create_text(0, 110, "DEFAULT", c_white, introString, false);
    }
    
    if (input.up_p) {
        if (menuSel[0] > 0) {
            menuSel[0]--;
        }
        else {
            menuSel[0] = 3;
        }
    }
    if (input.down_p) {
        if (menuSel[0] < 3) {
            menuSel[0]++;
        }
        else {
            menuSel[0] = 0;
        }
    }
    
    if (input.confirm) {
        instance_destroy(obj_typer);
        
        if (menuSel[0] == 2) {
            menu = 888;
        }
        if (menuSel[0] == 3) {
            menu = 999;
        }
    }
}
if (menu == 2) {
    if (!instance_exists(obj_typer)) {
        create_text(210, 110, "DEFAULT", c_white, talkMenuText, false);
    }
    
    if (input.up_p) {
        if (menuSel[1] > 0) {
            menuSel[1]--;
        }
        else {
            menuSel[1] = 4;
        }
    }
    if (input.down_p) {
        if (menuSel[1] < 4) {
            menuSel[1]++;
        }
        else {
            menuSel[1] = 0;
        }
    }
    
    if (input.confirm) {
        instance_destroy(obj_typer);
        
        if (menuSel[1] == 4) {
            menu = 0;
        }
    }
}






if (menu == 888) {
    if (canTalk == false) {
        create_text(0, 110, typer, c_white, talkString, true);
        menu = 889;
    }
    else if (canTalk == true) {
        menu = 890;
    }
}
if (menu == 889) && (!instance_exists(obj_typer)) {
    menu = 0;
}
if (menu == 890) {
    menu = 2;
}
if (menu == 999) {
    if (global.genocide == -1)
        create_text(0, 110, typer, c_white, exitString, true);
    
    menu = 1000;
}
if (menu == 1000) && (!instance_exists(obj_typer)) {
    global.spawn = exitSpawn;
    if (!instance_exists(obj_persistent_fade)) {
        var fade = instance_create(0, 0, obj_persistent_fade);
        fade.targetRoom = exitRoom;
    }
    
    audio_sound_gain(global.currentsong, 0, 250);
    
    global.cutscene = true;
}
