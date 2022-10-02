var jumpimg = new FlxSprite().loadGraphic(Paths.image("events/Tails"));
function preloadchar(char:Character) {
    char = new Character(400,0,mod + ":" + char);
    add(char);
    char.cameras = [camHUD];
    char.alpha = 0.001;
    trace(char);
}
function triplestatic() {
    var sstatic = new FlxSprite();
    sstatic.alpha = 0.6;
    sstatic.frames = Paths.getSparrowAtlas("events/Phase3Static");
    add(sstatic);
    sstatic.cameras = [camHUD];
    sstatic.animation.addByPrefix("static","Phase3Static instance 1", 24, false);
    sstatic.animation.play("static");
    sstatic.scale.set(5,5);
    sstatic.x += 200;
    sstatic.y += 100;
    sstatic.animation.finishCallback = function() {
		FlxTween.tween(sstatic, {alpha: 0}, .15);
	};
}
function create() {
    
}
function createPost() {
    for(i in playerStrums){
        trace(i.x);
    }
    preloadchar("xeno");
    preloadchar("eggman");
    preloadchar("kunk");
    preloadchar("bfflip");
    preloadchar("povbf");
    cpuStrums.members[2].visible = false;
	cpuStrums.members[1].x += 50;
	cpuStrums.members[0].x += 50;
	cpuStrums.members[4].x -= 65;
	cpuStrums.members[3].x -= 65;
	camFollowLerp = 0.12;
}
function tailsjump() {
	add(jumpimg);
	jumpimg.alpha = 1;
	FlxTween.tween(jumpimg, {alpha: 0}, 1);
	jumpimg.cameras = [camHUD];
    jumpimg.screenCenter();
	FlxG.sound.play(Paths.sound("P3Jumps/TailsScreamLOL"), 0.1);
}
function kunkjump() {
    jumpimg = new FlxSprite().loadGraphic(Paths.image("events/Knuckles"));
    add(jumpimg);
	jumpimg.alpha = 1;
	FlxTween.tween(jumpimg, {alpha: 0}, 2);
	jumpimg.cameras = [camHUD];
    jumpimg.screenCenter();
	FlxG.sound.play(Paths.sound("P3Jumps/KnucklesScreamLOL"), .3);
    FlxTween.tween(cpuStrums.members[0],{x: 736}, .3);
    FlxTween.tween(cpuStrums.members[1],{x: 848}, .3); 
    FlxTween.tween(cpuStrums.members[3],{x: 960}, .3); 
    FlxTween.tween(cpuStrums.members[4],{x: 1072}, .3);
    FlxTween.tween(playerStrums.members[0],{x: 40}, .3);
    FlxTween.tween(playerStrums.members[1],{x: 152}, .3); 
    FlxTween.tween(playerStrums.members[2],{x: 264}, .3); 
    FlxTween.tween(playerStrums.members[3],{x: 376}, .3); 
    FlxTween.tween(playerStrums.members[4],{x: 488}, .3);
}
function stepHit(curStep:Int) {
    switch(curStep){
        case 0,1024,1088,1216,1280,2304,2816,3200,3456,4096:
            triplestatic();
        case 1040,4112:
            PlayState.dad.switchCharacter(mod + ':xeno');
            trace("mmm");
            dad.x = 430;
        case 144,400,916:
              tailsjump();
        case 1296,1680:
            kunkjump();
            PlayState.dad.switchCharacter(mod + ':kunk');
            dad.x = 1600;
        case 2320:
            dad.x = 800;
        case 2832:
            PlayState.dad.switchCharacter(mod + ":eggman");
            dad.x = 500;
            FlxTween.tween(cpuStrums.members[0],{x: 90}, .3);
            FlxTween.tween(cpuStrums.members[1],{x: 202},.3); 
            FlxTween.tween(cpuStrums.members[3],{x: 311},.3); 
            FlxTween.tween(cpuStrums.members[4],{x: 423},.3);
            FlxTween.tween(playerStrums.members[0],{x: 680},.3);
            FlxTween.tween(playerStrums.members[1],{x: 792},.3); 
            FlxTween.tween(playerStrums.members[2],{x: 904},.3); 
            FlxTween.tween(playerStrums.members[3],{x: 1016},.3); 
            FlxTween.tween(playerStrums.members[4],{x: 1128},.3);

        
    }
}