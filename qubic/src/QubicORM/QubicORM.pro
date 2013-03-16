#-------------------------------------------------
#
# Project created by QtCreator 2012-12-24T02:40:56
#
#-------------------------------------------------

QT       += sql xml xmlpatterns
QT       -= gui

#so at to let project be compiled with C++ 11 at the back
    QMAKE_CXXFLAGS  += -std=c++0x
#so at to let project be compiled with C++ 11 at the back

 # Use Precompiled headers (PCH)
CONFIG   += precompile_header
PRECOMPILED_HEADER  = pch.h

TARGET   = QubicORM
TEMPLATE = lib

DEFINES += QUBICORM_LIBRARY

SOURCES +=

HEADERS += qubicorm.h\
    pch.h

OTHER_FILES += \
    README.md \
    ConnectionModule/README.md \
    ConfigurationModule/README.md