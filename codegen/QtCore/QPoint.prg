%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPoint()
$internalConstructor=|new1|

$prototype=QPoint(int xpos, int ypos)
$internalConstructor=|new2|int,int

/*
[1]QPoint()
[2]QPoint(int xpos, int ypos)
*/

HB_FUNC_STATIC( QPOINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPoint_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPoint_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=int manhattanLength() const

$prototypeV2=void setX( int x )

$prototypeV2=void setY( int y )

$prototypeV2=int x() const

$prototypeV2=int y() const

$extraMethods

#pragma ENDDUMP
