var healthdrain:Float = 0.0;
function create() {
	note.frames = Paths.getSparrowAtlas("notes/PHANTOMNOTE_assets");
	note.enableRating = false;

	switch (note.noteData % PlayState.song.keyNumber) {
		case 0:
			note.animation.addByPrefix('scroll', "purple");
		case 1:
			note.animation.addByPrefix('scroll', "blue");
		case 2:
			note.animation.addByPrefix('scroll', "green");
		case 3:
			note.animation.addByPrefix('scroll', "red");
	}

	note.setGraphicSize(Std.int(note.width * 0.7));
	note.updateHitbox();
	note.x += 10;
	note.antialiasing = true;
	note.splashColor = 0xFFE90000;

	note.animation.play("scroll");
}

function onMiss() {
	return false;
}

function onPlayerHit() {
	FlxG.random.resetInitialSeed();
	healthdrain += 0.04;
    trace(healthdrain);
    new FlxTimer().start((FlxG.random.int(5,30)), function(tmr:FlxTimer) {
		healthdrain -= 0.01;
	});
}
function updatePost(elapsed) {
    health -= healthdrain*elapsed;
}
