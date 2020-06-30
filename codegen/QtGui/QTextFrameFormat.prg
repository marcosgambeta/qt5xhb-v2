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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFrameFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setPosition( QTextFrameFormat::Position f )

$prototypeV2=QTextFrameFormat::Position position() const

$prototypeV2=void setBorder( qreal border )

$prototypeV2=qreal border() const

$prototypeV2=void setBorderBrush( const QBrush & brush )

$prototypeV2=QBrush borderBrush() const

$prototypeV2=void setBorderStyle( QTextFrameFormat::BorderStyle style )

$prototypeV2=QTextFrameFormat::BorderStyle borderStyle() const

$prototypeV2=void setMargin( qreal margin )

$prototypeV2=qreal margin() const

$prototypeV2=void setTopMargin( qreal margin )

$prototypeV2=qreal topMargin() const

$prototypeV2=void setBottomMargin( qreal margin )

$prototypeV2=qreal bottomMargin() const

$prototypeV2=void setLeftMargin( qreal margin )

$prototypeV2=qreal leftMargin() const

$prototypeV2=void setRightMargin( qreal margin )

$prototypeV2=qreal rightMargin() const

$prototypeV2=void setPadding( qreal padding )

$prototypeV2=qreal padding() const

$prototype=void setWidth(qreal width)
$internalMethod=|void|setWidth,setWidth1|qreal

$prototype=void setWidth(const QTextLength &length)
$internalMethod=|void|setWidth,setWidth2|const QTextLength &

/*
[1]void setWidth(qreal width)
[2]void setWidth(const QTextLength &length)
*/

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setWidth1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setWidth2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setWidth

$prototypeV2=QTextLength width() const

$prototype=void setHeight(qreal height)
$internalMethod=|void|setHeight,setHeight1|qreal

$prototype=void setHeight(const QTextLength &height)
$internalMethod=|void|setHeight,setHeight2|const QTextLength &

/*
[1]void setHeight(qreal height)
[2]void setHeight(const QTextLength &height)
*/

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFrameFormat_setHeight1();
  }
  else if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    QTextFrameFormat_setHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setHeight

$prototypeV2=QTextLength height() const

$prototypeV2=void setPageBreakPolicy( QTextFrameFormat::PageBreakFlags flags )

$prototypeV2=QTextFrameFormat::PageBreakFlags pageBreakPolicy() const

#pragma ENDDUMP
