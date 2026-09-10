riot-comote-audio-video-simulation.maxpat

This patch offer a workflow to work with the sonification of gestures. ex. dance

Based on MuBu ecosystem through Max (Cycling74) it allows to record on the same computer a stream of data (ex. IMU providing accelerometers, gyroscope, magnetometer and gravity computation) combined with audio and video (more or less synchronized).

The core is a max patch riot-comote-audio-video-simulation.maxpat.
This patch records/playback data and audio encapsulated in a mubu file.
This patch will drive an external video app build with Max using jitter ecosystem for recording (ONLY) the video : VIDEO-recorder-OSC.app
NOTE : the playback of the video is made by the patch itself.
data, audio and video are saved in a sub-folder /recordings that contains :
/recordings/mubu
/recordings/video
/recordings/audio

Because operating system protections, the video recorder app ("VIDEO-recorder-OSC.app") needs first to be built from its original patch VIDEO-recorder-OSC.maxpat via Max.

See "complete installation" tab in GST-overview (from Max extras menu) for easy installation.

Manually :
1- Copy the content of the "video" folder (~/Documents/Max\ 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/video) in your Documents folder in a "gst-video" folder ~/Documents/gst-video or use the following command line in the terminal app (from Applications/Utilities folder) :

mkdir -p ~/Documents/gst-video && cp -r ~/Documents/Max\ 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/video/*

2- launch Max

3- open the patch "VIDEO-recorder-OSC.maxpat" from the new created folder : ~/Documents/gst-video/VIDEO-recorder-OSC.maxpat

4- from File menu "Build Collective / Application ..." build the application "VIDEO-recorder-OSC.app" in the same folder (~/Documents/gst-video).

5- For Mac only : authorize permanently this access to audio and camera.

	5a- start terminal (from Applications/Utilities folder)
	5b- in the terminal "codesign" your new Max application to permanently access the camera and audio (after the 1st launch) : 

	codesign -s - --deep -f ~/Documents/gst-video/VIDEO-recorder-OSC.app

	5c- (option) check the code signing running the following command line :

	codesign --verify PATH/VIDEO-recorder-OSC.app

	no feedback in the terminal means success !!!!


6- VIDEO-recorder-OSC.app is ready and you will have to authorize once the use of audio and camera.

VIDEO-recorder-OSC.app is launched and internally controled by the Max patch :
"riot-comote-audio-video-simulation.maxpat"

