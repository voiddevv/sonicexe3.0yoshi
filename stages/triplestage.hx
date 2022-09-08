var sky:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/triplestage/normal/glitch'));
var floor:FlxSprite = new FlxSprite(0,-125).loadGraphic(Paths.image('stages/triplestage/normal/TopBushes'));
var backshit:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('stages/triplestage/normal/BackBush'));
var fgtrees:FlxSprite = new FlxSprite(0,0).loadGraphic(Paths.image('stages/triplestage/normal/FGTree1'));
var fgtrees2:FlxSprite = new FlxSprite(-100,0).loadGraphic(Paths.image('stages/triplestage/normal/FGTree2'));
var trees:FlxSprite = new FlxSprite(-100,0).loadGraphic(Paths.image('stages/triplestage/normal/TTTrees'));

sky.scale.set(1.2,1.2);
floor.scale.set(1.2,1.2);
fgtrees.scale.set(1.2,1.2);
fgtrees2.scale.set(1.2,1.2);
fgtrees.scrollFactor.set(1.2,1);
fgtrees2.scrollFactor.set(1.2,1);
defaultCamZoom = 0.7;
function create() {
   add(sky); 
   add(backshit);
   add(trees);
   add(floor);

}
function createPost() {
    add(fgtrees);
    add(fgtrees2);
    gf.visible = false;
    PlayState.boyfriend.x += 600;
    PlayState.boyfriend.y +=200;
    dad.x += 450;
    dad.y+=150;
}