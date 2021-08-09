## Install and Launch
1. `Install` -  Steam App -> Library -> In The sort feature select both games and tools -> Find CS:GO SDK -> Download It
2. `Launch` - Steam App -> Library -> In The sort feature select both games and tools -> Find CS:GO SDK -> Start it -> In the opened window double tap on "Hammer World Editor"


## Common actions
* `Navigate through 3d world(like noclip)` - Go to 3D view quarter part of the editor and press `Z`(to naviagte use mouse and WASD)
* `To edit a texture` - select it(by clicking on it while in selection tool) and then change it's size by draging points in 2D grids
* `To rotate a block` - select a block in 3d view(while in selection tool); click on it once more in one of 2D views and drag the newly appeared points on edges to rotate it around
* `Resize Prop` - select a prop_static; hold SHIFT and use mouse wheel to change size
* [Adding props](https://www.youtube.com/watch?v=3ZgIknUD7-Q)
* [Creating shapes other then blocks](https://www.youtube.com/watch?v=zkeZQ6vY1Gg)
* `Place objects more accuratly` - Go to the bar with editor tools(under window's toolbar) -> Press on grid sign with a minus(3rd button on the bar) to make moving objects more accurate(by increasing amount of cubes on the grid) or grid sign with a plus(4th button on the bar) to make moving objects less accurate


## Modifying World
* [Make hills/rivers...(displacements)](https://www.youtube.com/watch?v=nre432l_OTc&list=PLfwtcDG7LpxF7-uH_P9La76dgCMC_lfk3)
	* To make displacement vertices go down not up(e.g. lower to - to make a river and not a hill) in `Paint Geometry` set `Distance` to a negative value(e.g. -1) instead of a positive one
* [Make water](https://www.youtube.com/watch?v=jdTD7JtuE2w&list=PLfwtcDG7LpxF7-uH_P9La76dgCMC_lfk3&index=7)
	* The water texture(no draw) should be a large block and can't be the minimum thickness or the game won't compile
* [Drawing textures on on another(Blending)](https://www.youtube.com/watch?v=_MgvPz9d8dY)
	* To remove the texture that is painted on another change the `Value` in `Paint Alpha` to a negative one(e.g. -50) and remove the part of the texture where it isn't needed
	

## Special
* `Skybox`
	1. Go to texture `browse` -> In filter type `skybox` -> Scroll to the end and select(double click) the `skybox` texture
	2. Go to Block Tool(or click Shift+E)
	3. In the 2D view create a block that goes all around the map(and check in all of the 2D views to make sure that all parts of the map are inside this block)
	4. Fly out of the skybox in 3D view
	5. Go to Selection Tool(or click Shift+S); In 3D view click on the skybox; Go to the `tools` section in the toolbar; In `tools` press on `Make Hollow`; Type in `32`; Press `OK`
	* [Change the skybox picture from deault dust one](https://www.youtube.com/watch?v=nyJhY3nCN3o)
* `Environment Lighting`
	* [Video 1](https://www.youtube.com/watch?v=YXzwRf8m4n0)
	* [Video 2](https://www.youtube.com/watch?v=ot8Wjvx7b6A)
* [Add wind(so grass and trees move and aren't static)](https://www.youtube.com/watch?v=Z-2Gxv-0fY4)


## Importing
* [Custom Textures](https://www.youtube.com/watch?v=6BBq-bQJCHs)
	* [VTFEdit does not always create a VMT file, guide from valve to do it](https://developer.valvesoftware.com/wiki/Creating_a_Material)
* Custom Props
	* [TopHatWaffle](https://www.youtube.com/watch?v=R3_GFL3CYO8)



## Problem Fixes
* `CSGO Does not start after compilation` - Press `F9`; Press `Expert`; In configuartions select `Fast`; Press `Go`
* `Textures turn into cubes when you fly away` - Press `Tools` in the toolbar; Press `Options`; Go to `3D View`; Increase `Model Render Distance`
* `Textures are black in the compiled map when running in csgo` - Press `F9`; Press `Expert`; In configuartions select `Full Compile - HDR only`; Press `Go`


## Sources
* Documentation
	* [Hammer](https://developer.valvesoftware.com/wiki/Category:Hammer)
	* [Source SDK](https://developer.valvesoftware.com/wiki/SDK_Docs)
* Tutorials
	* [Basics Tutorial 3kliksphilips](https://www.youtube.com/playlist?list=PLfwtcDG7LpxF7-uH_P9La76dgCMC_lfk3)
	* [Full In-Depth Tutorial TopHATTwaffle](https://www.youtube.com/playlist?list=PL-454Fe3dQH1L38FnKkz_O1CqYx6sKaXk)
	* Only Basics 2-video, but Modern Tutorial(Tells about how to create a skybox)
		* [Video 1](https://www.youtube.com/watch?v=cif3zRXaKIs&list=PLPvBUiix5ucKCAimRf_XGoHaogxfOIAAL)
		* [Video 2](https://www.youtube.com/watch?v=p-5qnMXSZvQ&list=PLPvBUiix5ucKCAimRf_XGoHaogxfOIAAL)
* Misc
	* [Website for textures](textures.com)
	* [Tool to convert images into textures so they could be imported into hammer](https://developer.valvesoftware.com/wiki/VTFEdit)
		* Height and Width of image should both be powers of two(e.g. 1024 or 512)
