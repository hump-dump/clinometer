import QtQuick 2.0
// import QtQuick 1.0

Item {
    id: gLandmeter

    property int itemWidth: parent.width
    property int itemHeight: parent.height
//    property int itemWidth: 320
//    property int itemHeight: 240

    property int statusbarHeight: 60
    property int statusbarWidth: itemWidth

    property int compassHeight: 30
    property int compassWidth: itemWidth - 4

    width: itemWidth
    height: itemHeight
    visible: true

    Rectangle {
        width: parent.width
        height: parent.height
        visible: parent.visible
        color: "black"
    }

    LMStatusBar {
        id: gStatusBar
        x:0
        y:0
        width: statusbarWidth
        height: statusbarHeight

        temperature: ServicePlugin.temperature
        pressure: ServicePlugin.pressure
    }

    LMCompass {
        id: gCompass
        x: 2
        y: itemHeight-compassHeight - 2
        width: compassWidth
        height: compassHeight
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            gCompass.compassDirection += 0.5;
            gCompass.compassDirection = gCompass.compassDirection % 360;
        }
    }
}

