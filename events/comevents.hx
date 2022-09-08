var sstatic:FlxSprite = new FlxSprite();
var jumpimg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("events/simplejump"));
function static() {
	sstatic.alpha = .6;
	sstatic.frames = Paths.getSparrowAtlas('events/daSTAT');
	sstatic.setGraphicSize(FlxG.width, FlxG.height);
	sstatic.screenCenter();
	sstatic.cameras = [camHUD];
	sstatic.animation.addByPrefix('static', 'staticFLASH', 24, false);
	add(sstatic);
	sstatic.animation.play("static");
	sstatic.animation.finishCallback = function() {
		trace("cum");
		FlxTween.tween(sstatic, {alpha: 0}, .15);
	};
	FlxG.sound.play(Paths.sound("staticBUZZ"));
}
function jump() {
	add(jumpimg);
	jumpimg.alpha = 1;
	FlxTween.tween(jumpimg, {alpha: 0}, 1);
	jumpimg.cameras = [camHUD];
    jumpimg.screenCenter();
	FlxG.sound.play(Paths.sound("sppok"));
}
function addcamzoom(gamezoom:String,hudZoom:String) {
	//thanks ✦ swordcube ✦#6969
	if (gamezoom == null && hudZoom == null){
		trace("your a fard");
		return;
	}
	FlxG.camera.zoom += Std.parseFloat(gamezoom);
	camHUD.zoom += Std.parseFloat(hudZoom);
}