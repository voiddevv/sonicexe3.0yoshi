note.enableRating = false;

// enableMiss(true);

function create() {
    note.frames = Paths.getSparrowAtlas("NOTE_assets");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "gold0");
        case 1:
            note.animation.addByPrefix('scroll', "gold0");
        case 2:
            note.animation.addByPrefix('scroll', "gold0");
        case 3:
            note.animation.addByPrefix('scroll', "gold0");
        case 4:
            note.animation.addByPrefix('scroll', "gold0");
            
    }

    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;
    note.splashColor = 0xFFFBFF00;

    note.animation.play("scroll");
}