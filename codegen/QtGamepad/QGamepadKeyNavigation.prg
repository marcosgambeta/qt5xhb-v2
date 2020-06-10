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

$prototype=void setActive(bool isActive) (slot)
$slotMethod=|void|setActive|bool

%%
%% Q_PROPERTY(QGamepad *gamepad READ gamepad WRITE setGamepad NOTIFY gamepadChanged)
%%

$prototypeV2=QGamepad *gamepad() const

$prototype=void setGamepad(QGamepad *gamepad) (slot)
$slotMethod=|void|setGamepad|QGamepad *

%%
%% Q_PROPERTY(Qt::Key upKey READ upKey WRITE setUpKey NOTIFY upKeyChanged)
%%

$prototypeV2=Qt::Key upKey() const

$prototype=void setUpKey(Qt::Key key) (slot)
$slotMethod=|void|setUpKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key downKey READ downKey WRITE setDownKey NOTIFY downKeyChanged)
%%

$prototypeV2=Qt::Key downKey() const

$prototype=void setDownKey(Qt::Key key) (slot)
$slotMethod=|void|setDownKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key leftKey READ leftKey WRITE setLeftKey NOTIFY leftKeyChanged)
%%

$prototypeV2=Qt::Key leftKey() const

$prototype=void setLeftKey(Qt::Key key) (slot)
$slotMethod=|void|setLeftKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key rightKey READ rightKey WRITE setRightKey NOTIFY rightKeyChanged)
%%

$prototypeV2=Qt::Key rightKey() const

$prototype=void setRightKey(Qt::Key key) (slot)
$slotMethod=|void|setRightKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonAKey READ buttonAKey WRITE setButtonAKey NOTIFY buttonAKeyChanged)
%%

$prototypeV2=Qt::Key buttonAKey() const

$prototype=void setButtonAKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonAKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonBKey READ buttonBKey WRITE setButtonBKey NOTIFY buttonBKeyChanged)
%%

$prototypeV2=Qt::Key buttonBKey() const

$prototype=void setButtonBKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonBKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonXKey READ buttonXKey WRITE setButtonXKey NOTIFY buttonXKeyChanged)
%%

$prototypeV2=Qt::Key buttonXKey() const

$prototype=void setButtonXKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonXKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonYKey READ buttonYKey WRITE setButtonYKey NOTIFY buttonYKeyChanged)
%%

$prototypeV2=Qt::Key buttonYKey() const

$prototype=void setButtonYKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonYKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonSelectKey READ buttonSelectKey WRITE setButtonSelectKey NOTIFY buttonSelectKeyChanged)
%%

$prototypeV2=Qt::Key buttonSelectKey() const

$prototype=void setButtonSelectKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonSelectKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonStartKey READ buttonStartKey WRITE setButtonStartKey NOTIFY buttonStartKeyChanged)
%%

$prototypeV2=Qt::Key buttonStartKey() const

$prototype=void setButtonStartKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonStartKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonGuideKey READ buttonGuideKey WRITE setButtonGuideKey NOTIFY buttonGuideKeyChanged)
%%

$prototypeV2=Qt::Key buttonGuideKey() const

$prototype=void setButtonGuideKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonGuideKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL1Key READ buttonL1Key WRITE setButtonL1Key NOTIFY buttonL1KeyChanged)
%%

$prototypeV2=Qt::Key buttonL1Key() const

$prototype=void setButtonL1Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR1Key READ buttonR1Key WRITE setButtonR1Key NOTIFY buttonR1KeyChanged)
%%

$prototypeV2=Qt::Key buttonR1Key() const

$prototype=void setButtonR1Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonR1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL2Key READ buttonL2Key WRITE setButtonL2Key NOTIFY buttonL2KeyChanged)
%%

$prototypeV2=Qt::Key buttonL2Key() const

$prototype=void setButtonL2Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR2Key READ buttonR2Key WRITE setButtonR2Key NOTIFY buttonR2KeyChanged)
%%

$prototypeV2=Qt::Key buttonR2Key() const

$prototype=void setButtonR2Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonR2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL3Key READ buttonL3Key WRITE setButtonL3Key NOTIFY buttonL3KeyChanged)
%%

$prototypeV2=Qt::Key buttonL3Key() const

$prototype=void setButtonL3Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL3Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR3Key READ buttonR3Key WRITE setButtonR3Key NOTIFY buttonR3KeyChanged)
%%

$prototypeV2=Qt::Key buttonR3Key() const

$prototype=void setButtonR3Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonR3Key|Qt::Key

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
