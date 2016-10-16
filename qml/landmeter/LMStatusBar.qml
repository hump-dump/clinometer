// import QtQuick 1.0
import QtQuick 2.0

Item {
    property double temperature: 0.0
    property double pressure: 0.0

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#202020"
//        rotation:  90
//        gradient: Gradient {
//            GradientStop { position: 0.0; color: "black" }
//            GradientStop { position: 0.5; color: "#303030" }
//            GradientStop { position: 1.0; color: "black" }
//        }
    }

    LMLabel {
        id: lTemp
        anchors.verticalCenter:  parent.verticalCenter
        width: parent.width / 2
        fontSize: parent.height - 15
        leftText: "Temp:"
        rightText: Number( temperature ).toFixed(1)
    }
    LMLabel {
        id: lPressure
        anchors.verticalCenter:  parent.verticalCenter
        width: parent.width / 2
        anchors.left: lTemp.right
        fontSize: parent.height - 15
        leftText: "Pres:"
        rightText: Number( pressure ).toFixed()
    }
}
