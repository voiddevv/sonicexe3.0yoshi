var stage:Stage = null;
function create() {
	stage = loadStage('cant-run-xd');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}