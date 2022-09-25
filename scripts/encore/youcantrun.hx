var greenhill:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("stages/ycr/GreenHill"));
var blackshit = new FlxSprite().makeGraphic(1920 * 2, 1080 * 2, 0xff000000);
var cir:FlxSprite = new FlxSprite(600, 0).loadGraphic(Paths.image("StartScreens/Circle-you-cant-run"));
var text:FlxSprite = new FlxSprite(-600, 0).loadGraphic(Paths.image("StartScreens/Text-you-cant-run"));
function preloadchar(char:Character) {
	char = new Character(400, 330, mod + ":" + char);
	add(char);
	char.alpha = 0.001;
	trace(char);
}
function create() {
	greenhill.scale.set(10, 10);
	greenhill.screenCenter();
}
function onCountdown() {
    var swagCounter:Int = 0;
    switch (swagCounter){
        case 0,1,2,3,4:
            return false;
    }
}
function createPost() {
	
    add(blackshit);
	blackshit.cameras = [camHUD];
    add(cir);
	cir.cameras = [camHUD];
	FlxTween.tween(cir, {x: 0}, .35);
	add(text);
	text.cameras = [camHUD];
	FlxTween.tween(text, {x: 0}, 0.5);
	// PlayState.insert(greenhill, 99);
	preloadchar("ycrsonicmad");
	preloadchar("encorebf");
}
function onSongStart() {
	FlxTween.tween(text, {alpha: 0}, 1.5);
	FlxTween.tween(cir, {alpha: 0}, 1.5);
	FlxTween.tween(blackshit, {alpha: 0}, 1.5);
}
function stepHit(curStep:Int) {
	switch (curStep) {
		case 528:
			insert(7, greenhill);
			boyfriend.x -= 400;
		case 784:
			boyfriend.x += 400;
			remove(greenhill);
	}
}