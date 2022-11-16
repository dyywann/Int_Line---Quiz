import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        text: "Clear"
        onClicked: {
            myCanvas.clear()
        }
    }

    property int xpos
    property int ypos

    Canvas{
        id: myCanvas
        anchors.top: buttom
        width: 640
        height: 480

        function clear() {
            var ctx = getContext("2d");
            ctx.reset();
            myCanvas.requestPaint();
        }

        onPaint: {
            var ctx = getContext('2d')
            ctx.fillStyle = "red"
            ctx.fillRect(xpos-1, ypos-1, 2, 2)
        }

        MouseArea{
            anchors.fill: parent
                        onPressed: {
                            xpos = mouseX
                            ypos = mouseY
                            myCanvas.requestPaint()
                        }
                        onMouseXChanged: {
                            xpos = mouseX
                            ypos = mouseY
                            myCanvas.requestPaint()
                        }
                        onMouseYChanged: {
                            xpos = mouseX
                            ypos = mouseY
                            myCanvas.requestPaint()
                        }
        }
    }
}
