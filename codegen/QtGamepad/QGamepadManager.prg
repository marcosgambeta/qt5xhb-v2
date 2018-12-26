%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGamepad

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,9,0

$prototype=QGamepadManager() [private]

$prototype=~QGamepadManager() [private]
%% $deleteMethod

%%
%% Q_PROPERTY(QList<int> connectedGamepads READ connectedGamepads NOTIFY connectedGamepadsChanged)
%%

$prototype=const QList<int> connectedGamepads() const
%% TODO: const QList<int>
%% $method=5,9,0|const QList<int>|connectedGamepads|

%%
%%
%%

$prototype=static QGamepadManager* instance()
$staticMethod=5,9,0|QGamepadManager *|instance|

$prototype=bool isGamepadConnected(int deviceId) const
$method=5,9,0|bool|isGamepadConnected|int

$prototype=bool isConfigurationNeeded(int deviceId) const (slot)
$slotMethod=5,9,0|bool|isConfigurationNeeded|int

$prototype=bool configureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=5,9,0|bool|configureButton|int,QGamepadManager::GamepadButton

$prototype=bool configureAxis(int deviceId, GamepadAxis axis) (slot)
$slotMethod=5,9,0|bool|configureAxis|int,QGamepadManager::GamepadAxis

$prototype=bool setCancelConfigureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=5,9,0|bool|setCancelConfigureButton|int,QGamepadManager::GamepadButton

$prototype=void resetConfiguration(int deviceId) (slot)
$slotMethod=5,9,0|void|resetConfiguration|int

$prototype=void setSettingsFile(const QString &file) (slot)
$slotMethod=5,9,0|void|setSettingsFile|const QString &

%%
%% SIGNALS
%%

$prototype=void connectedGamepadsChanged()
$signalMethod=5,9,0|void|connectedGamepadsChanged|

$prototype=void gamepadConnected( int deviceId )
$signalMethod=5,9,0|void|gamepadConnected|int

$prototype=void gamepadDisconnected( int deviceId )
$signalMethod=5,9,0|void|gamepadDisconnected|int

$prototype=void gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value )
$signalMethod=5,9,0|void|gamepadAxisEvent|int,QGamepadManager::GamepadAxis,double

$prototype=void gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value )
$signalMethod=5,9,0|void|gamepadButtonPressEvent|int,QGamepadManager::GamepadButton,double

$prototype=void gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button )
$signalMethod=5,9,0|void|gamepadButtonReleaseEvent|int,QGamepadManager::GamepadButton

$prototype=void buttonConfigured( int deviceId, QGamepadManager::GamepadButton button )
$signalMethod=5,9,0|void|buttonConfigured|int,QGamepadManager::GamepadButton

$prototype=void axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis )
$signalMethod=5,9,0|void|axisConfigured|int,QGamepadManager::GamepadAxis

$prototype=void configurationCanceled( int deviceId )
$signalMethod=5,9,0|void|configurationCanceled|int

#pragma ENDDUMP
