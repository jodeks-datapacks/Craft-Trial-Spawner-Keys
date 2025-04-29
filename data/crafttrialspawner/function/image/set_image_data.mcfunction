#> crafttrialspawner:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage crafttrialspawner:image image_data  
# @writes storage crafttrialspawner:image width  
# @writes storage crafttrialspawner:image height  
# @writes storage crafttrialspawner:image background_color  
# @writes storage crafttrialspawner:image description  
# @writes storage crafttrialspawner:image pixel_character.blank  
# @writes storage crafttrialspawner:image pixel_character.chat  
# @writes storage crafttrialspawner:image pixel_character.lore

data remove storage crafttrialspawner:image image_data
data remove storage crafttrialspawner:image width
data remove storage crafttrialspawner:image height
data remove storage crafttrialspawner:image background_color
data remove storage crafttrialspawner:image description

$data modify storage crafttrialspawner:image image_data set value $(image_data)
$data modify storage crafttrialspawner:image width set value $(width)
$data modify storage crafttrialspawner:image height set value $(height)
$data modify storage crafttrialspawner:image background_color set value "$(background_color)"
$data modify storage crafttrialspawner:image description set value $(description)

data modify storage crafttrialspawner:image pixel_character.blank set value "　"
data modify storage crafttrialspawner:image pixel_character.pixel set value "▌▌"
data modify storage crafttrialspawner:image pixel_character.line_break set value '\n'

function crafttrialspawner:image/process/generate
