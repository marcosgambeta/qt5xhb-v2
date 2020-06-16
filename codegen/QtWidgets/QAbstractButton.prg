%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QButtonGroup>

$prototype=explicit QAbstractButton(QWidget *parent = nullptr) (abstract)

$prototype=QAbstractButton(QAbstractButtonPrivate &dd, QWidget* parent = nullptr) [protected]

$prototype=~QAbstractButton()
$deleteMethod

%%
%% Q_PROPERTY(QString text READ text WRITE setText)
%%

$prototypeV2=QString text() const

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

%%
%% Q_PROPERTY(QIcon icon READ icon WRITE setIcon)
%%

$prototypeV2=QIcon icon() const

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

%%
%% Q_PROPERTY(QSize iconSize READ iconSize WRITE setIconSize)
%%

$prototypeV2=QSize iconSize() const

$prototype=void setIconSize ( const QSize & size ) (slot)
$method=|void|setIconSize|const QSize &

%% #ifndef QT_NO_SHORTCUT

%%
%% Q_PROPERTY(QKeySequence shortcut READ shortcut WRITE setShortcut)
%%

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut||#ifndef QT_NO_SHORTCUT

$prototype=void setShortcut ( const QKeySequence & key )
$method=|void|setShortcut|const QKeySequence &|#ifndef QT_NO_SHORTCUT

%% #endif

%%
%% Q_PROPERTY(bool checkable READ isCheckable WRITE setCheckable)
%%

$prototypeV2=bool isCheckable() const

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

%%
%% Q_PROPERTY(bool checked READ isChecked WRITE setChecked DESIGNABLE isCheckable NOTIFY toggled USER true)
%%

$prototypeV2=bool isChecked() const

$prototype=void setChecked ( bool ) (slot)
$method=|void|setChecked|bool

%%
%% Q_PROPERTY(bool autoRepeat READ autoRepeat WRITE setAutoRepeat)
%%

$prototypeV2=bool autoRepeat() const

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

%%
%% Q_PROPERTY(bool autoExclusive READ autoExclusive WRITE setAutoExclusive)
%%

$prototypeV2=bool autoExclusive() const

$prototype=void setAutoExclusive ( bool )
$method=|void|setAutoExclusive|bool

%%
%% Q_PROPERTY(int autoRepeatDelay READ autoRepeatDelay WRITE setAutoRepeatDelay)
%%

$prototypeV2=int autoRepeatDelay() const

$prototype=void setAutoRepeatDelay ( int )
$method=|void|setAutoRepeatDelay|int

%%
%% Q_PROPERTY(int autoRepeatInterval READ autoRepeatInterval WRITE setAutoRepeatInterval)
%%

$prototypeV2=int autoRepeatInterval() const

$prototype=void setAutoRepeatInterval ( int )
$method=|void|setAutoRepeatInterval|int

%%
%% Q_PROPERTY(bool down READ isDown WRITE setDown DESIGNABLE false)
%%

$prototypeV2=bool isDown() const

$prototype=void setDown ( bool )
$method=|void|setDown|bool

%%
%%
%%

$prototype=QButtonGroup * group () const
$method=|QButtonGroup *|group||#ifndef QT_NO_BUTTONGROUP

$prototype=void animateClick ( int msec = 100 ) (slot)
$method=|void|animateClick|int=100

$prototypeV2=void click() (slot)

$prototypeV2=void toggle() (slot)

$prototype=void paintEvent(QPaintEvent *e) Q_DECL_OVERRIDE = 0 [protected]

$prototype=virtual bool hitButton(const QPoint &pos) const [protected]

$prototype=virtual void checkStateSet() [protected]

$prototype=virtual void nextCheckState() [protected]

$prototype=bool event(QEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void keyPressEvent(QKeyEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void keyReleaseEvent(QKeyEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void mousePressEvent(QMouseEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void mouseReleaseEvent(QMouseEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void mouseMoveEvent(QMouseEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void focusInEvent(QFocusEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void focusOutEvent(QFocusEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void changeEvent(QEvent *e) Q_DECL_OVERRIDE [protected]

$prototype=void timerEvent(QTimerEvent *e) Q_DECL_OVERRIDE [protected]

%%
%% SIGNALS
%%

$prototype=void clicked( bool checked = false )
$signalMethod=|void|clicked|bool

$prototype=void pressed()
$signalMethod=|void|pressed|

$prototype=void released()
$signalMethod=|void|released|

$prototype=void toggled( bool checked )
$signalMethod=|void|toggled|bool

#pragma ENDDUMP
