function create() {
    FlxTween.tween(Window,{height: 720}, .3, {ease: FlxEase.cubeInOut});
    FlxTween.tween(Window,{width: 1280}, .3, {ease: FlxEase.cubeInOut});
}
// var curmenuitem:Int = 0;
// var menuItems:MainMenuOptions;
// var menuthings:FlxTypedGroup<FlxSprite>;
// var oldoptions = [
//     "mods",
//     "freeplay",
//     "story mode",
//     "options",
//     "donate",
//     "credits",
//     "toolbox"
// ];

// FlxG.camera.follow(camFollow, null, 1);
// function create() {
//     state.defaultBehaviour = false;
// 	state.autoCamPos = false;
//     for (i in oldoptions)
// 		state.optionShit.remove(i);

    
//     //for (i in oldoptions){
//     //    optionShit.remove(i);
//     //}

// }
// function createPost() {
//     menuthings = new FlxTypedGroup();
//     var newShit:Array<String> = ["story mode", "freeplay", "options"];
//     for(i in newShit){
//         menuthings.add(i);

//     }
//     //defaultBehaviour = false;
//     FlxG.camera.follow(camFollow, null, 1);
//    // state.option.add("story", function() {}, Paths.getSparrowAtlas('image'), 'my option basic', 'my option white')

// }