# Encode image as SSTV audio
function sstv_encode() {
	python3 -m pysstv $1 $2/robot36.wav --vox --mode Robot36
}