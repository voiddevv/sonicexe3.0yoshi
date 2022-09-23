var jumpimg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("events/tails"));
function preloadchar(char:Character) {
    char = new Character(400,330,mod + ":" + char);
    add(char);
    char.alpha = 0.001;
    trace(char);
}
function create() {
    
}
function createPost() {
    preloadchar("xeno");
    preloadchar("eggman");
    preloadchar("kunk");
}
function jump() {
	add(jumpimg);
	jumpimg.alpha = 1;
	FlxTween.tween(jumpimg, {alpha: 0}, 1);
	jumpimg.cameras = [camHUD];
    jumpimg.screenCenter();
	FlxG.sound.play(Paths.sound("sppok"));
}
function stepHit(curStep:Int) {
    switch(curStep){
        case 1040,4112:
            PlayState.dad.switchCharacter(mod + ':xeno');
            trace("mmm");
            dad.x = 430;
        case 1296:
            PlayState.dad.switchCharacter(mod + ':kunk');
            dad.x += 850;

        
    }
}