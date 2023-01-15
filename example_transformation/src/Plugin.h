#ifndef PLUGIN_H4647E80F3DAD4706B1D5C6D5BA871AA7
#define PLUGIN_H4647E80F3DAD4706B1D5C6D5BA871AA7

#include <QQmlExtensionPlugin>

class Plugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char* uri);
};

#endif // PLUGIN_H4647E80F3DAD4706B1D5C6D5BA871AA7
