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

#include <QtGamepad/QGamepad>

$prototype=explicit QGamepadKeyNavigation(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(bool active READ active WRITE setActive NOTIFY activeChanged)
%%

$prototype=bool active() const
$method=|bool|active|

$prototype=void setActive(bool isActive) (slot)
$slotMethod=|void|setActive|bool

%%
%% Q_PROPERTY(QGamepad *gamepad READ gamepad WRITE setGamepad NOTIFY gamepadChanged)
%%

$prototype=QGamepad *gamepad() const
$method=|QGamepad *|gamepad|

$prototype=void setGamepad(QGamepad *gamepad) (slot)
$slotMethod=|void|setGamepad|QGamepad *

%%
%% Q_PROPERTY(Qt::Key upKey READ upKey WRITE setUpKey NOTIFY upKeyChanged)
%%

$prototype=Qt::Key upKey() const
$method=|Qt::Key|upKey|

$prototype=void setUpKey(Qt::Key key) (slot)
$slotMethod=|void|setUpKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key downKey READ downKey WRITE setDownKey NOTIFY downKeyChanged)
%%

$prototype=Qt::Key downKey() const
$method=|Qt::Key|downKey|

$prototype=void setDownKey(Qt::Key key) (slot)
$slotMethod=|void|setDownKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key leftKey READ leftKey WRITE setLeftKey NOTIFY leftKeyChanged)
%%

$prototype=Qt::Key leftKey() const
$method=|Qt::Key|leftKey|

$prototype=void setLeftKey(Qt::Key key) (slot)
$slotMethod=|void|setLeftKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key rightKey READ rightKey WRITE setRightKey NOTIFY rightKeyChanged)
%%

$prototype=Qt::Key rightKey() const
$method=|Qt::Key|rightKey|

$prototype=void setRightKey(Qt::Key key) (slot)
$slotMethod=|void|setRightKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonAKey READ buttonAKey WRITE setButtonAKey NOTIFY buttonAKeyChanged)
%%

$prototype=Qt::Key buttonAKey() const
$method=|Qt::Key|buttonAKey|

$prototype=void setButtonAKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonAKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonBKey READ buttonBKey WRITE setButtonBKey NOTIFY buttonBKeyChanged)
%%

$prototype=Qt::Key buttonBKey() const
$method=|Qt::Key|buttonBKey|

$prototype=void setButtonBKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonBKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonXKey READ buttonXKey WRITE setButtonXKey NOTIFY buttonXKeyChanged)
%%

$prototype=Qt::Key buttonXKey() const
$method=|Qt::Key|buttonXKey|

$prototype=void setButtonXKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonXKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonYKey READ buttonYKey WRITE setButtonYKey NOTIFY buttonYKeyChanged)
%%

$prototype=Qt::Key buttonYKey() const
$method=|Qt::Key|buttonYKey|

$prototype=void setButtonYKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonYKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonSelectKey READ buttonSelectKey WRITE setButtonSelectKey NOTIFY buttonSelectKeyChanged)
%%

$prototype=Qt::Key buttonSelectKey() const
$method=|Qt::Key|buttonSelectKey|

$prototype=void setButtonSelectKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonSelectKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonStartKey READ buttonStartKey WRITE setButtonStartKey NOTIFY buttonStartKeyChanged)
%%

$prototype=Qt::Key buttonStartKey() const
$method=|Qt::Key|buttonStartKey|

$prototype=void setButtonStartKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonStartKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonGuideKey READ buttonGuideKey WRITE setButtonGuideKey NOTIFY buttonGuideKeyChanged)
%%

$prototype=Qt::Key buttonGuideKey() const
$method=|Qt::Key|buttonGuideKey|

$prototype=void setButtonGuideKey(Qt::Key key) (slot)
$slotMethod=|void|setButtonGuideKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL1Key READ buttonL1Key WRITE setButtonL1Key NOTIFY buttonL1KeyChanged)
%%

$prototype=Qt::Key buttonL1Key() const
$method=|Qt::Key|buttonL1Key|

$prototype=void setButtonL1Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR1Key READ buttonR1Key WRITE setButtonR1Key NOTIFY buttonR1KeyChanged)
%%

$prototype=Qt::Key buttonR1Key() const
$method=|Qt::Key|buttonR1Key|

$prototype=void setButtonR1Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonR1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL2Key READ buttonL2Key WRITE setButtonL2Key NOTIFY buttonL2KeyChanged)
%%

$prototype=Qt::Key buttonL2Key() const
$method=|Qt::Key|buttonL2Key|

$prototype=void setButtonL2Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR2Key READ buttonR2Key WRITE setButtonR2Key NOTIFY buttonR2KeyChanged)
%%

$prototype=Qt::Key buttonR2Key() const
$method=|Qt::Key|buttonR2Key|

$prototype=void setButtonR2Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonR2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL3Key READ buttonL3Key WRITE setButtonL3Key NOTIFY buttonL3KeyChanged)
%%

$prototype=Qt::Key buttonL3Key() const
$method=|Qt::Key|buttonL3Key|

$prototype=void setButtonL3Key(Qt::Key key) (slot)
$slotMethod=|void|setButtonL3Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR3Key READ buttonR3Key WRITE setButtonR3Key NOTIFY buttonR3KeyChanged)
%%

$prototype=Qt::Key buttonR3Key() const
$method=|Qt::Key|buttonR3Key|

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
