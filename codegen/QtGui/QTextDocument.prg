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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAbstractTextDocumentLayout>
#include <QtGui/QTextBlock>
#include <QtGui/QTextCursor>
#include <QtGui/QTextOption>

$prototype=QTextDocument(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QTextDocument(const QString &text, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,QObject *=nullptr

/*
[1]QTextDocument(QObject *parent = nullptr)
[2]QTextDocument(const QString &text, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QTEXTDOCUMENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTextDocument_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QTextDocument_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QTextDocument *clone(QObject *parent = nullptr) const
$method=|QTextDocument *|clone|QObject *=nullptr

$prototypeV2=bool isEmpty() const

$prototypeV2=virtual void clear()

$prototype=void setUndoRedoEnabled(bool enable)
$method=|void|setUndoRedoEnabled|bool

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=int availableUndoSteps() const

$prototypeV2=int availableRedoSteps() const

$prototypeV2=int revision() const

$prototype=void setDocumentLayout(QAbstractTextDocumentLayout *layout)
$method=|void|setDocumentLayout|QAbstractTextDocumentLayout *

$prototypeV2=QAbstractTextDocumentLayout * documentLayout() const

$prototype=void setMetaInformation(MetaInformation info, const QString &)
$method=|void|setMetaInformation|QTextDocument::MetaInformation,const QString &

$prototype=QString metaInformation(MetaInformation info) const
$method=|QString|metaInformation|QTextDocument::MetaInformation

$prototype=QString toHtml(const QByteArray &encoding = QByteArray()) const
$method=|QString|toHtml|const QByteArray &=QByteArray()

$prototype=void setHtml(const QString &html)
$method=|void|setHtml|const QString &

$prototypeV2=QString toPlainText() const

$prototype=void setPlainText(const QString &text)
$method=|void|setPlainText|const QString &

$prototype=QChar characterAt(int pos) const
$method=|QChar|characterAt|int

$prototype=QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
$internalMethod=|QTextCursor|find,find1|const QString &,int=0,QTextDocument::FindFlags=0

$prototype=QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
$internalMethod=|QTextCursor|find,find2|const QString &,const QTextCursor &,QTextDocument::FindFlags=0

$prototype=QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
$internalMethod=|QTextCursor|find,find3|const QRegExp &,int=0,QTextDocument::FindFlags=0

$prototype=QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const
$internalMethod=|QTextCursor|find,find4|const QRegExp &,const QTextCursor &,QTextDocument::FindFlags=0

/*
[1]QTextCursor find(const QString &subString, int from = 0, FindFlags options = 0) const
[2]QTextCursor find(const QString &subString, const QTextCursor &from, FindFlags options = 0) const
[3]QTextCursor find(const QRegExp &expr, int from = 0, FindFlags options = 0) const
[4]QTextCursor find(const QRegExp &expr, const QTextCursor &from, FindFlags options = 0) const
*/

HB_FUNC_STATIC( QTEXTDOCUMENT_FIND )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QTextDocument_find1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    QTextDocument_find2();
  }
  else if( ISBETWEEN(1,3) && ISQREGEXP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QTextDocument_find3();
  }
  else if( ISBETWEEN(2,3) && ISQREGEXP(1) && ISQTEXTCURSOR(2) && ISOPTNUM(3) )
  {
    QTextDocument_find4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=find

$prototype=QTextFrame *frameAt(int pos) const
$method=|QTextFrame *|frameAt|int

$prototypeV2=QTextFrame * rootFrame() const

$prototype=QTextObject *object(int objectIndex) const
$method=|QTextObject *|object|int

$prototype=QTextObject *objectForFormat(const QTextFormat &) const
$method=|QTextObject *|objectForFormat|const QTextFormat &

$prototype=QTextBlock findBlock(int pos) const
$method=|QTextBlock|findBlock|int

$prototype=QTextBlock findBlockByNumber(int blockNumber) const
$method=|QTextBlock|findBlockByNumber|int

$prototype=QTextBlock findBlockByLineNumber(int blockNumber) const
$method=|QTextBlock|findBlockByLineNumber|int

$prototypeV2=QTextBlock begin() const

$prototypeV2=QTextBlock end() const

$prototypeV2=QTextBlock firstBlock() const

$prototypeV2=QTextBlock lastBlock() const

$prototype=void setPageSize(const QSizeF &size)
$method=|void|setPageSize|const QSizeF &

$prototypeV2=QSizeF pageSize() const

$prototype=void setDefaultFont(const QFont &font)
$method=|void|setDefaultFont|const QFont &

$prototypeV2=QFont defaultFont() const

$prototypeV2=int pageCount() const

$prototypeV2=bool isModified() const

$prototype=void print(QPagedPaintDevice *printer) const
$method=|void|print|QPagedPaintDevice *

$prototype=QVariant resource(int type, const QUrl &name) const
$method=|QVariant|resource|int,const QUrl &

$prototype=void addResource(int type, const QUrl &name, const QVariant &resource)
$method=|void|addResource|int,const QUrl &,const QVariant &

$prototype=void markContentsDirty(int from, int length)
$method=|void|markContentsDirty|int,int

$prototype=void setUseDesignMetrics(bool b)
$method=|void|setUseDesignMetrics|bool

$prototypeV2=bool useDesignMetrics() const

$prototype=void drawContents(QPainter *painter, const QRectF &rect = QRectF())
$method=|void|drawContents|QPainter *,const QRectF &=QRectF()

$prototype=void setTextWidth(qreal width)
$method=|void|setTextWidth|qreal

$prototypeV2=qreal textWidth() const

$prototypeV2=qreal idealWidth() const

$prototypeV2=qreal indentWidth() const

$prototype=void setIndentWidth(qreal width)
$method=|void|setIndentWidth|qreal

$prototypeV2=qreal documentMargin() const

$prototype=void setDocumentMargin(qreal margin)
$method=|void|setDocumentMargin|qreal

$prototypeV2=void adjustSize()

$prototypeV2=QSizeF size() const

$prototypeV2=int blockCount() const

$prototypeV2=int lineCount() const

$prototypeV2=int characterCount() const

$prototype=void setDefaultStyleSheet(const QString &sheet)
$method=|void|setDefaultStyleSheet|const QString &

$prototypeV2=QString defaultStyleSheet() const

$prototype=void clearUndoRedoStacks(Stacks historyToClear = UndoAndRedoStacks)
$method=|void|clearUndoRedoStacks|QTextDocument::Stacks=QTextDocument::UndoAndRedoStacks

$prototypeV2=int maximumBlockCount() const

$prototype=void setMaximumBlockCount(int maximum)
$method=|void|setMaximumBlockCount|int

$prototypeV2=QTextOption defaultTextOption() const

$prototype=void setDefaultTextOption(const QTextOption &option)
$method=|void|setDefaultTextOption|const QTextOption &

$prototypeV2=Qt::CursorMoveStyle defaultCursorMoveStyle() const

$prototype=void setDefaultCursorMoveStyle(Qt::CursorMoveStyle style)
$method=|void|setDefaultCursorMoveStyle|Qt::CursorMoveStyle

$prototype=void undo(QTextCursor *cursor)
$internalMethod=|void|undo,undo1|QTextCursor *

$prototype=void undo()
$internalMethod=|void|undo,undo2|

/*
[1]void undo(QTextCursor *cursor)
[2]void undo()
*/

HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_undo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_undo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=undo

$prototype=void redo(QTextCursor *cursor)
$internalMethod=|void|redo,redo1|QTextCursor *

$prototype=void redo()
$internalMethod=|void|redo,redo2|

/*
[1]void redo(QTextCursor *cursor)
[2]void redo()
*/

HB_FUNC_STATIC( QTEXTDOCUMENT_REDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_redo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_redo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=redo

$prototype=void appendUndoItem(QAbstractUndoItem *)
%% TODO: implementar
%% $method=|void|appendUndoItem|QAbstractUndoItem *

$prototype=void setModified(bool m = true)
$method=|void|setModified|bool=true

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

$prototype=void QTextDocument::setMarkdown(const QString &markdown, QTextDocument::MarkdownFeatures features = MarkdownDialectGitHub)
$method=5,14,0|void|setMarkdown|const QString &,QTextDocument::MarkdownFeatures=QTextDocument::MarkdownDialectGitHub

$prototype=QString QTextDocument::toMarkdown(QTextDocument::MarkdownFeatures features = MarkdownDialectGitHub) const
$method=5,14,0|QString|toMarkdown|QTextDocument::MarkdownFeatures=QTextDocument::MarkdownDialectGitHub

%%
%% SIGNALS
%%

$prototype=void contentsChange( int from, int charsRemoves, int charsAdded )
$signalMethod=|void|contentsChange|int,int,int

$prototype=void contentsChanged()
$signalMethod=|void|contentsChanged|

$prototype=void undoAvailable( bool b )
$signalMethod=|void|undoAvailable|bool

$prototype=void redoAvailable( bool b )
$signalMethod=|void|redoAvailable|bool

$prototype=void undoCommandAdded()
$signalMethod=|void|undoCommandAdded|

$prototype=void modificationChanged( bool m )
$signalMethod=|void|modificationChanged|bool

$prototype=void cursorPositionChanged( const QTextCursor & cursor )
$signalMethod=|void|cursorPositionChanged|const QTextCursor &

$prototype=void blockCountChanged( int newBlockCount )
$signalMethod=|void|blockCountChanged|int

$prototype=void documentLayoutChanged()
$signalMethod=|void|documentLayoutChanged|

#pragma ENDDUMP
