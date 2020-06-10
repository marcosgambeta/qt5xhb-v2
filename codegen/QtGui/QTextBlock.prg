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

$prototype=bool contains(int position) const
$method=|bool|contains|int

$prototypeV2=QTextLayout * layout() const

$prototypeV2=void clearLayout()

$prototypeV2=QTextBlockFormat blockFormat() const

$prototypeV2=int blockFormatIndex() const

$prototypeV2=QTextCharFormat charFormat() const

$prototypeV2=int charFormatIndex() const

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=QString text() const

$prototype=const QTextDocument *document() const
$method=|const QTextDocument *|document|

$prototypeV2=QTextList * textList() const

$prototypeV2=QTextBlockUserData * userData() const

$prototype=void setUserData(QTextBlockUserData *data)
$method=|void|setUserData|QTextBlockUserData *

$prototypeV2=int userState() const

$prototype=void setUserState(int state)
$method=|void|setUserState|int

$prototypeV2=int revision() const

$prototype=void setRevision(int rev)
$method=|void|setRevision|int

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototypeV2=int blockNumber() const

$prototypeV2=int firstLineNumber() const

$prototype=void setLineCount(int count)
$method=|void|setLineCount|int

$prototypeV2=int lineCount() const

$prototypeV2=QTextBlock next() const

$prototypeV2=QTextBlock previous() const

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

$prototypeV2=int fragmentIndex() const

$extraMethods

#pragma ENDDUMP
