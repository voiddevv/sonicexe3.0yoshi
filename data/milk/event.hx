var sunker = new FlxSprite();
var sunkin = new FlxSprite().loadGraphic(Paths.image("stages/sunkStage/cereal"));

function create() {
	Window.width = 800;
	Window.height = 600;
}
var spookysunk = new FlxSprite().loadGraphic(Paths.image("stages/sunkStage/sunkage"));


function createPost() {}

function stepHit(curStep:Int) {
	switch (curStep) {
		case 132:
			sunker.cameras = [camHUD];
			sunker.screenCenter();
			sunker.scale.set(6, 6);
			FlxTween.tween(sunker, {alpha: 0}, 1.5);
			sunker.frames = Paths.getSparrowAtlas("stages/sunkStage/sunker");
			sunker.animation.addByPrefix("sunk", "sunker");
			add(sunker);
			sunker.animation.play("sunk");
			camGame.shake(.35, 1);
			camHUD.shake(.35, 1);
        case 556:
            sunkin.cameras = [camHUD];
            sunkin.screenCenter();
            sunkin.x -= 940;
            add(sunkin);
            FlxTween.tween(sunkin,{x: 1280}, 7.5);
        case 799:
            var sunkin2 = new FlxSprite().loadGraphic(Paths.image("stages/sunkStage/sunkyPose"));
            add(sunkin2);
            sunkin2.screenCenter();
            sunkin2.x += 330;
            sunkin2.y -= 820;
            sunkin2.cameras = [camHUD];
            FlxTween.tween(sunkin2,{y: 875}, 7.5);
        case 930:
            var sunkin3 = new FlxSprite(-650,-800).loadGraphic(Paths.image("stages/sunkStage/cereal"));
            add(sunkin3);
            sunkin3.cameras = [camHUD];
            FlxTween.tween(sunkin3,{x: 1200,y: 900}, 7.5);
        case 1424:
            camGame.visible = false;
        case 1440:
            add(spookysunk);
            spookysunk.setGraphicSize(FlxG.width,FlxG.height);
            spookysunk.cameras = [camHUD];
            spookysunk.alpha = 0;
        case 1456:
            camGame.visible = true;
            remove(spookysunk);



	}
}
function onDadHit() {
    var spook = false;
    if(spook = true){
        spookysunk.alpha += 0.05;
    }
}
