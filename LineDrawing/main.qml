import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int xpos
    property int ypos

    Row{
        Button{

        }
    }

    Canvas{
        id: myCanvas
        anchors.fill: parent

        function clear_canvas() {
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
