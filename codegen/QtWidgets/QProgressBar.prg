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

$prototype=QProgressBar ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QString format() const

$prototypeV2=bool invertedAppearance()

$prototypeV2=bool isTextVisible() const

$prototypeV2=int maximum() const

$prototypeV2=int minimum() const

$prototypeV2=Qt::Orientation orientation() const

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setFormat ( const QString & format )
$method=|void|setFormat|const QString &

$prototype=void setInvertedAppearance ( bool invert )
$method=|void|setInvertedAppearance|bool

$prototype=void setTextDirection ( QProgressBar::Direction textDirection )
$method=|void|setTextDirection|QProgressBar::Direction

$prototype=void setTextVisible ( bool visible )
$method=|void|setTextVisible|bool

$prototypeV2=virtual QString text() const

$prototypeV2=QProgressBar::Direction textDirection()

$prototypeV2=int value() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void reset()

$prototype=void setMaximum ( int maximum )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int minimum )
$method=|void|setMinimum|int

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$prototype=void setValue ( int value )
$method=|void|setValue|int

%%
%% SIGNALS
%%

$prototype=void valueChanged( int value )
$signalMethod=|void|valueChanged|int

#pragma ENDDUMP
