# Half-life 2 Mod Creation
*(All other source games except HL2 have a more limited modding ability or the way mods are created is different)*

## Resources
* External sources
	* [Detailed Source SDK 2013 Single Player Mod Setup](https://jesseculver.com/tutorials/sp2013setup/)
* Valve Documentation
* [Mod environment setup](https://developer.valvesoftware.com/wiki/Create_a_Mod)
* [Source SDK 2013 setup](https://developer.valvesoftware.com/wiki/Source_SDK_2013)
* [Creating a test mod(Outdated: start from "Alter the rocket's speed" section)](https://developer.valvesoftware.com/wiki/My_First_Mod)


## Creating a mod notes to fix stuff
* **Every mod should have it's own copy of Source SDK in it's folder**
1. [Setup the Source SDK 2013 environment](https://developer.valvesoftware.com/wiki/Source_SDK_2013)
	* **Make Sure To Complete all Steps**
	* `Getting the code` step
		* Use command line git to clone the SDK git repo
		* SDK should be cloned into the mod folder(as every mod should have a copy of it)
	* `Step One: Installing Visual Studio`
		* Just for convinience, install visual studio into `Program Files (x86)\Microsoft Visual Studio\2013` folder
	* `Step Two: Installing the Microsoft Speech SDK`
		* By `<SDKROOT>` in Speech SDK step, the mod's local cloned [source SDK git repo](https://github.com/ValveSoftware/source-sdk-2013) is meant
	* `Step Three: Compiling the Source SDK and preparing project files`
		* Do not compile files in mp if the mod isn't for hosting on a server
		* In the second step it asks you to change Debug to Release, this should be done in the toolbar at the top of the window in visual studio
		* If something fails, just build(do not press rebuild as it will recompile not only the files which failed last time, but everything) the everything solution again
	* `Step Four : Building the shaders`
		* This is not required to make the mod


## Solving Errors
* When installing VS2013, it gives "Unable to locate package source" error
	1. Make sure you have a Microsoft Account
	2. Go to the old visual studio versions [website](https://visualstudio.microsoft.com/ru/vs/older-downloads/)
	3. Open `2013` section on the website and then click `Download`. You will be brought to a page with a list of Visual Studio 2013 ISO download options.
	4. Press `Download` next to `Visual Studio Community 2013 Update 5`
	5. In file explorere right click on the downloaded `iso` file and press `Mount`
	6. Open the mounted ISO by clicking on it in `This PC` and copy all of the files from the mounted ISO on to some folder on the computer
	7. Go to `This PC` in explorer, right click on mounted iso and press `Eject`
	8. Go to the folder where files from `iso` were copied to and `vs_community.exe`