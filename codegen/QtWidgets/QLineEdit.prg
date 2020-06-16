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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtGui/QValidator>
#include <QtWidgets/QAction>
#include <QtWidgets/QCompleter>
#include <QtWidgets/QMenu>

$prototype=explicit QLineEdit ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QLineEdit ( const QString & contents, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

/*
[1]explicit QLineEdit ( QWidget * parent = nullptr )
[2]explicit QLineEdit ( const QString & contents, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QLineEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QLineEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototypeV2=void backspace()

$prototypeV2=QCompleter * completer() const

$prototype=void setCompleter ( QCompleter * c )
$method=|void|setCompleter|QCompleter *

$prototypeV2=QMenu * createStandardContextMenu()

$prototype=void cursorBackward ( bool mark, int steps = 1 )
$method=|void|cursorBackward|bool,int=1

$prototype=void cursorForward ( bool mark, int steps = 1 )
$method=|void|cursorForward|bool,int=1

$prototypeV2=int cursorPosition() const

$prototype=void setCursorPosition ( int )
$method=|void|setCursorPosition|int

$prototype=int cursorPositionAt ( const QPoint & pos )
$method=|int|cursorPositionAt|const QPoint &

$prototype=void cursorWordBackward ( bool mark )
$method=|void|cursorWordBackward|bool

$prototype=void cursorWordForward ( bool mark )
$method=|void|cursorWordForward|bool

$prototypeV2=void del()

$prototypeV2=void deselect()

$prototypeV2=QString displayText() const

$prototypeV2=bool dragEnabled() const

$prototype=void setDragEnabled ( bool b )
$method=|void|setDragEnabled|bool

$prototypeV2=QLineEdit::EchoMode echoMode() const

$prototype=void setEchoMode ( EchoMode )
$method=|void|setEchoMode|QLineEdit::EchoMode

$prototype=void end ( bool mark )
$method=|void|end|bool

$prototype=void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getTextMargins|int *,int *,int *,int *

$prototypeV2=bool hasAcceptableInput() const

$prototypeV2=bool hasSelectedText() const

$prototype=void home ( bool mark )
$method=|void|home|bool

$prototypeV2=QString inputMask() const

$prototype=void setInputMask ( const QString & inputMask )
$method=|void|setInputMask|const QString &

$prototype=void insert ( const QString & newText )
$method=|void|insert|const QString &

$prototypeV2=bool isModified() const

$prototype=void setModified ( bool )
$method=|void|setModified|bool

$prototypeV2=bool isReadOnly() const

$prototype=void setReadOnly ( bool )
$method=|void|setReadOnly|bool

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=int maxLength() const

$prototype=void setMaxLength ( int )
$method=|void|setMaxLength|int

$prototypeV2=QString placeholderText() const

$prototype=void setPlaceholderText ( const QString & )
$method=|void|setPlaceholderText|const QString &

$prototypeV2=QSize minimumSizeHint() const

$prototypeV2=QString selectedText() const

$prototypeV2=int selectionStart() const

$prototypeV2=bool hasFrame() const

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

$prototype=void setTextMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setTextMargins,setTextMargins1|int,int,int,int

$prototype=void setTextMargins ( const QMargins & margins )
$internalMethod=|void|setTextMargins,setTextMargins2|const QMargins &

/*
[1]void setTextMargins ( int left, int top, int right, int bottom )
[2]void setTextMargins ( const QMargins & margins )
*/

HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineEdit_setTextMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLineEdit_setTextMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setTextMargins

$prototype=void setValidator ( const QValidator * v )
$method=|void|setValidator|const QValidator *=nullptr

$prototype=const QValidator * validator () const
$method=|const QValidator *|validator|

$prototypeV2=QSize sizeHint() const

$prototypeV2=QString text() const

$prototype=void setText ( const QString & )
$method=|void|setText|const QString &

$prototypeV2=QMargins textMargins() const

$prototype=bool event ( QEvent * e )
$method=|bool|event|QEvent *

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=void copy() const

$prototypeV2=void cut()

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototypeV2=void selectAll()

$prototypeV2=void undo()

$prototype=void setCursorMoveStyle(Qt::CursorMoveStyle style)
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

$prototypeV2=Qt::CursorMoveStyle cursorMoveStyle() const

$prototypeV2=void clear()

$prototype=void addAction(QAction *action, ActionPosition position)
$internalMethod=|void|addAction,addAction1|QAction *,QLineEdit::ActionPosition

$prototype=QAction * addAction(const QIcon &icon, ActionPosition position)
$internalMethod=|QAction *|addAction,addAction2|const QIcon &,QLineEdit::ActionPosition

/*
[1]void addAction(QAction *action, ActionPosition position)
[2]QAction *addAction(const QIcon &icon, ActionPosition position)
*/

HB_FUNC_STATIC( QLINEEDIT_ADDACTION )
{
  if( ISNUMPAR(2) && ISQACTION(1) && ISNUM(2) )
  {
    QLineEdit_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISNUM(2) )
  {
    QLineEdit_addAction2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addAction

$prototype=void setClearButtonEnabled(bool enable)
$method=|void|setClearButtonEnabled|bool

$prototypeV2=bool isClearButtonEnabled() const

%%
%% SIGNALS
%%

$prototype=void cursorPositionChanged( int oldPos, int newPos )
$signalMethod=|void|cursorPositionChanged|int,int

$prototype=void editingFinished()
$signalMethod=|void|editingFinished|

$prototype=void inputRejected()
$signalMethod=5,12,0|void|inputRejected|

$prototype=void returnPressed()
$signalMethod=|void|returnPressed|

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void textChanged( const QString & text )
$signalMethod=|void|textChanged|const QString &

$prototype=void textEdited( const QString & text )
$signalMethod=|void|textEdited|const QString &

#pragma ENDDUMP
