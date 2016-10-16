
import QtQuick 2.0
import QtQuick.Controls 1.0

import "./landmeter" as LandMeter

import ServicePlugin 1.0

ApplicationWindow {
    id: id_MainWindow
    width: 640
    height: 480
    visible: true

    LandMeter.LandMeter {
        id: gLandMeter
        visible: true
    }
}
