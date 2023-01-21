#ifndef CLOCKPLUGIN_H
#define CLOCKPLUGIN_H

#include <QQmlExtensionPlugin>

class ClockPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char* uri);
};

#endif // CLOCKPLUGIN_H
