#-------------------------------------------------
#
# Project created by QtCreator 2017-01-04T15:15:07
#
#-------------------------------------------------

QT       -= gui

TARGET = SpeechRecognizerWrapper
TEMPLATE = lib

DEFINES += SPEECHRECOGNIZER_LIBRARY

SOURCES += speechrecognizer.cpp \
    speechrecognizerwrapper.cpp

HEADERS += \
    speechrecognizer.h \
    speechrecognizerwrapper.h

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

INCLUDEPATH += $$PWD/include/pocketsphinx
DEPENDPATH += $$PWD/include/pocketsphinx

INCLUDEPATH += $$PWD/include/sphinxbase
DEPENDPATH += $$PWD/include/sphinxbase

INCLUDEPATH += $$PWD/include/win32
DEPENDPATH += $$PWD/include/win32

contains(QT_ARCH, i386) {
    #message("32-bit")
    win32: LIBS += -L$$PWD/lib/win/x32/ -lsphinxbase
    win32: LIBS += -L$$PWD/lib/win/x32/ -lpocketsphinx

    win32: LIBS += -L$$PWD/lib/win/x32/ -lWinMM
}
else {
    #message("64-bit")
    win32: LIBS += -L$$PWD/lib/win/x64/ -lsphinxbase
    win32: LIBS += -L$$PWD/lib/win/x64/ -lpocketsphinx

    win32: LIBS += -L$$PWD/lib/win/x64/ -lWinMM
}
