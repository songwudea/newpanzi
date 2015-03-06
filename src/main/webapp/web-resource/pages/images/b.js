var BDBridge = window.BDBridge || (function(){

    var self;
    var CONFIG = {
        BD_BRIDGE_OPEN : 1,
        BD_BRIDGE_ROOT : "http://qiao.baidu.com/v3/"
    };

    document.cookie = 'VERSION=2,0,0,0';
    
    if ((CONFIG.BD_BRIDGE_OPEN == 1) && (typeof window["BD_BRIDGE_LOADED"] == "undefined")) {
        window["BD_BRIDGE_LOADED"] = 1;
        var script = document.createElement("script");
        script.type="text/javascript";
        script.charset = "UTF-8";
        script.src = CONFIG.BD_BRIDGE_ROOT + "asset/js/bw.js?v=20141103";
        document.getElementsByTagName("head")[0].appendChild(script);
    }
    
    
    return self = {
    
        BD_BRIDGE_OPEN : CONFIG.BD_BRIDGE_OPEN,
        BD_BRIDGE_ROOT : CONFIG.BD_BRIDGE_ROOT,
        BD_BRIDGE_RCV_ROOT : "http://r.qiao.baidu.com/",
        BD_BRIDGE_DATA : {mainid : "120002296", SITE_ID : "7c94e18e71c6dec9cb24e0733f1bb83b", siteid : "656516", userName: 'szpanzi'},
        OPEN_MODULAR : 11111,
                BD_BRIDGE_SPECIAL :  [] ,
        
                BD_BRIDGE_STYLE_ITEM : 
        [        {
            pageid : "0",
            
           
                        BD_BRIDGE_GROUP:  [ '0' - 0 , '1002' - 0 , '1003' - 0 , '1005' - 0 , '1010' - 0 , '1008' - 0 , '1011' - 0 ] ,
            
            BD_BRIDGE_ICON_CONFIG : {
                iconlvtype : "1" - 0,
                background : {
                    color : "",
                    url   : "http://qiao.baidu.com/style/296/120002296/2/iconbg.jpg",
                    bgcolor : "#F0D9BA"
                },
                head : {
                    url    : "http://qiao.baidu.com/v3/res/iconhead/12.png",
                    width  : "110" - 0,
                    height : "90" - 0
                },
                button : {
                    color : "",
                    url   : "http://qiao.baidu.com/v3/res/iconbtn/03.png",
                    text  : "#c614ad"
                },
                flow     : "1" - 0,
                position : "2" - 0,
                special : "0"
            },
            BD_BRIDGE_INVITE_CONFIG : {
                on : "0" - 0,
                show : {
                    pos : "0" - 0,
                    width : "402" - 0,
                    height : "222" - 0,
                    font : "宋体",
                    fontsize : "12",
                    fontcolor : "#000000",
                    type : "0" - 0
                },
                background : {
                    color : "",
                    url   : "http://qiao.baidu.com/style/296/120002296/2/invitebg.jpg"
                },
                head : {
                    show : "0" - 0,
                    size : "1" - 0,
                    url  : "http://qiao.baidu.com/v3/res/invitehead/01_big.jpg"
                },
                text   : "",
                button : "#c31e22",
                mode   : "0" - 0,
                special : "0" - 0
            },
            BD_BRIDGE_INVITE : {
                inviteauto : "1" - 0,
                invitemanual : "1" - 0,
                invitetype   : "1" - 0,
                inviterepeat : "0" - 0,
                invitetime   : "10" - 0,
                invitedisaptype : "0" - 0,
                invitedisaptime : "20" - 0
            },
            BD_BRIDGE_WEBIM : {
                webimopentype : "0" - 0,
                webimbgcolor  : "#d5d5d5",
                floatposition : "0" - 0,
                floatChatName : "2" - 0,
                floatCustomname : ""
            },
                        BD_BRIDGE_PIGEON_SOUL : {
                disableMess     : "0" - 0,
                messType        : 1,
                messFloatType   : "0" - 0,
                language        : "0" - 0,
                position        : "0" - 0,
                backgroundColor : "#8a222d",
                backgroundUrl       : "", 
                messItemName    : "0",
                messItemPhone   : "1",
                messItemAddress : "2",
                messItemEmail   : "2",
                extraMessItems  :  [ { key : "QQ/SEM", necessity : 0 }, { key : "拍摄服务", subItems : [ "婚纱照", "写真", "儿童", "全家福" ], necessity : 0 } ] 
            }
        }        ]
        
    }
   


})();
