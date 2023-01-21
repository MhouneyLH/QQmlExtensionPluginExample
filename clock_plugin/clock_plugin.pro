TEMPLATE = lib
CONFIG += qt plugin qmltypes
QT += qml

QML_IMPORT_NAME = ClockPlugin
QML_IMPORT_MAJOR_VERSION = 1

DESTDIR = imports/$$QML_IMPORT_NAME
TARGET  = clockplugin

SOURCES += \
    src/ClockPlugin.cpp

HEADERS += \
    src/ClockPlugin.h

RESOURCES += qml/qml.qrc

# copying dependecies of the plugin in the output-folder
PLUGIN_DEPENDENCY_DIRECTORY = $$PWD/qml/Clock
PluginDependencies.commands = $(COPY_DIR) $$shell_path($$PLUGIN_DEPENDENCY_DIRECTORY) $$shell_path($$DESTDIR)

first.depends = $(first) PluginDependencies
export(first.depends)
export(PluginDependencies)
QMAKE_EXTRA_TARGETS += first PluginDependencies