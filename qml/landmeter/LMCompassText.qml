// import QtQuick 1.0
import QtQuick 2.0

Item {
    property string textColor: "white"
    property string textString: ""
    property int  fontSize: 20
    property bool borderVisible: false
    Rectangle {
        y: 3
        visible: borderVisible
        width: parent.width
        height: parent.height - 6
        color: "black"
        border.width: 3
        border.color: "dark green"
        radius: 6
    }

    Text {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: parent.visible
        font.pixelSize: fontSize
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        text: textString
        color: textColor
    }
}
