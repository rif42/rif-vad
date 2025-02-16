## Description
This is a voice activity detection module
will automatically detect voices no matter your current mic sensitivity settings

## How it works
this algorithm combines several voice features to detect if a voice is valid or not:
- **energy value (db)**, measures how much energy the sound carries, measured in decibels, closer to 0 means louder
- **zero crossing rate**, measures how often an audio signal crosses the zero amplitude axis
- **spectral centroid**, measures the "center of mass" of an audio signal's frequency spectrum - essentially the average frequency weighted by amplitude

aside from those voice features, the algorithm also implements some logic to help better record the voice
- **hold time (ms)**, holds recording for awhile to compensate speech pauses
- **hysteresis**, lowers the threshold when user is talking to compensate irregular speech volume
- **minimal duration (ms)**, only accept active voice that lasts over this value to compensate voice/unvoiced spikes

## How to run
- clone repo or download both `run.bat` and `vad.html`
- put both files in the same folder
- double click `run.bat`
- a browser window will open
- select your microphone
- start talking

when voice is valid, the box will turn green