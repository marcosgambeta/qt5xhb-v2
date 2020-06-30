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

$prototype=QGamepadManager() [private]

$prototype=~QGamepadManager() [private]
%% $deleteMethod

%%
%% Q_PROPERTY(QList<int> connectedGamepads READ connectedGamepads NOTIFY connectedGamepadsChanged)
%%

$prototypeV2=const QList<int> connectedGamepads() const
%% TODO: const QList<int>

%%
%%
%%

$prototypeV2=static QGamepadManager * instance()

$prototypeV2=bool isGamepadConnected( int deviceId ) const

$prototypeV2=bool isConfigurationNeeded( int deviceId ) const (slot)

$prototypeV2=bool configureButton( int deviceId, QGamepadManager::GamepadButton button ) (slot)

$prototypeV2=bool configureAxis( int deviceId, QGamepadManager::GamepadAxis axis ) (slot)

$prototypeV2=bool setCancelConfigureButton( int deviceId, QGamepadManager::GamepadButton button ) (slot)

$prototypeV2=void resetConfiguration( int deviceId ) (slot)

$prototypeV2=void setSettingsFile( const QString & file ) (slot)

%%
%% SIGNALS
%%

$prototype=void connectedGamepadsChanged()
$signalMethod=|void|connectedGamepadsChanged|

$prototype=void gamepadConnected( int deviceId )
$signalMethod=|void|gamepadConnected|int

$prototype=void gamepadDisconnected( int deviceId )
$signalMethod=|void|gamepadDisconnected|int

$prototype=void gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value )
$signalMethod=|void|gamepadAxisEvent|int,QGamepadManager::GamepadAxis,double

$prototype=void gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value )
$signalMethod=|void|gamepadButtonPressEvent|int,QGamepadManager::GamepadButton,double

$prototype=void gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button )
$signalMethod=|void|gamepadButtonReleaseEvent|int,QGamepadManager::GamepadButton

$prototype=void buttonConfigured( int deviceId, QGamepadManager::GamepadButton button )
$signalMethod=|void|buttonConfigured|int,QGamepadManager::GamepadButton

$prototype=void axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis )
$signalMethod=|void|axisConfigured|int,QGamepadManager::GamepadAxis

$prototype=void configurationCanceled( int deviceId )
$signalMethod=|void|configurationCanceled|int

#pragma ENDDUMP
