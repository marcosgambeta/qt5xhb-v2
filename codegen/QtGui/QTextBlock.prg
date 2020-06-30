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

#include <QtGui/QTextDocument>
#include <QtGui/QTextList>

$prototype=QTextBlock(QTextDocumentPrivate *priv, int b)
%% TODO: implementar ?
%% $internalConstructor=|new1|QTextDocumentPrivate *,int

$prototype=QTextBlock()
$internalConstructor=|new2|

$prototype=QTextBlock(const QTextBlock &o)
$internalConstructor=|new3|const QTextBlock &

/*
[1]QTextBlock(QTextDocumentPrivate *priv, int b)
[2]QTextBlock()
[3]QTextBlock(const QTextBlock &o)
*/

HB_FUNC_STATIC( QTEXTBLOCK_NEW )
{
%%  if( ISNUMPAR(2) && ISOBJECT(1) && ISNUM(2) )
%%  {
%%    QTextBlock_new1();
%%  }
%%  else if( ISNUMPAR(0) )
  if( ISNUMPAR(0) )
  {
    QTextBlock_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextBlock_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=int position() const

$prototypeV2=int length() const

$prototypeV2=bool contains( int position ) const

$prototypeV2=QTextLayout * layout() const

$prototypeV2=void clearLayout()

$prototypeV2=QTextBlockFormat blockFormat() const

$prototypeV2=int blockFormatIndex() const

$prototypeV2=QTextCharFormat charFormat() const

$prototypeV2=int charFormatIndex() const

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=QString text() const

$prototypeV2=const QTextDocument * document() const

$prototypeV2=QTextList * textList() const

$prototypeV2=QTextBlockUserData * userData() const

$prototypeV2=void setUserData( QTextBlockUserData * data )

$prototypeV2=int userState() const

$prototypeV2=void setUserState( int state )

$prototypeV2=int revision() const

$prototypeV2=void setRevision( int rev )

$prototypeV2=bool isVisible() const

$prototypeV2=void setVisible( bool visible )

$prototypeV2=int blockNumber() const

$prototypeV2=int firstLineNumber() const

$prototypeV2=void setLineCount( int count )

$prototypeV2=int lineCount() const

$prototypeV2=QTextBlock next() const

$prototypeV2=QTextBlock previous() const

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

$prototypeV2=int fragmentIndex() const

$extraMethods

#pragma ENDDUMP
