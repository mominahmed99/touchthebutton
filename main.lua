-----------------------------------------------------------------------------------------
--
-- created by momin ahmed 
-- created on 16th Feb 2018
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0.5, 1, 0.5 )
local myText = display.newText( "ENTER NAME", 1024, 500, native.systemFont, 150 )
myText:setFillColor( 0.5, 0.5, 1 )
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )