var sonicrunfas:Boyfriend = new Boyfriend(700,800, mod + ":sonic-pray2");
var eggman:Character = new Character(-450, 1050, mod + ":eggman-pray");
var floor:FlxBackdrop = new FlxBackdrop(Paths.image("stages/pray/stardustFloor"),1.1, 1,true,false);
var bg:FlxBackdrop = new FlxBackdrop(Paths.image("stages/pray/stardustBg"),-1.5, 1,true,false);
var floorspeed = 0.020;
var bgspeed = 0.015;
var RED:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, FlxG.height * 2, 0xffff0000);
var BLACK:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 6, FlxG.height * 4, 0xff000000);
var blackbar:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, 200, 0xff000000);
var blackbar2:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, 200, 0xff000000);
var theguy:FlxSprite = new FlxSprite().loadGraphic(Paths.image("stages/pray/furnace_gotcha"));
var theguy2:Character = new Character(-600, 1000, mod + ":furnace");
var cumm:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2, FlxG.height, 0xff0026ff);
//bg.scrollFactor.set(-1.1, 1);
function create() {
	bg.scale.set(.5,.5);
	bg.y += 400;
	defaultCamZoom = 1;
	add(bg);
	//FlxG.camera.flash(0xff0000,3);
}
function cum() {
	add(cumm);
	cumm.alpha = 1;
	cumm.cameras = [camHUD];
	FlxTween.tween(cumm,{alpha:0}, 3);
}

function createPost() {
	// bg.visible = false;
	add(theguy);
	theguy.screenCenter();
	theguy.scale.set(3,3);
	theguy.y = 1350;
	theguy.x = 1750;
	theguy.flipX = true;
	// floor.visible = false;
	//PlayState.dad.visible = false;
	gf.visible = false;
	 trace(PlayState.boyfriend.x);
     trace(PlayState.boyfriend.y);
	// trace(PlayState.dad.x);

	PlayState.boyfriend.y = 1300;
	add(floor);
	floor.screenCenter();
	floor.scale.set(0.5,0.5);
	floor.y += 1350;
	// FlxTween.tween(bg,{x: 1250}, 1, {type: FlxTween.PINGPONG, loopDelay: 1, });
	// FlxTween.tween(boyfriend,{x: 2500}, 7.5, {type: FlxTween.PINGPONG, loopDelay: 1, });
	// FlxTween.tween(dad,{x: 1250}, 5, {type: FlxTween.PINGPONG, loopDelay: 1, });
	dad.y += 500;
	dad.x = -600;
	blackbar.cameras = [camHUD];
	blackbar.screenCenter();
	blackbar.y += 600;
	add(blackbar);
	blackbar2.cameras = [camHUD];
	blackbar2.screenCenter();
	blackbar2.y -= 600;
	add(blackbar2);
	// bar1 y = 560
	//bar2 y = -40
}

function update(elapsed) {
	floor.x -= floorspeed / elapsed;
	bg.x -= bgspeed / elapsed;

}

function changetoegg() {
	trace('redhead');
	add(eggman);
	dads.push(eggman);
	remove(dad);
	dads.remove(PlayState.dad);
    PlayState.iconP2.changeCharacter(mod + ':eggman-pray');
	FlxTween.tween(blackbar,{y: 560}, .75);
	FlxTween.tween(blackbar2,{y: -40}, .75);
	FlxTween.tween(eggman,{x: 1000,}, 5,{ease: FlxEase.cubeOut});
	add(theguy2);


}

function stepHit(curStep:Int) {
	//while (floor.x < -2250) {
	//	floor.x = 0;
	//}
	//while (bg.x < -3230) {
	//	bg.x = -200;
	//}

	switch (curStep) {
		case 128:
			bg.visible = true;
			floor.visible = true;
			PlayState.dad.visible = true;
			FlxG.camera.flash(0xffffff,1);
			FlxG.camera.zoom += 2;
			camHUD.zoom += 0.5;
			cum();

		case 250:
			FlxTween.tween(dad, {x: 650}, 0.5);
		case 1512:
			FlxTween.tween(dad, {x: -600,}, 1.7, {onComplete: changetoegg});
		case 1547:
			boyfriend.playAnim("cutscene1");
			
			eggman.playAnim("cutscene1");
        case 1765:
            FlxTween.tween(PlayState.camHUD, {alpha: 1,}, 2);
        case 1787:
            PlayState.remove(PlayState.boyfriend);
			PlayState.boyfriend.destroy();
			PlayState.boyfriends = [sonicrunfas];
			PlayState.add(sonicrunfas);   
			FlxTween.tween(blackbar,{y: 800}, .75);
			FlxTween.tween(blackbar2,{y: -400}, .75);
			bgspeed = 0.025;
			floorspeed = 0.030;
			//remove(blackbar);
			//remove(blackbar2);
		case 2450:
			FlxTween.tween(theguy2,{x: 3000}, 6);
        case 3331:
            FlxTween.tween(eggman,{x: -600,}, 2,{ease: FlxEase.expoIn});
        case 3333:
            boyfriend.playAnim("cutscene2");
		case 3365:
			FlxTween.tween(theguy,{x: 0}, .4);
		case 3367:
			add(BLACK);
			add(RED);
			RED.cameras = [camHUD];
			BLACK.y = 0;
			BLACK.x = -200;
			FlxTween.tween(camHUD,{alpha: 0}, .66);

        }
}
