/// @description Initialize Chatterbox and set varubles
// You can write your code in this editor				
chatterbox=ChatterboxCreate()						//create a chatterbox
ChatterboxJump(chatterbox,"Grove")					
chatterbox_update()									//Get current node and node text

option_index = 0									//Initialize index

size = [0.7,0.75]									//Chariture sprite scale [large,small]
color = [c_ltgray, c_white]							//Chariture sprite blend [dark,bright]