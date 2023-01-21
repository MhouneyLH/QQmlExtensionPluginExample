#ifndef CLOCKPLUGIN_H53779D3BFE0445969AEB711393D34345
#define CLOCKPLUGIN_H53779D3BFE0445969AEB711393D34345

#include <QQmlExtensionPlugin>

class ClockPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char* uri);
};

#endif // CLOCKPLUGIN_H53779D3BFE0445969AEB711393D34345
