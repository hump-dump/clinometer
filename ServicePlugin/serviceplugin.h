#ifndef SERVICEPLUGIN_H
#define SERVICEPLUGIN_H

#include <QObject>

class ServicePlugin : public QObject
{
    Q_OBJECT
    Q_DISABLE_COPY(ServicePlugin)

    Q_PROPERTY( double temperature READ temperature NOTIFY temperatureChanged )
    Q_PROPERTY( double pressure READ pressure NOTIFY pressureChanged )

    static ServicePlugin *pInstance;

    double mTemperature = 0;
    double mPressure = 0;
public:
    static ServicePlugin * instance();

    ServicePlugin(QObject *parent = 0);
    ~ServicePlugin();

    double temperature() { return mTemperature; }
    double pressure() { return mPressure; }
signals:
    void temperatureChanged();
    void pressureChanged();
private:
    void timerEvent( QTimerEvent * );
};

#endif // SERVICEPLUGIN_H
