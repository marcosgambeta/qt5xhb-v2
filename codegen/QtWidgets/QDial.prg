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

$beginClassFrom=QAbstractSlider

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDial ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=int notchSize() const

$prototypeV2=qreal notchTarget() const

$prototypeV2=bool notchesVisible() const

$prototype=void setNotchTarget ( double target )
$method=|void|setNotchTarget|double

$prototypeV2=bool wrapping() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void setNotchesVisible ( bool visible )
$method=|void|setNotchesVisible|bool

$prototype=void setWrapping ( bool on )
$method=|void|setWrapping|bool

#pragma ENDDUMP
