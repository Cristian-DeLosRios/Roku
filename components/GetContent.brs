


'sub RunContentTask -> create task > init > run > finish'

' sub RunContentTask()
'     m.contentTask = CreateObject("roSGNode", "ContentTask")
'     m.contentTask.init()
'     m.contentTask.run()
'     m.contentTask.finish()
'     end



' sub Init()
'     ' set the name of the function in the Task node component to be executed when the state field changes to RUN
'     ' in our case this method executed after the following cmd: m.contentTask.control = "run"(see Init method in MainScene)
'     m.top.functionName = "GetContent"
' end sub


sub Init()
    url = CreateObject("roUrlTransfer")
    url.SetUrl("https://api.jsonbin.io/b/5e7e4017862c46101abf301f")
    url.SetCertificatesFile("common:/certs/ca-bundle.crt")
    url.AddHeader("X-Roku-Reserved-Dev-Id", "")
    'key: secret-key
    'value: $2b$10$uFTmoV/NUudBt3K/t8h9H.c08SIwq29I9RiZskcr5k.tU8lvpwfJ2
    url.AddHeader("Content-Type", "application/json")
    url.AddHeader("secret-key", "$2b$10$uFTmoV/NUudBt3K/t8h9H.c08SIwq29I9RiZskcr5k.tU8lvpwfJ2")
    url.InitClientCertificates()


    feed = url.GetToString()
    json = ParseJson(feed)

    aLogo = json.screens.a.logo
    aTitle = json.screens.a.title

    bLogo = json.screens.b.logo
    bTitle = json.screens.b.title

    data = json.data



    'm.top.poster = aLogo




    m.top.contentURI = aLogo

    print aLogo + " " + aTitle
    print bLogo + " " + bTitle



    'json.GetObject("logo")

    print json.screens;


end sub





'sub GetContent()

'print "GetContent"



' url = CreateObject("roUrlTransfer")
' url.SetUrl("https://api.jsonbin.io/b/5e7e4017862c46101abf301f")
' url.SetCertificatesFile("common:/certs/ca-bundle.crt")
' url.AddHeader("X-Roku-Reserved-Dev-Id", "")
' 'key: secret-key
' 'value: $2b$10$uFTmoV/NUudBt3K/t8h9H.c08SIwq29I9RiZskcr5k.tU8lvpwfJ2
' url.AddHeader("Content-Type", "application/json")
' url.AddHeader("secret-key", "$2b$10$uFTmoV/NUudBt3K/t8h9H.c08SIwq29I9RiZskcr5k.tU8lvpwfJ2")

' url.InitClientCertificates()



' feed = url.GetToString()

' json = ParseJson(feed)
' print json;

' return json



'this is for a sample, usually feed is retrieved from url using roUrlTransfer
'feed = ReadAsciiFile("pkg:/feed/feed.json")
'Sleep(2000) ' to emulate API call
'print feed
'json = ParseJson(feed)
'rootNodeArray = ParseJsonToNodeArray(json)
'm.top.content.Update(rootNodeArray)
'end sub