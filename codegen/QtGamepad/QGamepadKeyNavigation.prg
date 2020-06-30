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

#include <QtGamepad/QGamepad>

$prototype=explicit QGamepadKeyNavigation(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(bool active READ active WRITE setActive NOTIFY activeChanged)
%%

$prototypeV2=bool active() const

$prototypeV2=void setActive( bool isActive ) (slot)

%%
%% Q_PROPERTY(QGamepad *gamepad READ gamepad WRITE setGamepad NOTIFY gamepadChanged)
%%

$prototypeV2=QGamepad *gamepad() const

$prototypeV2=void setGamepad( QGamepad * gamepad ) (slot)

%%
%% Q_PROPERTY(Qt::Key upKey READ upKey WRITE setUpKey NOTIFY upKeyChanged)
%%

$prototypeV2=Qt::Key upKey() const

$prototypeV2=void setUpKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key downKey READ downKey WRITE setDownKey NOTIFY downKeyChanged)
%%

$prototypeV2=Qt::Key downKey() const

$prototypeV2=void setDownKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key leftKey READ leftKey WRITE setLeftKey NOTIFY leftKeyChanged)
%%

$prototypeV2=Qt::Key leftKey() const

$prototypeV2=void setLeftKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key rightKey READ rightKey WRITE setRightKey NOTIFY rightKeyChanged)
%%

$prototypeV2=Qt::Key rightKey() const

$prototypeV2=void setRightKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonAKey READ buttonAKey WRITE setButtonAKey NOTIFY buttonAKeyChanged)
%%

$prototypeV2=Qt::Key buttonAKey() const

$prototypeV2=void setButtonAKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonBKey READ buttonBKey WRITE setButtonBKey NOTIFY buttonBKeyChanged)
%%

$prototypeV2=Qt::Key buttonBKey() const

$prototypeV2=void setButtonBKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonXKey READ buttonXKey WRITE setButtonXKey NOTIFY buttonXKeyChanged)
%%

$prototypeV2=Qt::Key buttonXKey() const

$prototypeV2=void setButtonXKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonYKey READ buttonYKey WRITE setButtonYKey NOTIFY buttonYKeyChanged)
%%

$prototypeV2=Qt::Key buttonYKey() const

$prototypeV2=void setButtonYKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonSelectKey READ buttonSelectKey WRITE setButtonSelectKey NOTIFY buttonSelectKeyChanged)
%%

$prototypeV2=Qt::Key buttonSelectKey() const

$prototypeV2=void setButtonSelectKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonStartKey READ buttonStartKey WRITE setButtonStartKey NOTIFY buttonStartKeyChanged)
%%

$prototypeV2=Qt::Key buttonStartKey() const

$prototypeV2=void setButtonStartKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonGuideKey READ buttonGuideKey WRITE setButtonGuideKey NOTIFY buttonGuideKeyChanged)
%%

$prototypeV2=Qt::Key buttonGuideKey() const

$prototypeV2=void setButtonGuideKey( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonL1Key READ buttonL1Key WRITE setButtonL1Key NOTIFY buttonL1KeyChanged)
%%

$prototypeV2=Qt::Key buttonL1Key() const

$prototypeV2=void setButtonL1Key( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonR1Key READ buttonR1Key WRITE setButtonR1Key NOTIFY buttonR1KeyChanged)
%%

$prototypeV2=Qt::Key buttonR1Key() const

$prototypeV2=void setButtonR1Key( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonL2Key READ buttonL2Key WRITE setButtonL2Key NOTIFY buttonL2KeyChanged)
%%

$prototypeV2=Qt::Key buttonL2Key() const

$prototypeV2=void setButtonL2Key( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonR2Key READ buttonR2Key WRITE setButtonR2Key NOTIFY buttonR2KeyChanged)
%%

$prototypeV2=Qt::Key buttonR2Key() const

$prototypeV2=void setButtonR2Key( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonL3Key READ buttonL3Key WRITE setButtonL3Key NOTIFY buttonL3KeyChanged)
%%

$prototypeV2=Qt::Key buttonL3Key() const

$prototypeV2=void setButtonL3Key( Qt::Key key ) (slot)

%%
%% Q_PROPERTY(Qt::Key buttonR3Key READ buttonR3Key WRITE setButtonR3Key NOTIFY buttonR3KeyChanged)
%%

$prototypeV2=Qt::Key buttonR3Key() const

$prototypeV2=void setButtonR3Key( Qt::Key key ) (slot)

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void activeChanged( bool isActive )
$signalMethod=|void|activeChanged|bool

$prototype=void gamepadChanged( QGamepad * gamepad )
$signalMethod=|void|gamepadChanged|QGamepad *

$prototype=void upKeyChanged( Qt::Key key )
$signalMethod=|void|upKeyChanged|Qt::Key

$prototype=void downKeyChanged( Qt::Key key )
$signalMethod=|void|downKeyChanged|Qt::Key

$prototype=void leftKeyChanged( Qt::Key key )
$signalMethod=|void|leftKeyChanged|Qt::Key

$prototype=void rightKeyChanged( Qt::Key key )
$signalMethod=|void|rightKeyChanged|Qt::Key

$prototype=void buttonAKeyChanged( Qt::Key key )
$signalMethod=|void|buttonAKeyChanged|Qt::Key

$prototype=void buttonBKeyChanged( Qt::Key key )
$signalMethod=|void|buttonBKeyChanged|Qt::Key

$prototype=void buttonXKeyChanged( Qt::Key key )
$signalMethod=|void|buttonXKeyChanged|Qt::Key

$prototype=void buttonYKeyChanged( Qt::Key key )
$signalMethod=|void|buttonYKeyChanged|Qt::Key

$prototype=void buttonSelectKeyChanged( Qt::Key key )
$signalMethod=|void|buttonSelectKeyChanged|Qt::Key

$prototype=void buttonStartKeyChanged( Qt::Key key )
$signalMethod=|void|buttonStartKeyChanged|Qt::Key

$prototype=void buttonGuideKeyChanged( Qt::Key key )
$signalMethod=|void|buttonGuideKeyChanged|Qt::Key

$prototype=void buttonL1KeyChanged( Qt::Key key )
$signalMethod=|void|buttonL1KeyChanged|Qt::Key

$prototype=void buttonR1KeyChanged( Qt::Key key )
$signalMethod=|void|buttonR1KeyChanged|Qt::Key

$prototype=void buttonL2KeyChanged( Qt::Key key )
$signalMethod=|void|buttonL2KeyChanged|Qt::Key

$prototype=void buttonR2KeyChanged( Qt::Key key )
$signalMethod=|void|buttonR2KeyChanged|Qt::Key

$prototype=void buttonL3KeyChanged( Qt::Key key )
$signalMethod=|void|buttonL3KeyChanged|Qt::Key

$prototype=void buttonR3KeyChanged( Qt::Key key )
$signalMethod=|void|buttonR3KeyChanged|Qt::Key

#pragma ENDDUMP
