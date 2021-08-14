# Source SDK 2013 Setup for HL2 modding

$mod_name = Read-Host -Prompt 'Input the mods name: '
$solution_compiled_status = Read-Host -Prompt 'Have you already compiled the visual studio solution(y/n):'

if ( "n" -eq $solution_compiled_status )
{
	# Outout VS Installation information
	Read-Host -Prompt 'Before setting up the mod, install vs code
1. Go to the https://visualstudio.microsoft.com/vs/older-downloads/
2. Select "2013", then "Download"
3. Select "Download" next to "Visual Studio Community 2013 Update 5"
4. In file explorer right click on the downloaded `iso` file and press on `Mount`
5. Copy all the files from the mounted iso to some folder on the computer
6. Go to `This PC` in explorer, right click on mounted iso and press `Eject`
7. Go to folder with extracted files and run the `vs_community.exe` file
8. Download and run the MFC library installer - https://download.microsoft.com/download/0/2/3/02389126-40A7-46FD-9D83-802454852703/vc_mbcsmfc.exe

Press Enter when ready'

	# Create a folder for the mod and go into it
	mkdir "$mod_name"
	Set-Location "$mod_name"

	# Clone the source sdk repo
	git clone https://github.com/ValveSoftware/source-sdk-2013.git

	# Install the microsoft speech SDK(It is useless and just adds compile time in most cases)
	# Invoke-WebRequest https://github.com/Electromaster232/ms-sapi51-fixed/archive/master.zip
	# expand-archive -path 'ms-sapi51-fixed-master.zip'
	# Move-Item ms-sapi51-fixed-master\ms-sapi51-fixed-master\sapi51 source-sdk-2013\sp\src\

	# Compile Source SDK
	Set-Location source-sdk-2013\sp\src
	.\createallprojects.bat
	Set-Location ../../..
	# .\creategameprojects.bat - it is useless and just adds compile time in most cases and is only usefull if shaders are edited and speech SDK is used

	# Run the visual studio solution
	Read-Host -Prompt '
	1. Go to the source-sdk-2013\sp\src\
	2. Open games.sln in visual studio 2013
	3. In "Solution Explorer" right click on "Solution games"; Press Properties; Click on "Configuration" under "Configuration Properties" in the left-side menu;  Click "Configuration Manager"; In the "Configuration Manager" under "Active solution" configuration: choose Release from the drop down; Click "OK"
	4. In "Solution Explorer" right click on "Solution games"; Press "Build Solution"
	* If something fails, do the step 4. again

	Press Enter to continue, start the script again after that'
}

Read-Host -Prompt 'Make sure you are in the <mod-name> directory, Press Enter when you are ready'

# Get the binaries
Copy-Item source-sdk-2013\sp\src\game\client\episodic\
