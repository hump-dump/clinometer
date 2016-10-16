#-------------------------------------------------
#
# Project created by QtCreator 2016-09-24T12:33:11
#
#-------------------------------------------------

lessThan(QT_MAJOR_VERSION, 5 ) {
   QT += core gui declarative
} else {
   QT += core gui qml quick widgets
}

CONFIG += qt quickplugin c++11

QMAKE_CXXFLAGS += -std=c++11

TARGET = clinometer
TEMPLATE = app


SOURCES += \
    ServicePlugin/serviceplugin.cpp \
    main.cpp

HEADERS += \
ServicePlugin/serviceplugin.h

DISTFILES += \
    qml/main4.qml \
    qml/main5.qml \
    qml/landmeter/LandMeter.qml \
    qml/landmeter/qmldir \
    qml/landmeter/LMCompass.qml \
    qml/landmeter/LMCompassText.qml \
    qml/landmeter/LMStatusBar.qml \
    qml/landmeter/LMLabel.qml \
    ServicePlugin/qmldir

RESOURCES +=
