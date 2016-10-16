#include <QtGlobal>

#if QT_VERSION < 0x050000
   #include <QtGui/QApplication>
   #include <QtDeclarative>
   #include <QDeclarativeEngine>
   #include <QDeclarativeComponent>
   #include <QDeclarativeView>
#else
   #include <QQmlEngine>
   #include <QApplication>
   #include <QtQml>
   #include <QQmlEngine>
   #include <QQmlApplicationEngine>
   #include <QQmlContext>
#endif

#include "ServicePlugin/serviceplugin.h"

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   qmlRegisterType<ServicePlugin>("ServicePlugin", 1, 0, "ServicePlugin");

#if QT_VERSION < 0x050000
   QDeclarativeView view;
   view.engine()->rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );
   view.setSource( QUrl::fromLocalFile("qml/main4.qml") );

   view.show();
#else
   QQmlApplicationEngine engine;
   engine.rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );
   engine.load( QUrl( "qml/main5.qml" ) );
#endif

   return a.exec();
}
