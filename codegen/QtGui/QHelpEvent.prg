%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & globalPos () const
$method=|const QPoint &|globalPos|

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototypeV2=int x() const

$prototypeV2=int y() const

#pragma ENDDUMP
