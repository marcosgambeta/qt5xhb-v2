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

$prototype=void setPosition(Position f)
$method=|void|setPosition|QTextFrameFormat::Position

$prototypeV2=QTextFrameFormat::Position position() const

$prototype=void setBorder(qreal border)
$method=|void|setBorder|qreal

$prototypeV2=qreal border() const

$prototype=void setBorderBrush(const QBrush &brush)
$method=|void|setBorderBrush|const QBrush &

$prototypeV2=QBrush borderBrush() const

$prototype=void setBorderStyle(BorderStyle style)
$method=|void|setBorderStyle|QTextFrameFormat::BorderStyle

$prototypeV2=QTextFrameFormat::BorderStyle borderStyle() const

$prototype=void setMargin(qreal margin)
$method=|void|setMargin|qreal

$prototypeV2=qreal margin() const

$prototype=void setTopMargin(qreal margin)
$method=|void|setTopMargin|qreal

$prototypeV2=qreal topMargin() const

$prototype=void setBottomMargin(qreal margin)
$method=|void|setBottomMargin|qreal

$prototypeV2=qreal bottomMargin() const

$prototype=void setLeftMargin(qreal margin)
$method=|void|setLeftMargin|qreal

$prototypeV2=qreal leftMargin() const

$prototype=void setRightMargin(qreal margin)
$method=|void|setRightMargin|qreal

$prototypeV2=qreal rightMargin() const

$prototype=void setPadding(qreal padding)
$method=|void|setPadding|qreal

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

$prototype=void setPageBreakPolicy(PageBreakFlags flags)
$method=|void|setPageBreakPolicy|QTextFrameFormat::PageBreakFlags

$prototypeV2=QTextFrameFormat::PageBreakFlags pageBreakPolicy() const

#pragma ENDDUMP
