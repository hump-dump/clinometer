import QtQuick 2.0

Item {
    visible: true

    property double compassDirection: 0
    property variant cardinalDirections: [ "N", "NE", "E", "SE", "S", "SW", "W", "NW" ]

    onCompassDirectionChanged: {
        console.log( calculateCardinal( compassDirection, true )+" <- " + compassDirection + " -> " + calculateCardinal( compassDirection, false ) );
    }

    function calculateCardinal( degree, floor ) {
        var cardinalPos = 0;
        if ( 0 == degree ) {
            if( floor ) {
                cardinalPos = cardinalDirections.length - 1;
            } else {
                cardinalPos = 1;
            }
        } else {
            cardinalPos = floor ?
                        Math.floor( compassDirection / ( 360 / cardinalDirections.length) ) :
                        Math.ceil( compassDirection / ( 360 / cardinalDirections.length) );

            if( cardinalPos >=cardinalDirections.length ) cardinalPos = 0;
        }
        return cardinalDirections[ cardinalPos ];
    }


    Rectangle {
        width: parent.width
        height: parent.height
        color: "#202020"
    }

    LMCompassText {
        id: tDirection
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        borderVisible: true
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#009000"
        textString: Number( compassDirection ).toFixed(1)
    }

    LMCompassText {
        id: tLeft
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: tDirection.left

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#006000"
        textString: calculateCardinal( compassDirection, true )
    }

    LMCompassText {
        id: tRight
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: tDirection.right

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#006000"
        textString: calculateCardinal( compassDirection, false )
    }

}
