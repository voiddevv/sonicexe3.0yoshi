ratings[0].image = "Friday Night Funkin':weeb/pixelUI/sick-pixel";
ratings[0].scale = 6.4;
ratings[0].antialiasing = false;

ratings[1].image = "Friday Night Funkin':weeb/pixelUI/good-pixel";
ratings[1].scale = 6.4;
ratings[1].antialiasing = false;

ratings[2].image = "Friday Night Funkin':weeb/pixelUI/bad-pixel";
ratings[2].scale = 6.4;
ratings[2].antialiasing = false;

ratings[3].image = "Friday Night Funkin':weeb/pixelUI/shit-pixel";
ratings[3].scale = 6.4;
ratings[3].antialiasing = false;

function createPost() {
    gf.visible = false;
}
function ongengenerateStaticArrow() {
    trace("cum");
    for (i in cpuStrums){
        i.scale.set(6,6);
    }
}