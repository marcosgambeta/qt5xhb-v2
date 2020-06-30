%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGamepad
$added=5,9,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QGamepad(int deviceId = 0, QObject *parent = nullptr)
$constructor=|new|int=0,QObject *=nullptr

$prototype=~QGamepad()
$deleteMethod

%%
%% Q_PROPERTY(int deviceId READ deviceId WRITE setDeviceId NOTIFY deviceIdChanged)
%%

$prototypeV2=int deviceId() const

$prototypeV2=void setDeviceId( int number ) (slot)

%%
%% Q_PROPERTY(bool connected READ isConnected NOTIFY connectedChanged)
%%

$prototypeV2=bool isConnected() const

%%
%% Q_PROPERTY(QString name READ name NOTIFY nameChanged)
%%

$prototypeV2=QString name() const

%%
%% Q_PROPERTY(double axisLeftX READ axisLeftX NOTIFY axisLeftXChanged)
%%

$prototypeV2=double axisLeftX() const

%%
%% Q_PROPERTY(double axisLeftY READ axisLeftY NOTIFY axisLeftYChanged)
%%

$prototypeV2=double axisLeftY() const

%%
%% Q_PROPERTY(double axisRightX READ axisRightX NOTIFY axisRightXChanged)
%%

$prototypeV2=double axisRightX() const

%%
%% Q_PROPERTY(double axisRightY READ axisRightY NOTIFY axisRightYChanged)
%%

$prototypeV2=double axisRightY() const

%%
%% Q_PROPERTY(bool buttonA READ buttonA NOTIFY buttonAChanged)
%%

$prototypeV2=bool buttonA() const

%%
%% Q_PROPERTY(bool buttonB READ buttonB NOTIFY buttonBChanged)
%%

$prototypeV2=bool buttonB() const

%%
%% Q_PROPERTY(bool buttonX READ buttonX NOTIFY buttonXChanged)
%%

$prototypeV2=bool buttonX() const

%%
%% Q_PROPERTY(bool buttonY READ buttonY NOTIFY buttonYChanged)
%%

$prototypeV2=bool buttonY() const

%%
%% Q_PROPERTY(bool buttonL1 READ buttonL1 NOTIFY buttonL1Changed)
%%

$prototypeV2=bool buttonL1() const

%%
%% Q_PROPERTY(bool buttonR1 READ buttonR1 NOTIFY buttonR1Changed)
%%

$prototypeV2=bool buttonR1() const

%%
%% Q_PROPERTY(double buttonL2 READ buttonL2 NOTIFY buttonL2Changed)
%%

$prototypeV2=double buttonL2() const

%%
%% Q_PROPERTY(double buttonR2 READ buttonR2 NOTIFY buttonR2Changed)
%%

$prototypeV2=double buttonR2() const

%%
%% Q_PROPERTY(bool buttonSelect READ buttonSelect NOTIFY buttonSelectChanged)
%%

$prototypeV2=bool buttonSelect() const

%%
%% Q_PROPERTY(bool buttonStart READ buttonStart NOTIFY buttonStartChanged)
%%

$prototypeV2=bool buttonStart() const

%%
%% Q_PROPERTY(bool buttonL3 READ buttonL3 NOTIFY buttonL3Changed)
%%

$prototypeV2=bool buttonL3() const

%%
%% Q_PROPERTY(bool buttonR3 READ buttonR3 NOTIFY buttonR3Changed)
%%

$prototypeV2=bool buttonR3() const

%%
%% Q_PROPERTY(bool buttonUp READ buttonUp NOTIFY buttonUpChanged)
%%

$prototypeV2=bool buttonUp() const

%%
%% Q_PROPERTY(bool buttonDown READ buttonDown NOTIFY buttonDownChanged)
%%

$prototypeV2=bool buttonDown() const

%%
%% Q_PROPERTY(bool buttonLeft READ buttonLeft NOTIFY buttonLeftChanged)
%%

$prototypeV2=bool buttonLeft() const

%%
%% Q_PROPERTY(bool buttonRight READ buttonRight NOTIFY buttonRightChanged)
%%

$prototypeV2=bool buttonRight() const

%%
%% Q_PROPERTY(bool buttonCenter READ buttonCenter NOTIFY buttonCenterChanged)
%%

$prototypeV2=bool buttonCenter() const

%%
%% Q_PROPERTY(bool buttonGuide READ buttonGuide NOTIFY buttonGuideChanged)
%%

$prototypeV2=bool buttonGuide() const

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void axisLeftXChanged( double value )
$signalMethod=|void|axisLeftXChanged|double

$prototype=void axisLeftYChanged( double value )
$signalMethod=|void|axisLeftYChanged|double

$prototype=void axisRightXChanged( double value )
$signalMethod=|void|axisRightXChanged|double

$prototype=void axisRightYChanged( double value )
$signalMethod=|void|axisRightYChanged|double

$prototype=void buttonAChanged( bool value )
$signalMethod=|void|buttonAChanged|bool

$prototype=void buttonBChanged( bool value )
$signalMethod=|void|buttonBChanged|bool

$prototype=void buttonCenterChanged( bool value )
$signalMethod=|void|buttonCenterChanged|bool

$prototype=void buttonDownChanged( bool value )
$signalMethod=|void|buttonDownChanged|bool

$prototype=void buttonGuideChanged( bool value )
$signalMethod=|void|buttonGuideChanged|bool

$prototype=void buttonL1Changed( bool value )
$signalMethod=|void|buttonL1Changed|bool

$prototype=void buttonL2Changed( double value )
$signalMethod=|void|buttonL2Changed|double

$prototype=void buttonL3Changed( bool value )
$signalMethod=|void|buttonL3Changed|bool

$prototype=void buttonLeftChanged( bool value )
$signalMethod=|void|buttonLeftChanged|bool

$prototype=void buttonR1Changed( bool value )
$signalMethod=|void|buttonR1Changed|bool

$prototype=void buttonR2Changed( double value )
$signalMethod=|void|buttonR2Changed|double

$prototype=void buttonR3Changed( bool value )
$signalMethod=|void|buttonR3Changed|bool

$prototype=void buttonRightChanged( bool value )
$signalMethod=|void|buttonRightChanged|bool

$prototype=void buttonSelectChanged( bool value )
$signalMethod=|void|buttonSelectChanged|bool

$prototype=void buttonStartChanged( bool value )
$signalMethod=|void|buttonStartChanged|bool

$prototype=void buttonUpChanged( bool value )
$signalMethod=|void|buttonUpChanged|bool

$prototype=void buttonXChanged( bool value )
$signalMethod=|void|buttonXChanged|bool

$prototype=void buttonYChanged( bool value )
$signalMethod=|void|buttonYChanged|bool

$prototype=void connectedChanged( bool value )
$signalMethod=|void|connectedChanged|bool

$prototype=void deviceIdChanged( int value )
$signalMethod=|void|deviceIdChanged|int

$prototype=void nameChanged( QString value )
$signalMethod=|void|nameChanged|QString

#pragma ENDDUMP
