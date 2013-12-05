TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    Robocpp.cpp \
    DRCHubo.cpp \
    hubo-read-trajectory-as-func.cpp \
    Huboplus.cpp


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../useful_stuff/armadillo-3.900.7/build/release/ -larmadillo
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../useful_stuff/armadillo-3.900.7/build/debug/ -larmadillo
else:unix: LIBS += -L$$PWD/../../../useful_stuff/armadillo-3.900.7/build/ -larmadillo

INCLUDEPATH += $$PWD/../../../useful_stuff/armadillo-3.900.7/build
DEPENDPATH += $$PWD/../../../useful_stuff/armadillo-3.900.7/build


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../usr/lib/release/ -lach
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../usr/lib/debug/ -lach
else:unix: LIBS += -L$$PWD/../../../../../usr/lib/ -lach -lrt

INCLUDEPATH += $$PWD/../../../../../usr/include
DEPENDPATH += $$PWD/../../../../../usr/include

HEADERS += \
    hubo-read-trajectory-as-func.h \
    Robocpp.h \
    hubo-ref-filter.h \
    Huboplus.h \
    DRCHubo.h \
    gnuplot-iostream.h

unix:!macx: LIBS += -L$$PWD/../../../../../usr/lib/ -lboost_iostreams

INCLUDEPATH += $$PWD/../../../../../usr/include
DEPENDPATH += $$PWD/../../../../../usr/include

unix:!macx: LIBS += -L$$PWD/../../../../../usr/lib/ -lboost_system

INCLUDEPATH += $$PWD/../../../../../usr/include
DEPENDPATH += $$PWD/../../../../../usr/include

unix:!macx: PRE_TARGETDEPS += $$PWD/../../../../../usr/lib/libboost_system.a

unix:!macx: LIBS += -L$$PWD/../../../../../usr/lib/ -lboost_filesystem

INCLUDEPATH += $$PWD/../../../../../usr/include
DEPENDPATH += $$PWD/../../../../../usr/include

unix:!macx: PRE_TARGETDEPS += $$PWD/../../../../../usr/lib/libboost_filesystem.a
