%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

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

#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>

$prototype=explicit QVirtualKeyboardInputContext(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QVirtualKeyboardInputContext()
$deleteMethod

%%
%% Q_PROPERTY(bool shift READ isShiftActive NOTIFY shiftActiveChanged)
%%
%%
%% Q_PROPERTY(bool shiftActive READ isShiftActive NOTIFY shiftActiveChanged REVISION 4)
%%

$prototype=bool isShiftActive() const
$method=|bool|isShiftActive|

%%
%% Q_PROPERTY(bool capsLock READ isCapsLockActive NOTIFY capsLockActiveChanged)
%%
%%
%% Q_PROPERTY(bool capsLockActive READ isCapsLockActive NOTIFY capsLockActiveChanged REVISION 4)
%%

$prototype=bool isCapsLockActive() const
$method=|bool|isCapsLockActive|

%%
%% Q_PROPERTY(bool uppercase READ isUppercase NOTIFY uppercaseChanged)
%%

$prototype=bool isUppercase() const
$method=|bool|isUppercase|

%%
%% Q_PROPERTY(int anchorPosition READ anchorPosition NOTIFY anchorPositionChanged)
%%

$prototype=int anchorPosition() const
$method=|int|anchorPosition|

%%
%% Q_PROPERTY(int cursorPosition READ cursorPosition NOTIFY cursorPositionChanged)
%%

$prototype=int cursorPosition() const
$method=|int|cursorPosition|

%%
%% Q_PROPERTY(Qt::InputMethodHints inputMethodHints READ inputMethodHints NOTIFY inputMethodHintsChanged)
%%

$prototype=Qt::InputMethodHints inputMethodHints() const
$method=|Qt::InputMethodHints|inputMethodHints|

%%
%% Q_PROPERTY(QString preeditText READ preeditText WRITE setPreeditText NOTIFY preeditTextChanged)
%%

$prototype=QString preeditText() const
$method=|QString|preeditText|

$prototype=void setPreeditText(const QString &text, QList<QInputMethodEvent::Attribute> attributes = QList<QInputMethodEvent::Attribute>(), int replaceFrom = 0, int replaceLength = 0)
%% TODO: $method=|void|setPreeditText|const QString &,QList<QInputMethodEvent::Attribute>=QList<QInputMethodEvent::Attribute>,int=0,int=0

%%
%% Q_PROPERTY(QString surroundingText READ surroundingText NOTIFY surroundingTextChanged)
%%

$prototype=QString surroundingText() const
$method=|QString|surroundingText|

%%
%% Q_PROPERTY(QString selectedText READ selectedText NOTIFY selectedTextChanged)
%%

$prototype=QString selectedText() const
$method=|QString|selectedText|

%%
%% Q_PROPERTY(QRectF anchorRectangle READ anchorRectangle NOTIFY anchorRectangleChanged)
%%

$prototype=QRectF anchorRectangle() const
$method=|QRectF|anchorRectangle|

%%
%% Q_PROPERTY(QRectF cursorRectangle READ cursorRectangle NOTIFY cursorRectangleChanged)
%%

$prototype=QRectF cursorRectangle() const
$method=|QRectF|cursorRectangle|

%%
%% Q_PROPERTY(bool animating READ isAnimating WRITE setAnimating NOTIFY animatingChanged)
%%

$prototype=bool isAnimating() const
$method=|bool|isAnimating|

$prototype=void setAnimating(bool isAnimating)
$method=|void|setAnimating|bool

%%
%% Q_PROPERTY(QString locale READ locale NOTIFY localeChanged)
%%

$prototype=QString locale() const
$method=|QString|locale|

%%
%% Q_PROPERTY(QVirtualKeyboardInputEngine *inputEngine READ inputEngine CONSTANT)
%%

$prototype=QVirtualKeyboardInputEngine *inputEngine() const
$method=|QVirtualKeyboardInputEngine *|inputEngine|

%%
%% Q_PROPERTY(bool selectionControlVisible READ isSelectionControlVisible NOTIFY selectionControlVisibleChanged)
%%

$prototype=bool isSelectionControlVisible() const
$method=|bool|isSelectionControlVisible|

%%
%% Q_PROPERTY(bool anchorRectIntersectsClipRect READ anchorRectIntersectsClipRect NOTIFY anchorRectIntersectsClipRectChanged)
%%

$prototype=bool anchorRectIntersectsClipRect() const
$method=|bool|anchorRectIntersectsClipRect|

%%
%% Q_PROPERTY(bool cursorRectIntersectsClipRect READ cursorRectIntersectsClipRect NOTIFY cursorRectIntersectsClipRectChanged)
%%

$prototype=bool cursorRectIntersectsClipRect() const
$method=|bool|cursorRectIntersectsClipRect|

%%
%% Q_PROPERTY(QVirtualKeyboardInputContextPrivate *priv READ priv CONSTANT)
%%

$prototype=QVirtualKeyboardInputContextPrivate *priv() const
%% TODO: ? $method=|QVirtualKeyboardInputContextPrivate *|priv|

%%
%%
%%

$prototype=QList<QInputMethodEvent::Attribute> preeditTextAttributes() const
%% TODO: $method=|QList<QInputMethodEvent::Attribute>|preeditTextAttributes|

$prototype=Q_INVOKABLE void sendKeyClick(int key, const QString &text, int modifiers = 0)
$method=|void|sendKeyClick|int,const QString &,int=0

$prototype=Q_INVOKABLE void commit()
$internalMethod=|void|commit,commit1|

$prototype=Q_INVOKABLE void commit(const QString &text, int replaceFrom = 0, int replaceLength = 0)
$internalMethod=|void|commit,commit2|const QString &,int=0,int=0

//[1]Q_INVOKABLE void commit()
//[2]Q_INVOKABLE void commit(const QString &text, int replaceFrom = 0, int replaceLength = 0)

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTCONTEXT_COMMIT )
{
  if( ISNUMPAR(0) )
  {
    QVirtualKeyboardInputContext_commit1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QVirtualKeyboardInputContext_commit2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=commit

$prototype=Q_INVOKABLE void clear()
$method=|void|clear|

$prototype=Q_INVOKABLE void setSelectionOnFocusObject(const QPointF &anchorPos, const QPointF &cursorPos)
$method=|void|setSelectionOnFocusObject|const QPointF &,const QPointF &

%%
%% SIGNALS
%%

$prototype=void preeditTextChanged()
$signalMethod=|void|preeditTextChanged|

$prototype=void inputMethodHintsChanged()
$signalMethod=|void|inputMethodHintsChanged|

$prototype=void surroundingTextChanged()
$signalMethod=|void|surroundingTextChanged|

$prototype=void selectedTextChanged()
$signalMethod=|void|selectedTextChanged|

$prototype=void anchorPositionChanged()
$signalMethod=|void|anchorPositionChanged|

$prototype=void cursorPositionChanged()
$signalMethod=|void|cursorPositionChanged|

$prototype=void anchorRectangleChanged()
$signalMethod=|void|anchorRectangleChanged|

$prototype=void cursorRectangleChanged()
$signalMethod=|void|cursorRectangleChanged|

$prototype=void shiftActiveChanged()
$signalMethod=|void|shiftActiveChanged|

$prototype=void capsLockActiveChanged()
$signalMethod=|void|capsLockActiveChanged|

$prototype=void uppercaseChanged()
$signalMethod=|void|uppercaseChanged|

$prototype=void animatingChanged()
$signalMethod=|void|animatingChanged|

$prototype=void localeChanged()
$signalMethod=|void|localeChanged|

$prototype=void selectionControlVisibleChanged()
$signalMethod=|void|selectionControlVisibleChanged|

$prototype=void anchorRectIntersectsClipRectChanged()
$signalMethod=|void|anchorRectIntersectsClipRectChanged|

$prototype=void cursorRectIntersectsClipRectChanged()
$signalMethod=|void|cursorRectIntersectsClipRectChanged|

#pragma ENDDUMP
