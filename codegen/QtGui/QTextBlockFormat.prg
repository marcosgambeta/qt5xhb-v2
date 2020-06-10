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

$prototype=QTextBlockFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototypeV2=Qt::Alignment alignment() const

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

$prototype=void setTextIndent(qreal aindent)
$method=|void|setTextIndent|qreal

$prototypeV2=qreal textIndent() const

$prototype=void setIndent(int indent)
$method=|void|setIndent|int

$prototypeV2=int indent() const

$prototype=void setLineHeight(qreal height, int heightType)
$method=|void|setLineHeight|qreal,int

$prototype=qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
$internalMethod=|qreal|lineHeight,lineHeight1|qreal,qreal

$prototype=qreal lineHeight() const
$internalMethod=|qreal|lineHeight,lineHeight2|

/*
[1]qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
[2]qreal lineHeight() const
*/

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextBlockFormat_lineHeight1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextBlockFormat_lineHeight2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=lineHeight

$prototypeV2=int lineHeightType() const

$prototype=void setNonBreakableLines(bool b)
$method=|void|setNonBreakableLines|bool

$prototypeV2=bool nonBreakableLines() const

$prototype=void setPageBreakPolicy(PageBreakFlags flags)
$method=|void|setPageBreakPolicy|QTextBlockFormat::PageBreakFlags

$prototypeV2=QTextBlockFormat::PageBreakFlags pageBreakPolicy() const

$prototype=int QTextBlockFormat::headingLevel() const
$method=5,12,0|int|headingLevel|

$prototype=void QTextBlockFormat::setHeadingLevel(int level)
$method=5,12,0|void|setHeadingLevel|int

#pragma ENDDUMP
