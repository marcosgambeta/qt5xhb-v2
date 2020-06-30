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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QTextOption()
$internalConstructor=|new1|

$prototype=QTextOption(Qt::Alignment alignment)
$internalConstructor=|new2|Qt::Alignment

$prototype=QTextOption(const QTextOption &o)
$internalConstructor=|new3|const QTextOption &

/*
[1]QTextOption()
[2]QTextOption(Qt::Alignment alignment)
[3]QTextOption(const QTextOption &o)
*/

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextOption_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextOption_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    QTextOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=void setTextDirection( Qt::LayoutDirection aDirection )

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=void setWrapMode( QTextOption::WrapMode wrap )

$prototypeV2=QTextOption::WrapMode wrapMode() const

$prototypeV2=void setFlags( QTextOption::Flags flags )

$prototypeV2=QTextOption::Flags flags() const

$prototypeV2=void setTabStop( qreal tabStop )

$prototypeV2=qreal tabStop() const

$prototypeV2=void setTabArray( const QList<qreal> & tabStops )

$prototypeV2=QList<qreal> tabArray() const

$prototypeV2=void setUseDesignMetrics( bool b )

$prototypeV2=bool useDesignMetrics() const

$extraMethods

#pragma ENDDUMP
