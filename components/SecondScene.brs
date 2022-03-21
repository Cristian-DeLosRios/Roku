
sub Init()



    m.s2Label = m.top.findNode("s2Label")
    m.s2Poster = m.top.findNode("s2Poster")

    rect = m.top.findNode("s2Poster")
    centerx = (1280 - rect.width) / 2
    centery = (720 - rect.height) / 2
    rect.translation = [centerx, centery]

    m.Button2 = m.top.findNode("Btn2")
    'm.Button.observeField("buttonSelected", "onButton1Press")



    'Set the font size
    m.s2Label.font.size = 92
    'Set the color to light blue
    m.s2Label.color = "0x72D7EEFF"


end sub
