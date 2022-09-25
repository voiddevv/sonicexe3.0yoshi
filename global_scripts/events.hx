import flixel.text.FlxText;
import flixel.util.FlxTimer;
function jump() {
	var jumpimg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("events/simplejump"));
	FlxTween.tween(jumpimg, {alpha: 0}, 1);
	jumpimg.cameras = [camHUD];
	jumpimg.setGraphicSize(FlxG.width, FlxG.height);
	jumpimg.updateHitbox();
	jumpimg.screenCenter();
	add(jumpimg);
	jumpimg.alpha = 1;
	FlxG.sound.play(Paths.sound("sppok"));
}
function static() {
	var sstatic:FlxSprite = new FlxSprite(0, 0);
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
function preloadchar(char:Character) {
	char = new Character(400, 330, mod + ":" + char);
	add(char);
	char.alpha = 0.001;
	trace(char);
}
function addcamzoom(gamezoom:String, hudZoom:String) {
	// thanks ✦ swordcube ✦#6969
	if (gamezoom == null && hudZoom == null) {
		trace("your a fard");
		return;
	}
	FlxG.camera.zoom += Std.parseFloat(gamezoom);
	camHUD.zoom += Std.parseFloat(hudZoom);
}
function camflash(color, time:String) {
	if (color == null && time == null) {
		trace("grrrrrrrr its null");
	}
	if (time == null) {
		time = 1;
	}
	switch (color) {
		case "RED", "red", "Red":
			FlxG.camera.flash(0xff0000, Std.parseFloat(time));
		case "BLUE", "blue", "Blue":
			FlxG.camera.flash(0x0400ff, Std.parseFloat(time));
		case "green", "GREEN", "Green":
			FlxG.camera.flash(0x3BB143, Std.parseFloat(time));
		case "lime", "LIME", "Lime":
			FlxG.camera.flash(0x00ff2a, Std.parseFloat(time));
		case "BLACK", "Black", "black", "nocolor", "none":
			FlxG.camera.flash(0x000000, Std.parseFloat(time));
		case "piss":
			FlxG.camera.flash(0xE1FF00, Std.parseFloat(time));
		case "pink", "Pink", "PINK":
			FlxG.camera.flash(0xFF00B3, Std.parseFloat(time));
		case "puple":
			FlxG.camera.flash(0x6F00FF, Std.parseFloat(time));
		case "cyan", "Cyan", "CYAN":
			FlxG.camera.flash(0x0084FF, Std.parseFloat(time));
		case "gray", "Gary", "GRAY":
			FlxG.camera.flash(0x687886, Std.parseFloat(time));
		case "orange", "Orange", "ORANGE":
			FlxG.camera.flash(0xFFA600, Std.parseFloat(time));
		case null, "cum":
			FlxG.camera.flash(0xffffff, Std.parseFloat(time));
	}
	FlxG.camera.flash(Std.int(color), Std.parseFloat(time));
}
function playanim(guy:Charatcer, anim:String) {
	switch (guy) {
		case "dad":
			guy = dad;
		case "bf", "boyfriend":
			guy = boyfriend;
		case "gf", "girlfriend":
			guy = girlfriend;
	}
	guy.playAnim(anim, true);
}
function changechar(guy:String, char:String) {
	switch (guy) {
		case "dad":
			guy = dad;
		case "bf", "boyfriend":
			guy = boyfriend;
		case "gf", "girlfriend":
			guy = girlfriend;
	}
	guy.switchCharacter(mod + ":" + char);
}
function imageflash(imagepath:String, time:Int) {
	var image = null;
	if (time == null) {
		trace("oh god time is null");
	}
	if (imagepath == null) {
		trace("no the image path is null you fuck");
	}
	image = new FlxSprite().loadGraphic(Paths.image(imagepath));
	add(image);
	image.alpha = 1;
	image.screenCenter();

	FlxTween.tween(image, {alpha: 0}, Std.int(time));
}
function setcamzoom(camzoom:String, time:String) {
	FlxTween.tween(FlxG.camera, {zoom: Std.parseFloat(camzoom)}, Std.parseFloat(time), {ease: FlxEase.cubeInOut});
	defaultCamZoom = Std.parseFloat(camzoom);
}
function ctext(a:String, b:String) {
	var textThing:FlxText = new FlxText();
	textThing.text = (a);
	textThing.setGraphicSize(Std.int(textThing.width * 3));
	textThing.screenCenter();
	textThing.cameras = [camHUD];
	textThing.y = FlxG.height - 150;
	add(textThing);
	new FlxTimer().start(b, function(tmr:FlxTimer) {
		FlxTween.tween(textThing, {alpha: 0}, 0.2);
	});
}
function screenshake(a:String, b:String) {
	FlxG.camera.shake(Std.parseFloat(a), Std.parseFloat(b));
}
