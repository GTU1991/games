# Source Engine
## Mapping
* All source games have their maps create with hammer editor which for all source games is located in `SteamLibrary\steamapps\common\<source-game>\bin\hammer.exe`
  * For CSGO - from steam tools(section in steam library) download CSGO SDK and use it to run hammer


## Developer console
* [List of all commands common for all source engine games and links to game specific command lists](https://developer.valvesoftware.com/wiki/Console_Command_List)
* [Developer Console information](https://developer.valvesoftware.com/wiki/Developer_Console)


## Source Games Stuttering Solution(Do each step if previous does not help)
* Best
	1. Disable `Multicore rendering`
	2. Set sound quality to `low`
	3. Install games on an SSD
* Extra
	* Disable dynamic shadows
	* For HL2 and other games before CSGO: Add `+fps_max 66` to steam launch options; In the in-game console type in `snd_mixahead 0.4`
