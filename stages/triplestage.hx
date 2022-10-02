var sky:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/triplestage/normal/glitch'));
var floor:FlxSprite = new FlxSprite(0,-125).loadGraphic(Paths.image('stages/triplestage/normal/TopBushes'));
var backshit:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('stages/triplestage/normal/BackBush'));
var fgtrees:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('stages/triplestage/normal/FGTree1'));
var fgtrees2:FlxSprite = new FlxSprite(-100,0).loadGraphic(Paths.image('stages/triplestage/normal/FGTree2'));
var trees:FlxSprite = new FlxSprite(-100,0).loadGraphic(Paths.image('stages/triplestage/normal/TTTrees'));
var xenofloor = new FlxSprite().loadGraphic(Paths.image("stages/triplestage/xeno/Grass"));
var xenotrees = new FlxSprite().loadGraphic(Paths.image("stages/triplestage/xeno/BackTrees"));
var xenobg = new FlxSprite();


sky.scale.set(1.2,1.2);
floor.scale.set(1.2,1.2);
fgtrees.scale.set(1.2,1.2);
fgtrees2.scale.set(1.2,1.2);
fgtrees.scrollFactor.set(1.2,1);
fgtrees2.scrollFactor.set(1.2,1);
defaultCamZoom = 0.7;
function create() {
xenobg.frames = Paths.getSparrowAtlas("stages/triplestage/xeno/NewTitleMenuBG");
xenobg.animation.addByPrefix("bg","TitleMenuSSBG instance 1", 24,true);
xenobg.animation.play("bg");
    add(sky); 
    add(backshit);
    add(trees);
    add(floor);
    xenobg.scale.set(6,6);
    xenobg.x += 800;
    xenobg.y += 600;
    add(xenobg);
    add(xenotrees);
    add(xenofloor);
    stopxenobg();

}
function doxenobg() {
    xenobg.alpha = 1;
    xenotrees.alpha = 1;
    xenofloor.alpha = 1;
    
}
function stopxenobg() {
    xenobg.alpha = 0.001;
    xenotrees.alpha = 0.001;
    xenofloor.alpha = 0.001;
}
function flipxenobg() {
    xenotrees.flipX = true;
    xenobg.flipX = true;
    xenofloor.flipX = true;
}
function unflipxenobg() {
    xenotrees.flipX = false;
    xenobg.flipX = false;
    xenofloor.flipX = false;
}
function createPost() {
    // add(fgtrees);
    // add(fgtrees2);
    gf.visible = false;
    PlayState.boyfriend.x += 600;
    PlayState.boyfriend.y +=200;
    dad.x += 450;
    dad.y+=150;
}
function stepHit() {
    switch(curStep){
        case 1040:
            doxenobg();
        case 2320:
            doxenobg();
            flipxenobg();
        case 1296,2832:
            stopxenobg();
        case 4112:
            doxenobg();
            unflipxenobg();
        
    }
}
        