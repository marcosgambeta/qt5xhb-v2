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

$prototypeV2=QTextDocument * clone( QObject * parent = nullptr ) const

$prototypeV2=bool isEmpty() const

$prototypeV2=virtual void clear()

$prototypeV2=void setUndoRedoEnabled( bool enable )

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=int availableUndoSteps() const

$prototypeV2=int availableRedoSteps() const

$prototypeV2=int revision() const

$prototypeV2=void setDocumentLayout( QAbstractTextDocumentLayout * layout )

$prototypeV2=QAbstractTextDocumentLayout * documentLayout() const

$prototypeV2=void setMetaInformation( QTextDocument::MetaInformation info, const QString & )

$prototypeV2=QString metaInformation( QTextDocument::MetaInformation info ) const

$prototypeV2=QString toHtml( const QByteArray & encoding = QByteArray() ) const

$prototypeV2=void setHtml( const QString & html )

$prototypeV2=QString toPlainText() const

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=QChar characterAt( int pos ) const

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

$prototypeV2=QTextFrame * frameAt( int pos ) const

$prototypeV2=QTextFrame * rootFrame() const

$prototypeV2=QTextObject * object( int objectIndex ) const

$prototypeV2=QTextObject * objectForFormat( const QTextFormat & ) const

$prototypeV2=QTextBlock findBlock( int pos ) const

$prototypeV2=QTextBlock findBlockByNumber( int blockNumber ) const

$prototypeV2=QTextBlock findBlockByLineNumber( int blockNumber ) const

$prototypeV2=QTextBlock begin() const

$prototypeV2=QTextBlock end() const

$prototypeV2=QTextBlock firstBlock() const

$prototypeV2=QTextBlock lastBlock() const

$prototypeV2=void setPageSize( const QSizeF & size )

$prototypeV2=QSizeF pageSize() const

$prototypeV2=void setDefaultFont( const QFont & font )

$prototypeV2=QFont defaultFont() const

$prototypeV2=int pageCount() const

$prototypeV2=bool isModified() const

$prototypeV2=void print( QPagedPaintDevice * printer ) const

$prototypeV2=QVariant resource( int type, const QUrl & name ) const

$prototypeV2=void addResource( int type, const QUrl & name, const QVariant & resource )

$prototypeV2=void markContentsDirty( int from, int length )

$prototypeV2=void setUseDesignMetrics( bool b )

$prototypeV2=bool useDesignMetrics() const

$prototypeV2=void drawContents( QPainter * painter, const QRectF & rect = QRectF() )

$prototypeV2=void setTextWidth( qreal width )

$prototypeV2=qreal textWidth() const

$prototypeV2=qreal idealWidth() const

$prototypeV2=qreal indentWidth() const

$prototypeV2=void setIndentWidth( qreal width )

$prototypeV2=qreal documentMargin() const

$prototypeV2=void setDocumentMargin( qreal margin )

$prototypeV2=void adjustSize()

$prototypeV2=QSizeF size() const

$prototypeV2=int blockCount() const

$prototypeV2=int lineCount() const

$prototypeV2=int characterCount() const

$prototypeV2=void setDefaultStyleSheet( const QString & sheet )

$prototypeV2=QString defaultStyleSheet() const

$prototypeV2=void clearUndoRedoStacks( QTextDocument::Stacks historyToClear = QTextDocument::UndoAndRedoStacks )

$prototypeV2=int maximumBlockCount() const

$prototypeV2=void setMaximumBlockCount( int maximum )

$prototypeV2=QTextOption defaultTextOption() const

$prototypeV2=void setDefaultTextOption( const QTextOption & option )

$prototypeV2=Qt::CursorMoveStyle defaultCursorMoveStyle() const

$prototypeV2=void setDefaultCursorMoveStyle( Qt::CursorMoveStyle style )

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

$prototypeV2=void setModified( bool m = true )

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

$prototypeV2=5,14,0|void QTextDocument::setMarkdown( const QString & markdown, QTextDocument::MarkdownFeatures features = QTextDocument::MarkdownDialectGitHub )

$prototypeV2=5,14,0|QString QTextDocument::toMarkdown( QTextDocument::MarkdownFeatures features = QTextDocument::MarkdownDialectGitHub ) const

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
