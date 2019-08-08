%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=int deviceId() const
$method=|int|deviceId|

$prototype=void setDeviceId(int number) (slot)
$slotMethod=|void|setDeviceId|int

%%
%% Q_PROPERTY(bool connected READ isConnected NOTIFY connectedChanged)
%%

$prototype=bool isConnected() const
$method=|bool|isConnected|

%%
%% Q_PROPERTY(QString name READ name NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

%%
%% Q_PROPERTY(double axisLeftX READ axisLeftX NOTIFY axisLeftXChanged)
%%

$prototype=double axisLeftX() const
$method=|double|axisLeftX|

%%
%% Q_PROPERTY(double axisLeftY READ axisLeftY NOTIFY axisLeftYChanged)
%%

$prototype=double axisLeftY() const
$method=|double|axisLeftY|

%%
%% Q_PROPERTY(double axisRightX READ axisRightX NOTIFY axisRightXChanged)
%%

$prototype=double axisRightX() const
$method=|double|axisRightX|

%%
%% Q_PROPERTY(double axisRightY READ axisRightY NOTIFY axisRightYChanged)
%%

$prototype=double axisRightY() const
$method=|double|axisRightY|

%%
%% Q_PROPERTY(bool buttonA READ buttonA NOTIFY buttonAChanged)
%%

$prototype=bool buttonA() const
$method=|bool|buttonA|

%%
%% Q_PROPERTY(bool buttonB READ buttonB NOTIFY buttonBChanged)
%%

$prototype=bool buttonB() const
$method=|bool|buttonB|

%%
%% Q_PROPERTY(bool buttonX READ buttonX NOTIFY buttonXChanged)
%%

$prototype=bool buttonX() const
$method=|bool|buttonX|

%%
%% Q_PROPERTY(bool buttonY READ buttonY NOTIFY buttonYChanged)
%%

$prototype=bool buttonY() const
$method=|bool|buttonY|

%%
%% Q_PROPERTY(bool buttonL1 READ buttonL1 NOTIFY buttonL1Changed)
%%

$prototype=bool buttonL1() const
$method=|bool|buttonL1|

%%
%% Q_PROPERTY(bool buttonR1 READ buttonR1 NOTIFY buttonR1Changed)
%%

$prototype=bool buttonR1() const
$method=|bool|buttonR1|

%%
%% Q_PROPERTY(double buttonL2 READ buttonL2 NOTIFY buttonL2Changed)
%%

$prototype=double buttonL2() const
$method=|double|buttonL2|

%%
%% Q_PROPERTY(double buttonR2 READ buttonR2 NOTIFY buttonR2Changed)
%%

$prototype=double buttonR2() const
$method=|double|buttonR2|

%%
%% Q_PROPERTY(bool buttonSelect READ buttonSelect NOTIFY buttonSelectChanged)
%%

$prototype=bool buttonSelect() const
$method=|bool|buttonSelect|

%%
%% Q_PROPERTY(bool buttonStart READ buttonStart NOTIFY buttonStartChanged)
%%

$prototype=bool buttonStart() const
$method=|bool|buttonStart|

%%
%% Q_PROPERTY(bool buttonL3 READ buttonL3 NOTIFY buttonL3Changed)
%%

$prototype=bool buttonL3() const
$method=|bool|buttonL3|

%%
%% Q_PROPERTY(bool buttonR3 READ buttonR3 NOTIFY buttonR3Changed)
%%

$prototype=bool buttonR3() const
$method=|bool|buttonR3|

%%
%% Q_PROPERTY(bool buttonUp READ buttonUp NOTIFY buttonUpChanged)
%%

$prototype=bool buttonUp() const
$method=|bool|buttonUp|

%%
%% Q_PROPERTY(bool buttonDown READ buttonDown NOTIFY buttonDownChanged)
%%

$prototype=bool buttonDown() const
$method=|bool|buttonDown|

%%
%% Q_PROPERTY(bool buttonLeft READ buttonLeft NOTIFY buttonLeftChanged)
%%

$prototype=bool buttonLeft() const
$method=|bool|buttonLeft|

%%
%% Q_PROPERTY(bool buttonRight READ buttonRight NOTIFY buttonRightChanged)
%%

$prototype=bool buttonRight() const
$method=|bool|buttonRight|

%%
%% Q_PROPERTY(bool buttonCenter READ buttonCenter NOTIFY buttonCenterChanged)
%%

$prototype=bool buttonCenter() const
$method=|bool|buttonCenter|

%%
%% Q_PROPERTY(bool buttonGuide READ buttonGuide NOTIFY buttonGuideChanged)
%%

$prototype=bool buttonGuide() const
$method=|bool|buttonGuide|

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
