var stage:Stage = null;
function create() {
	stage = loadStage('xtar');
	
}
function createPost() {
	for(i in PlayState.cpuStrums){
		trace("player " + i.x);
	}
	for(i in PlayState.cpuStrums){
		trace("cpu " + i.x);
	}
	PlayState.cpuStrums.members[0].x = 96;
	PlayState.cpuStrums.members[1].x = 208;
	PlayState.cpuStrums.members[2].x = 320;
	PlayState.cpuStrums.members[3].x = 432;
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
	
}
function onGenerateStaticArrows() {
	cpuStrums.members[0].x = 96;
	cpuStrums.members[1].x = 208;
	cpuStrums.members[2].x = 320;
	cpuStrums.members[3].x = 9999;
}