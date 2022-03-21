
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


    m.top.contentAURI = json.screens.a.logo
    m.top.contentATitle = json.screens.a.title


    m.top.contentBURI = json.screens.b.logo
    m.top.contentBTitle = json.screens.b.title



    m.top.data = json.data 'needs to be roArray to be able to sort()

    'interface not mutable so we need to create a new array
    test = m.top.data
    test.sort()

    ' print test
    m.top.data = test

    print m.top.data

    'print aLogo + " " + aTitle
    'print bLogo + " " + bTitle


    print json.screens;


end sub
