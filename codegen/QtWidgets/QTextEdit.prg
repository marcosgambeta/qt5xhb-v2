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

$prototype=QTextEdit ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QTextEdit ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

/*
[1]QTextEdit ( QWidget * parent = nullptr )
[2]QTextEdit ( const QString & text, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool acceptRichText() const

$prototypeV2=Qt::Alignment alignment() const

$prototype=QString anchorAt ( const QPoint & pos ) const
$method=|QString|anchorAt|const QPoint &

$prototypeV2=QTextEdit::AutoFormatting autoFormatting() const

$prototypeV2=bool canPaste() const

$prototype=QMenu * createStandardContextMenu ()
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu1|

$prototype=QMenu * createStandardContextMenu ( const QPoint & position )
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu2|const QPoint &

/*
[1]QMenu * createStandardContextMenu ()
[2]QMenu * createStandardContextMenu ( const QPoint & position )
*/

HB_FUNC_STATIC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  if( ISNUMPAR(0) )
  {
    QTextEdit_createStandardContextMenu1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTextEdit_createStandardContextMenu2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createStandardContextMenu

$prototypeV2=QTextCharFormat currentCharFormat() const

$prototypeV2=QFont currentFont() const

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

HB_FUNC_STATIC( QTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextEdit_cursorRect2();
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

$prototypeV2=QString fontFamily() const

$prototypeV2=bool fontItalic() const

$prototypeV2=qreal fontPointSize() const

$prototypeV2=bool fontUnderline() const

$prototypeV2=int fontWeight() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=int lineWrapColumnOrWidth() const

$prototypeV2=QTextEdit::LineWrapMode lineWrapMode() const

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeCurrentCharFormat|const QTextCharFormat &

$prototype=void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
$method=|void|moveCursor|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototypeV2=bool overwriteMode() const

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=void setAcceptRichText ( bool accept )
$method=|void|setAcceptRichText|bool

$prototype=void setAutoFormatting ( AutoFormatting features )
$method=|void|setAutoFormatting|QTextEdit::AutoFormatting

$prototype=void setCurrentCharFormat ( const QTextCharFormat & format )
$method=|void|setCurrentCharFormat|const QTextCharFormat &

$prototype=void setCursorWidth ( int width )
$method=|void|setCursorWidth|int

$prototype=void setDocument ( QTextDocument * document )
$method=|void|setDocument|QTextDocument *

$prototype=void setDocumentTitle ( const QString & title )
$method=|void|setDocumentTitle|const QString &

$prototype=void setLineWrapColumnOrWidth ( int w )
$method=|void|setLineWrapColumnOrWidth|int

$prototype=void setLineWrapMode ( LineWrapMode mode )
$method=|void|setLineWrapMode|QTextEdit::LineWrapMode

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

$prototypeV2=QColor textBackgroundColor() const

$prototypeV2=QColor textColor() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=QString toHtml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=QTextOption::WrapMode wordWrapMode() const

$prototype=void append ( const QString & text )
$method=|void|append|const QString &

$prototypeV2=void clear()

$prototypeV2=void copy()

$prototypeV2=void cut()

$prototype=void insertHtml ( const QString & text )
$method=|void|insertHtml|const QString &

$prototype=void insertPlainText ( const QString & text )
$method=|void|insertPlainText|const QString &

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototype=void scrollToAnchor ( const QString & name )
$method=|void|scrollToAnchor|const QString &

$prototypeV2=void selectAll()

$prototype=void setAlignment ( Qt::Alignment a )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setCurrentFont ( const QFont & f )
$method=|void|setCurrentFont|const QFont &

$prototype=void setFontFamily ( const QString & fontFamily )
$method=|void|setFontFamily|const QString &

$prototype=void setFontItalic ( bool italic )
$method=|void|setFontItalic|bool

$prototype=void setFontPointSize ( qreal s )
$method=|void|setFontPointSize|qreal

$prototype=void setFontUnderline ( bool underline )
$method=|void|setFontUnderline|bool

$prototype=void setFontWeight ( int weight )
$method=|void|setFontWeight|int

$prototype=void setHtml ( const QString & text )
$method=|void|setHtml|const QString &

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextBackgroundColor ( const QColor & c )
$method=|void|setTextBackgroundColor|const QColor &

$prototype=void setTextColor ( const QColor & c )
$method=|void|setTextColor|const QColor &

$prototypeV2=void undo()

$prototype=void zoomIn ( int range = 1 )
$method=|void|zoomIn|int=1

$prototype=void zoomOut ( int range = 1 )
$method=|void|zoomOut|int=1

$prototype=void setMarkdown(const QString &markdown)
$method=5,14,0|void|setMarkdown|const QString &

$prototype=QString toMarkdown(QTextDocument::MarkdownFeatures features = QTextDocument::MarkdownDialectGitHub) const
$method=5,14,0|QString|toMarkdown|QTextDocument::MarkdownFeatures=QTextDocument::MarkdownDialectGitHub

%%
%% SIGNALS
%%

$prototype=void copyAvailable( bool yes )
$signalMethod=|void|copyAvailable|bool

$prototype=void currentCharFormatChanged( const QTextCharFormat & f )
$signalMethod=|void|currentCharFormatChanged|const QTextCharFormat &

$prototype=void cursorPositionChanged()
$signalMethod=|void|cursorPositionChanged|

$prototype=void redoAvailable( bool available )
$signalMethod=|void|redoAvailable|bool

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void textChanged()
$signalMethod=|void|textChanged|

$prototype=void undoAvailable( bool available )
$signalMethod=|void|undoAvailable|bool

#pragma ENDDUMP
