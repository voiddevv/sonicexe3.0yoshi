import lime.app.Application;
var bg = new FlxSprite(0,300);
bg.frames = Paths.getSparrowAtlas("stages/fatal/launchbase");
bg.animation.addByIndices('bg','idle0',[1,2,3,4,5,6],'',12);
function create() {
    Window.frameRate = 1000;
    defaultCamZoom = .81;
    add(bg);
    bg.animation.play("bg", true);
    bg.scale.set(4,4);
    bg.scrollFactor.set(1,0.7);
    //FlxTween.tween(Window,{width: 600}, 0.5);
    dad.scrollFactor.set(1,0.7);
    boyfriend.scrollFactor.set(1,0.7);

    
}

function createPost() {
   
    dad.y += 50;
    dad.x -= 300;
    boyfriend.y += 100;
    boyfriend.x -= 50;
    gf.visible = false;
}
function update() {
    Window.width = 800;
    Window.height = 600;
}
function beatHit() {
    
}
// function stepHit() {
//     Window.width = 800;
//     Window.height = 600;
// }