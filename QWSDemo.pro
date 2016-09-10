TEMPLATE = app

QT += qml quick network location positioning
QT += 3dcore 3drenderer 3dinput 3dquick

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += *.qml

DISTFILES += \
    MapPage.qml \
    SegmentedButton.qml \
    3DPage.qml \
    BasePage.qml

HEADERS += \
    appmanager.h \

OBJECTIVE_SOURCES += \
    appmanager.mm

ios {
    QT += gui-private
    QMAKE_IOS_DEPLOYMENT_TARGET = 8.4

    HEADERS += \
        mytextview.h

    OBJECTIVE_SOURCES += \
        mytextview.mm
}

QMAKE_INFO_PLIST = Info.plist
