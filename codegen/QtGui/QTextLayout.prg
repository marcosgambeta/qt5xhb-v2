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

#include <QtGui/QTextBlock>
#include <QtGui/QTextCursor>

$prototype=QTextLayout()
$internalConstructor=|new1|

$prototype=QTextLayout(const QString& text)
$internalConstructor=|new2|const QString &

$prototype=QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = nullptr)
$internalConstructor=|new3|const QString &,const QFont &,QPaintDevice *=nullptr

$prototype=QTextLayout(const QTextBlock &b)
$internalConstructor=|new4|const QTextBlock &

/*
[1]QTextLayout()
[2]QTextLayout(const QString& text)
[3]QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = nullptr)
[4]QTextLayout(const QTextBlock &b)
*/

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLayout_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextLayout_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    QTextLayout_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextLayout_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setFont( const QFont & f )

$prototypeV2=QFont font() const

$prototypeV2=void setRawFont( const QRawFont & rawFont )

$prototypeV2=void setText( const QString & string )

$prototypeV2=QString text() const

$prototypeV2=void setTextOption( const QTextOption & option )

$prototypeV2=const QTextOption & textOption() const

$prototypeV2=void setPreeditArea( int position, const QString & text )

$prototypeV2=int preeditAreaPosition() const

$prototypeV2=QString preeditAreaText() const

$prototypeV2=void clearAdditionalFormats()

$prototypeV2=void setCacheEnabled( bool enable )

$prototypeV2=bool cacheEnabled() const

$prototypeV2=void setCursorMoveStyle( Qt::CursorMoveStyle style )

$prototypeV2=Qt::CursorMoveStyle cursorMoveStyle() const

$prototypeV2=void beginLayout()

$prototypeV2=void endLayout()

$prototypeV2=void clearLayout()

$prototypeV2=QTextLine createLine()

$prototypeV2=int lineCount() const

$prototypeV2=QTextLine lineAt( int i ) const

$prototypeV2=QTextLine lineForTextPosition( int pos ) const

$prototypeV2=bool isValidCursorPosition( int pos ) const

$prototypeV2=int nextCursorPosition( int oldPos, QTextLayout::CursorMode mode = QTextLayout::SkipCharacters ) const

$prototypeV2=int previousCursorPosition( int oldPos, QTextLayout::CursorMode mode = QTextLayout::SkipCharacters) const

$prototypeV2=int leftCursorPosition( int oldPos ) const

$prototypeV2=int rightCursorPosition( int oldPos ) const

$prototype=void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
$internalMethod=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int

$prototype=void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
$internalMethod=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int,int

/*
[1]void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
[2]void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
*/

HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR )
{
  if( ISNUMPAR(3) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    QTextLayout_drawCursor1();
  }
  else if( ISNUMPAR(4) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextLayout_drawCursor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawCursor

$prototypeV2=QPointF position() const

$prototypeV2=void setPosition( const QPointF & p )

$prototypeV2=QRectF boundingRect() const

$prototypeV2=qreal minimumWidth() const

$prototypeV2=qreal maximumWidth() const

$prototype=QTextEngine *engine() const
%% TODO: implementar ?
%% $method=|QTextEngine *|engine|

$prototypeV2=void setFlags( int flags )

$extraMethods

#pragma ENDDUMP
