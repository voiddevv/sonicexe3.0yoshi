var red = new FlxSprite().makeGraphic(FlxG.width * 2, FlxG.hight*2, 0xffff0000);
var hitstatic = new FlxSprite();
function create() {
    hitstatic.frames = Paths.getSparrowAtlas("notes/hitStatic");
    hitstatic.animation.addByPrefix("hit","staticANIMATION", 24,false);
    note.frames = Paths.getSparrowAtlas("notes/STATICNOTE_assets");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple0");
        case 1:
            note.animation.addByPrefix('scroll', "blue0");
        case 2:
            note.animation.addByPrefix('scroll', "green0");
        case 3:
            note.animation.addByPrefix('scroll', "red0");
    }
    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;
    note.splashColor = 0xFFFF0000;

    note.animation.play("scroll");
}
function onMiss() {
    FlxG.camera.shake(.35,.38);
    PlayState.health -= 0.35;
    hitstatic.scale.set(4,4);
    hitstatic.screenCenter();
    hitstatic.cameras = [camHUD];
    add(red);
    red.cameras = [camHUD];
    add(hitstatic);
    hitstatic.animation.play("hit");
    FlxG.sound.play(Paths.sound("hitStatic1"));
    hitstatic.animation.finishCallback = function(){
        remove(red);
        remove(hitstatic);
    };
}