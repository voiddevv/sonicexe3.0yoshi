var jumpimg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("events/tails"));
function create() {
    
}
function createPost() {
    
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

    }
}
function BeatHit(curBeat:Int) {
    switch(curBeat){

        case 4:
            bfSwitch('pixelbf');
    }
}