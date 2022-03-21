sub Init()

    m.top.setFocus(true)
    m.s1Label = m.top.findNode("s1Label")
    m.s1Poster = m.top.findNode("s1Poster")
    m.s1Data = m.top.findNode("s1Data")
    rect = m.top.findNode("s1Poster")
    centerx = (1280 - rect.width) / 2
    centery = (720 - rect.height) / 2
    rect.translation = [centerx, centery]

    m.button = m.top.findNode("btn1")
    'm.Button.observeField("buttonSelected", "onButton1Press")


    RunContentTask()


    m.s1Poster.uri = m.contentTask.contentAURI
    m.s1Label.text = m.contentTask.contentATitle

    dataTextA = ""
    size = (m.contentTask.data).count()

    for i = size - 5 to size - 1
        'convert the int to string
        dataTextA = dataTextA + m.contentTask.data[i].ToStr() + " "
    end for

    m.s1Data.text = dataTextA

end sub


function onKeyEvent(key as string, press as boolean) as boolean

    if key = "OK" then
        print "Enter pressed"

        'need to find better way to display the content to allow for better flow. Newscreen/content screen

        AlternateScreen()
        'render the second scene
        ' m.s1Poster.visible = false

        ' m.s2Poster = m.top.findNode("s2Poster")
        ' m.s2Poster.URI = m.contentTask.contentBURI

        ' m.s2Label = m.top.findNode("s2Label")
        ' m.s2Label.text = m.contentTask.contentBTitle

        ' m.s1Label.visible = false
        ' m.Button.visible = false
        ' m.secondScene.visible = true

        return true

    end if

end function


