%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtPrintSupport/QPrinter>
#include <QtWidgets/QMenu>

$prototype=QPlainTextEdit ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QPlainTextEdit ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

/*
[1]QPlainTextEdit ( QWidget * parent = nullptr )
[2]QPlainTextEdit ( const QString & text, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPlainTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QPlainTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString anchorAt ( const QPoint & pos ) const
$method=|QString|anchorAt|const QPoint &

$prototypeV2=bool backgroundVisible() const

$prototypeV2=int blockCount() const

$prototypeV2=bool canPaste() const

$prototypeV2=bool centerOnScroll() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototypeV2=QTextCharFormat currentCharFormat() const

$prototype=QTextCursor cursorForPosition ( const QPoint & pos ) const
$method=|QTextCursor|cursorForPosition|const QPoint &

$prototype=QRect cursorRect ( const QTextCursor & cursor ) const
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

$prototype=QRect cursorRect () const
$internalMethod=|QRect|cursorRect,cursorRect2|

/*
[1]QRect cursorRect ( const QTextCursor & cursor ) const
[2]QRect cursorRect () const
*/

HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QPlainTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QPlainTextEdit_cursorRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cursorRect

$prototypeV2=int cursorWidth() const

$prototypeV2=QTextDocument * document() const

$prototypeV2=QString documentTitle() const

$prototypeV2=void ensureCursorVisible()

$prototype=bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
$method=|bool|find|const QString &,QTextDocument::FindFlags=0

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=QPlainTextEdit::LineWrapMode lineWrapMode() const

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototypeV2=int maximumBlockCount() const

$prototype=void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeCurrentCharFormat|const QTextCharFormat &

$prototype=void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
$method=|void|moveCursor|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototypeV2=bool overwriteMode() const

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=void setBackgroundVisible ( bool visible )
$method=|void|setBackgroundVisible|bool

$prototype=void setCenterOnScroll ( bool enabled )
$method=|void|setCenterOnScroll|bool

$prototype=void setCurrentCharFormat ( const QTextCharFormat & format )
$method=|void|setCurrentCharFormat|const QTextCharFormat &

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setDocumentTitle ( const QString & title )
$method=|void|setDocumentTitle|const QString &

$prototype=void setLineWrapMode ( LineWrapMode mode )
$method=|void|setLineWrapMode|QPlainTextEdit::LineWrapMode

$prototype=void setMaximumBlockCount ( int maximum )
$method=|void|setMaximumBlockCount|int

$prototype=void setOverwriteMode ( bool overwrite )
$method=|void|setOverwriteMode|bool

$prototype=void setReadOnly ( bool ro )
$method=|void|setReadOnly|bool

$prototype=void setTabChangesFocus ( bool b )
$method=|void|setTabChangesFocus|bool

$prototype=void setTabStopWidth ( int width )
$method=|void|setTabStopWidth|int

$prototype=void setTextCursor ( const QTextCursor & cursor )
$method=|void|setTextCursor|const QTextCursor &

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setUndoRedoEnabled ( bool enable )
$method=|void|setUndoRedoEnabled|bool

$prototype=void setWordWrapMode ( QTextOption::WrapMode policy )
$method=|void|setWordWrapMode|QTextOption::WrapMode

$prototypeV2=bool tabChangesFocus() const

$prototypeV2=int tabStopWidth() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=QString toPlainText() const

$prototypeV2=QTextOption::WrapMode wordWrapMode() const

$prototype=void appendHtml ( const QString & html )
$method=|void|appendHtml|const QString &

$prototype=void appendPlainText ( const QString & text )
$method=|void|appendPlainText|const QString &

$prototypeV2=void centerCursor()

$prototypeV2=void clear()

$prototypeV2=void copy()

$prototypeV2=void cut()

$prototype=void insertPlainText ( const QString & text )
$method=|void|insertPlainText|const QString &

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototypeV2=void selectAll()

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototypeV2=void undo()

%%
%% SIGNALS
%%

$prototype=void blockCountChanged( int newBlockCount )
$signalMethod=|void|blockCountChanged|int

$prototype=void copyAvailable( bool yes )
$signalMethod=|void|copyAvailable|bool

$prototype=void cursorPositionChanged()
$signalMethod=|void|cursorPositionChanged|

$prototype=void modificationChanged( bool changed )
$signalMethod=|void|modificationChanged|bool

$prototype=void redoAvailable( bool available )
$signalMethod=|void|redoAvailable|bool

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void textChanged()
$signalMethod=|void|textChanged|

$prototype=void undoAvailable( bool available )
$signalMethod=|void|undoAvailable|bool

$prototype=void updateRequest( const QRect & rect, int dy )
$signalMethod=|void|updateRequest|const QRect &,int

#pragma ENDDUMP
