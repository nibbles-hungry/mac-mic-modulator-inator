# Mac Mic Modulator(inator)

A simple add on script which uses Automator and SwiftBar to mute and unmute your mic using keyboard hotkeys, while showing you the status of your mic on the Menu bar!

## I. Automator script
1. Open Spotlight Search (`Command + Space`) and open Automator app. This should automatically open up a window prompting you to create a new "document".
2. Select `Quick Action` and click on `Choose`.
3. In the search bar on the left pane, search for and select (you may have to double click) `Run Applescript`. This should populate a canvas on the right hand pane with some sample code.
4. On the top of the right hand pane, under `Workflow receives`, select `no input`.
5. In the canvas populated, replace the entire scripts content with the data in file `microphone_toggle.applescript`.
6. Run the script using the run button on top of the Automator window and checking if your microphone is getting muted/unmuted, and if you are getting the right audio cues and notifications.
7. Save this document either by going into `File->Save...` or using `cmd + S`. Give the name something meaningful, like `Toggle Microphone` or `Pink Shell Turtle Nail`.

## II. Creating a hotkey
1. Open `System Settings`, which is usually found on your Dock. If not available, use `Spotlight Search`.
2. Search for `Keyboard Shortcuts`. In the available results, click on the option of the same name under the section `Keyboard`. A new pop up/floating window will open up.
3. Select the section on the left pane called `Services`.
4. Expand the option called `General`. Here, you should be able to find the name of the Automator script you saved in the last section. On the right end of the same entry, you will find an empty box.
5. Click on the empty box and immediately provide the keyboard hotkey you would wish to bind to toggle your microphone. A good example is `Control + Option + M`.
6. Hit the hotkey on your keyboard while no particular window is selected and check if the microphone is getting muted/unmuted, and if you are getting the right audio cues and notifications.

## III. Creating the Menu bar icon
1. Install `SwiftBar` using the command ```brew install swiftbar```
2. Launch `SwiftBar` using the `Spotlight Search`. When launching for the first time, the app will ask you to select a folder for the `SwiftBar plugins`. Choose an appropriate location like `~/SwiftBar`.
3. Make sure `SwiftBar` is running in the Menu Bar.
4. Copy the `mic_toggle.sh` file into `~/SwiftBar` folder.
5. Make sure that the file has execute permissions for all users by running `chmod a+x ~/SwiftBar/mic_toggle.sh` on a terminal shell.
6. Click on the `SwiftBar` icon on the Menu Bar and select `Reload all` option to load up this plugin.
7. Test whether you are able to see the mic icons change when you mute and unmute your mic using the hotkey which was set up.

### ROBERT IS YOUR PARENT'S BROTHER.

It should all be working now. If not, please follow the below troubleshooting steps.

1. Google is your friend. ChatGPT is your chum.
2. Make sure that there is only one instance of `mic_toggle.sh` running at any point of time. To check this, fire this command on a terminal<p>
```ps -ef | grep mic_toggle.sh```
3. If there are multiple instances of the script, do the following procedure.<p>
   <t>a. Click on `SwiftBar` on the Menu Bar (or if the script is already running, then the mic icon) and select `SwiftBar -> Disable All`.
   <t>b. Kill ALL instances of running `mic_toggle.sh` script using kill -9.
   <t>c. Click on `SwiftBar` on the Menu Bar and select `Enable All`. This should enable one single instance of the script again.

Enjoy!
