%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMarginsF()
$internalConstructor=|new1|

$prototype=QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
$internalConstructor=|new2|qreal,qreal,qreal,qreal

$prototype=QMarginsF(const QMargins &margins)
$internalConstructor=|new3|const QMargins &

/*
[1]QMarginsF()
[2]QMarginsF(qreal left, qreal top, qreal right, qreal bottom)
[3]QMarginsF(const QMargins &margins)
*/

HB_FUNC_STATIC( QMARGINSF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMarginsF_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMarginsF_new2();
  }
  else if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QMarginsF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=qreal left() const

$prototypeV2=qreal top() const

$prototypeV2=qreal right() const

$prototypeV2=qreal bottom() const

$prototypeV2=void setLeft( qreal left )

$prototypeV2=void setTop( qreal top )

$prototypeV2=void setRight( qreal right )

$prototypeV2=void setBottom( qreal bottom )

$prototypeV2=QMargins toMargins() const

$extraMethods

#pragma ENDDUMP
