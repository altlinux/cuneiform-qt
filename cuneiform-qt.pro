######################################################################
# Common settings

TEMPLATE = app
TARGET = cuneiform-qt
VERSION = 0.1.4

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
}

SOURCES += backend.cpp \
           main.cpp \
           mainWindow.cpp \
           settings.cpp

HEADERS += backend.h \
           mainWindow.h \
           settings.h

QMAKE_STRIP = echo

CONFIG += build_all \
          exceptions \
          qt \
          warn_on

RESOURCES = mainWindow.qrc

FORMS += mainWindow.ui \
         settings.ui

PREFIX = /usr

DATADIR = $$PREFIX/share/apps/cuneiform-qt/
TRANSLATIONS_DIR = $$DATADIR
isEmpty(NO_TRANSLATIONS):include("translations/translations.pri")

DEFINES += DATADIR=\\\"$$PREFIX/share/apps/cuneiform-qt/\\\" \
           VERSION=\\\"$$VERSION\\\"

target.path = $$PREFIX/bin/

icon.files = icons/cuneiform-qt.png
icon.path = $$PREFIX/share/pixmaps/

desktop.files = cuneiform-qt.desktop
desktop.path = $$PREFIX/share/applications/

INSTALLS += target \
            icon \
            desktop
