var vg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('events/redVG'));
var pixelsonic:Charatcer = new Character(400,250,mod + ":ycrpixel");
var bfpixel:Boyfriend = new Boyfriend(800,250,mod + ":pixelbf");
var greenhill:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image("stages/ycr/GreenHill"));
var d:Character = new Character(300,140,mod +":ycrsonicmad");
var b:Boyfriend = new Boyfriend(1186,100,"bf");
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
function create() {
    //add(greenhill);
    //add(pixelsonic);
    //add(bfpixel);
    greenhill.scale.set(10,10);
    greenhill.screenCenter();
   // greenhill.alpha = 0.001;
}
function createPost() {
    vg.cameras = [camHUD];
    add(vg);
    vg.alpha = 0.0001;
    trace(boyfriend.x);
    trace(boyfriend.y);
}
function startvg() {
    if (curBeat % 2 == 0)
        {
            FlxTween.tween(vg,{ alpha: 0}, .85);
            FlxTween.tween(vg,{ alpha: 1}, .85, {type: FlxTween.PINGPONG,startDelay: .85});
        }	
}
function stopvg() {
    vg.alpha = 0.0001;
}
function pixelswitch() {
    static();
    add(greenhill);
    add(pixelsonic);
    add(bfpixel);
    dads.push(pixelsonic);
    remove(dad);
    dads.remove(dad);
    boyfriends.push(bfpixel);
    remove(boyfriend);
    boyfriends.remove(boyfriend);
    greenhill.y += 200;
    
}
function goback() {
    static();
    remove(greenhill);
    remove(dad);
    remove(boyfriend);
    add(d);
    add(b);
    dads.push(d);
    boyfriends.push(b);
    dads.remove(dad);
    boyfriends.remove(boyfriend);

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
        case 80:
            startvg();
        case 28,61,80,180,197,204,253,295,357,374,396,424,458,474,491,510,928,1040,1088,1108,1164,1188,1204,1221,1253,1280,1295,1300,1309,1317,1332,1342,1349,1357,1365,1374,1385,1402,1413,1420:
            static();
        case 147:
            jump();
        case 128,130,132,134,136,138,140,328,330,332,334,357,374,396,424,458,474,491,510,1288,1290,1292,1294:
            dad.playAnim("laugh",true);
        case 520:
            dad.playAnim("mad",true);
        case 528:
            pixelswitch();
        case 784:
            goback();
        case 1416:
            dad.playAnim("justdie",true);
        
        
    }
    
}
