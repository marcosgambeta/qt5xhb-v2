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

$prototype=const QList<int> connectedGamepads() const
%% TODO: const QList<int>
%% $method=|const QList<int>|connectedGamepads|

%%
%%
%%

$prototype=static QGamepadManager* instance()
$staticMethod=|QGamepadManager *|instance|

$prototype=bool isGamepadConnected(int deviceId) const
$method=|bool|isGamepadConnected|int

$prototype=bool isConfigurationNeeded(int deviceId) const (slot)
$slotMethod=|bool|isConfigurationNeeded|int

$prototype=bool configureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=|bool|configureButton|int,QGamepadManager::GamepadButton

$prototype=bool configureAxis(int deviceId, GamepadAxis axis) (slot)
$slotMethod=|bool|configureAxis|int,QGamepadManager::GamepadAxis

$prototype=bool setCancelConfigureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=|bool|setCancelConfigureButton|int,QGamepadManager::GamepadButton

$prototype=void resetConfiguration(int deviceId) (slot)
$slotMethod=|void|resetConfiguration|int

$prototype=void setSettingsFile(const QString &file) (slot)
$slotMethod=|void|setSettingsFile|const QString &

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
