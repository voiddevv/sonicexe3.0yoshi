//
import flixel.ui.FlxBar;
function createPost() {
    switch (song){
        case "endless":
            PlayState.timerBar.createGradientBar([0xFF222222], [0x5f41a1, 0x5f41a1], 1, 90);
        default:
            PlayState.timerBar.createGradientBar([0xFF222222], [0xFFFF0000, 0xFFFF0000], 1, 90);
    }
}