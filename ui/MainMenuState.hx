var curSelected:Int = 0;
var story:MenuOptions = new MenuOptions();
var oldoptions = [
    "mods",
    "freeplay",
    "story mode",
    "options",
    "donate",
    "credits",
    "toolbox"
];
var newoptions = [
    "story"
];
FlxG.camera.follow(camFollow, null, 1);
function create() {
    //for (i in oldoptions){
    //    optionShit.remove(i);
    //}

}
function createPost() {
    //defaultBehaviour = false;
    FlxG.camera.follow(camFollow, null, 1);
   // state.option.add("story", function() {}, Paths.getSparrowAtlas('image'), 'my option basic', 'my option white')

}