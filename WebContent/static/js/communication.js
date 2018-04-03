
/**
 @author 上官炳强
 @since 2018-04-03 / 10:53:10
 @version
 @description
 */
var websocket;

function ws() {
    websocket = new WebSocket("ws://localhost:8080/test/communication/" + currentUser);

    //连接发生错误的回调方法
    websocket.onerror = function () {
        alert("error");
    };

    //连接成功建立的回调方法
    websocket.onopen = function (event) {
        alert("open");
    };

    //接收到消息的回调方法
    websocket.onmessage = function () {
        alert(event.data);
    };

    //连接关闭的回调方法
    websocket.onclose = function () {
        alert("close");
    };
}

ws();