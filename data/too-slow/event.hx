var blackbar:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, 200, 0xff000000);
var blackbar2:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, 200, 0xff000000);
var sstatic:FlxSprite = new FlxSprite(0, 0);
var jumpimg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("events/simplejump"));
var jumpanim:FlxSprite = new FlxSprite();
var dad2:Character = new Character(310,160,mod + ":exeanim");
function addcamzoom(zoom:Float) {
	
}
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
		FlxTween.tween(sstatic,{alpha:0}, .2);
	};
	FlxG.sound.play(Paths.sound("staticBUZZ"));


}
function jump() {
	add(jumpimg);
	jumpimg.alpha = 1;
	FlxTween.tween(jumpimg,{alpha:0}, 1);
	jumpimg.cameras = [camHUD];
	FlxG.sound.play(Paths.sound("sppok"));
}
function jump2() {
	jumpanim.alpha = 1;
	jumpanim.animation.addByPrefix('run','sonicSPOOK', 24,false);
	jumpanim.cameras = [camHUD];
	jumpanim.animation.play("run");
	FlxG.sound.play(Paths.sound("datOneSound"));
	jumpanim.animation.finishCallback = function() {
		FlxTween.tween(jumpanim,{alpha: 0.000001}, 0.33);
	};

}

function blackshit() {
	blackbar.cameras = [camHUD];
	blackbar.screenCenter();
	blackbar.y += 600;
	add(blackbar);
	blackbar2.cameras = [camHUD];
	blackbar2.screenCenter();
	blackbar2.y -= 600;
	add(blackbar2);
	FlxTween.tween(blackbar, {y: 560}, .75);
	FlxTween.tween(blackbar2, {y: -40}, .75);

}

function noblackshit() {
	FlxTween.tween(blackbar, {y: 800}, .75);
	FlxTween.tween(blackbar2, {y: -400}, .75);
}

function create() {
	// static.frames = Paths.getSparrowAtlas('events/daSTAT');
	// add(sstatic);
}
function createPost() {
	add(jumpanim);
	jumpanim.frames = Paths.getSparrowAtlas('events/sonicJUMPSCARE');
	jumpanim.alpha = 0.0001;
	trace(dad.x);
	trace(dad.y);
}

function stepHit(curStep:Int) {
	switch (curStep) {
		case 130, 265, 450, 645, 855, 889, 938, 981, 1030, 1065, 1105, 1123, 1245, 1345, 1432, 1454, 1495, 1521, 1558, 1578, 1599, 1618, 1647, 1657, 1692,
		1713, 1738, 1747, 1761, 1785, 1806, 1816, 1832, 1849, 1868, 1887, 1909:
		static();
		case 765:
			FlxG.camera.flash(0xff0000, 1);
		case 764, 768, 771, 774, 777, 780, 783:
			dad.playAnim("laugh", true);
		case 1296:
			blackshit();
			add(dad2);
			dad2.playAnim("idle", true);
			dad.visible = false;
		case 1178, 1336:
			jump();
		case 1423:
			noblackshit();
			dad.visible = true;
			dad2.kill();
		case 1723:
			jump2();
	}
}
