sub Init()



    m.top.setFocus(true)
    m.s1Label = m.top.findNode("s1Label")
    m.s1Poster = m.top.findNode("s1Poster")


    rect = m.top.findNode("s1Poster")
    centerx = (1280 - rect.width) / 2
    centery = (720 - rect.height) / 2
    rect.translation = [centerx, centery]

    m.Button = m.top.findNode("Btn1")
    'm.Button.observeField("buttonSelected", "onButton1Press")
    m.Button.setFocus(true)

    m.s1Label.text = "test"

    RunContentTask()

    m.s1Label.text = m.ContentTask.contentURI





    'getContent from getContent.brs
    'Set the font size
    m.s1Label.font.size = 92
    'Set the color to light blue
    m.s1Label.color = "0x72D7EEFF"

end sub

function onKeyEvent(key as string, press as boolean) as boolean 'only for directional

    if press then
        print("Key " + key + " pressed")
    end if
    m.s1Label.text = key
    return false



end function

'function for the button
' function onButton1Press() 'okay button
'     m.s1Label.text = "Button 1 pressed"

' end function