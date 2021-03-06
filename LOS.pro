QT -= gui
QT += opengl

CONFIG += c++11 console
CONFIG -= app_bundle
DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += main.cpp \
    solver.cpp \
    solvergpu.cpp

HEADERS += \
    solver.h \
    solvergpu.h \
    matrix.h

DISTFILES +=

RESOURCES += \
    resources.qrc

QMAKE_EXTRA_TARGETS += before_build makefilehook

makefilehook.target = $(MAKEFILE)
makefilehook.depends = .beforebuild

PRE_TARGETDEPS += .beforebuild

before_build.target = .beforebuild
before_build.depends = FORCE
before_build.commands = chcp 1251
