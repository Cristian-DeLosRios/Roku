sub RunContentTask()

    m.contentTask = CreateObject("roSGNode", "ContentTask")
    ' m.contentTask.ObserveField("contentURI", "cbFunc")
    print "ContentTask created"

end sub


sub AlternateScreen() 'should have been its own task to separate main thread from screen logic

    if m.secondScene = invalid then
        m.secondScene = CreateObject("roSGNode", "SecondScene")
        m.top.AppendChild(m.secondScene)
        'm.secondScene.ObserveField("contentURI", "cbFunc")

        m.s1Poster.visible = false

        m.s2Poster = m.top.findNode("s2Poster")
        m.s2Label = m.top.findNode("s2Label")
        m.s2Data = m.top.findNode("s2Data")

        m.button.visible = false
        m.s1Label.visible = false

        m.s2Label.text = m.contentTask.contentBTitle
        m.s2Poster.URI = m.contentTask.contentBURI

        dataTextB = ""
        for i = 0 to 4
            'convert the int to string
            dataTextB = dataTextB + m.contentTask.data[i].ToStr() + " "
        end for

        m.s1Data.text = dataTextB

        m.s2Poster.visible = true

        m.secondScene.visible = true
        m.secondScene.SetFocus(true)
        print "SecondScene created"
    end if




    ' else if m.secondScene.visible = true then

    '     'm.secondScene.SetFocus(false)
    '     m.secondScene.visible = false
    '     m.top.RemoveChild(m.secondScene)
    '     m.secondScene = invalid

    '     m.s1Poster.visible = true
    '     m.s1Label.visible = true
    '     m.button.visible = true




    '     m.s1Poster.visible = false
    '     m.s1Label.visible = false
    '     m.button.visible = false
    '     m.secondScene.visible = true
    '     m.secondScene.SetFocus(true)

    ' end if


end sub
