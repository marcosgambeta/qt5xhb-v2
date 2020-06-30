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

$prototype=QStaticText()
$internalConstructor=|new1|

$prototype=QStaticText(const QString &text)
$internalConstructor=|new2|const QString &

$prototype=QStaticText(const QStaticText &other)
$internalConstructor=|new3|const QStaticText &

/*
[1]QStaticText()
[2]QStaticText(const QString &text)
[3]QStaticText(const QStaticText &other)
*/

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStaticText_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStaticText_new2();
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    QStaticText_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QStaticText & other )

$prototypeV2=void setText( const QString & text )

$prototypeV2=QString text() const

$prototypeV2=void setTextFormat( Qt::TextFormat textFormat )

$prototypeV2=Qt::TextFormat textFormat() const

$prototypeV2=void setTextWidth( qreal textWidth )

$prototypeV2=qreal textWidth() const

$prototypeV2=void setTextOption( const QTextOption & textOption )

$prototypeV2=QTextOption textOption() const

$prototypeV2=QSizeF size() const

$prototypeV2=void prepare( const QTransform & matrix = QTransform(), const QFont & font = QFont() )

$prototypeV2=void setPerformanceHint( QStaticText::PerformanceHint performanceHint )

$prototypeV2=QStaticText::PerformanceHint performanceHint() const

$extraMethods

#pragma ENDDUMP
