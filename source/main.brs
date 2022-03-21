

sub Main()
  print "in showChannelSGScreen"
  'Indicate this is a Roku SceneGraph application'
  screen = CreateObject("roSGScreen")
  m.port = CreateObject("roMessagePort")
  screen.setMessagePort(m.port)
  scene = screen.CreateScene("MainScene")

  screen.show()



  while(true)
    msg = wait(0, m.port)
    msgType = type(msg)
    if msgType = "roSGScreenEvent"
      if msg.isScreenClosed() then return
    end if
  end while
end sub


' function getPoster() as object

'   'make poster node and add to scene'
'   poster = CreateObject("roSGImage")


'   poster = m.s1Poster
'   print "get poster"


' end function


' sub Main()
'   showChannelSGScreen()
' end sub

' sub showChannelSGScreen()
'   print "in showChannelSGScreen"
'   screen = CreateObject("roSGScreen")
'   m.port = CreateObject("roMessagePort")
'   screen.setMessagePort(m.port)
'   scene = screen.CreateScene("posterscene")
'   screen.show()

'   while(true)
'     msg = wait(0, m.port)
'     msgType = type(msg)

'     if msgType = "roSGScreenEvent"
'       if msg.isScreenClosed() then return
'     end if
'   end while

' end sub
