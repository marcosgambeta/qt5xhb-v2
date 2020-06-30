%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests
$addRequest=QChildEvent
$addRequest=QEvent
$addRequest=QTimerEvent

$beginClassFrom=

$addMethods

   METHOD onAcceptDropsChangeEvent
   METHOD onActionAddedEvent
   METHOD onActionChangedEvent
   METHOD onActionRemovedEvent
   METHOD onActivateControlEvent
   METHOD onActivationChangeEvent
   METHOD onApplicationActivateEvent
   METHOD onApplicationActivatedEvent
   METHOD onApplicationDeactivateEvent
   METHOD onApplicationDeactivatedEvent
   METHOD onApplicationFontChangeEvent
   METHOD onApplicationLayoutDirectionChangeEvent
   METHOD onApplicationPaletteChangeEvent
   METHOD onApplicationWindowIconChangeEvent
   METHOD onChildAddedEvent
   METHOD onChildPolishedEvent
   METHOD onChildRemovedEvent
   METHOD onClipboardEvent
   METHOD onCloseEvent
   METHOD onCloseSoftwareInputPanelEvent
   METHOD onContentsRectChangeEvent
   METHOD onContextMenuEvent
   METHOD onCreateEvent
   METHOD onCursorChangeEvent
   METHOD onDeactivateControlEvent
   METHOD onDeferredDeleteEvent
   METHOD onDestroyEvent
   METHOD onDragEnterEvent
   METHOD onDragLeaveEvent
   METHOD onDragMoveEvent
   METHOD onDragResponseEvent
   METHOD onDropEvent
   METHOD onDynamicPropertyChangeEvent
   METHOD onEmbeddingControlEvent
   METHOD onEnabledChangeEvent
   METHOD onEnterEvent
   METHOD onEnterEditFocusEvent
   METHOD onEnterWhatsThisModeEvent
   METHOD onExposeEvent
   METHOD onFileOpenEvent
   METHOD onFocusAboutToChangeEvent
   METHOD onFocusInEvent
   METHOD onFocusOutEvent
   METHOD onFontChangeEvent
   METHOD onFutureCallOutEvent
   METHOD onGestureEvent
   METHOD onGestureOverrideEvent
   METHOD onGrabKeyboardEvent
   METHOD onGrabMouseEvent
   METHOD onGraphicsSceneContextMenuEvent
   METHOD onGraphicsSceneDragEnterEvent
   METHOD onGraphicsSceneDragLeaveEvent
   METHOD onGraphicsSceneDragMoveEvent
   METHOD onGraphicsSceneDropEvent
   METHOD onGraphicsSceneHelpEvent
   METHOD onGraphicsSceneHoverEnterEvent
   METHOD onGraphicsSceneHoverLeaveEvent
   METHOD onGraphicsSceneHoverMoveEvent
   METHOD onGraphicsSceneMouseDoubleClickEvent
   METHOD onGraphicsSceneMouseMoveEvent
   METHOD onGraphicsSceneMousePressEvent
   METHOD onGraphicsSceneMouseReleaseEvent
   METHOD onGraphicsSceneMoveEvent
   METHOD onGraphicsSceneResizeEvent
   METHOD onGraphicsSceneWheelEvent
   METHOD onHelpRequestEvent
   METHOD onHideEvent
   METHOD onHideToParentEvent
   METHOD onHoverEnterEvent
   METHOD onHoverLeaveEvent
   METHOD onHoverMoveEvent
   METHOD onIconDragEvent
   METHOD onIconTextChangeEvent
   METHOD onInputMethodEvent
   METHOD onInputMethodQueryEvent
   METHOD onKeyboardLayoutChangeEvent
   METHOD onKeyPressEvent
   METHOD onKeyReleaseEvent
   METHOD onLanguageChangeEvent
   METHOD onLayoutDirectionChangeEvent
   METHOD onLayoutRequestEvent
   METHOD onLeaveEvent
   METHOD onLeaveEditFocusEvent
   METHOD onLeaveWhatsThisModeEvent
   METHOD onLocaleChangeEvent
   METHOD onMacGLClearDrawableEvent
   METHOD onMacGLWindowChangeEvent
   METHOD onMacSizeChangeEvent
   METHOD onMetaCallEvent
   METHOD onModifiedChangeEvent
   METHOD onMouseButtonDblClickEvent
   METHOD onMouseButtonPressEvent
   METHOD onMouseButtonReleaseEvent
   METHOD onMouseMoveEvent
   METHOD onMouseTrackingChangeEvent
   METHOD onMoveEvent
   METHOD onNativeGestureEvent
   METHOD onNetworkReplyUpdatedEvent
   METHOD onNonClientAreaMouseButtonDblClickEvent
   METHOD onNonClientAreaMouseButtonPressEvent
   METHOD onNonClientAreaMouseButtonReleaseEvent
   METHOD onNonClientAreaMouseMoveEvent
   METHOD onNoneEvent
   METHOD onOkRequestEvent
   METHOD onOrientationChangeEvent
   METHOD onPaintEvent
   METHOD onPaletteChangeEvent
   METHOD onParentAboutToChangeEvent
   METHOD onParentChangeEvent
   METHOD onPlatformPanelEvent
   METHOD onPolishEvent
   METHOD onPolishRequestEvent
   METHOD onQueryWhatsThisEvent
   METHOD onQuitEvent
   METHOD onRequestSoftwareInputPanelEvent
   METHOD onResizeEvent
   METHOD onScrollEvent
   METHOD onScrollPrepareEvent
   METHOD onShortcutEvent
   METHOD onShortcutOverrideEvent
   METHOD onShowEvent
   METHOD onShowToParentEvent
   METHOD onShowWindowRequestEvent
   METHOD onSockActEvent
   METHOD onSockCloseEvent
   METHOD onSpeechEvent
   METHOD onStateMachineSignalEvent
   METHOD onStateMachineWrappedEvent
   METHOD onStatusTipEvent
   METHOD onStyleEvent
   METHOD onStyleAnimationUpdateEvent
   METHOD onStyleChangeEvent
   METHOD onTabletEnterProximityEvent
   METHOD onTabletLeaveProximityEvent
   METHOD onTabletMoveEvent
   METHOD onTabletPressEvent
   METHOD onTabletReleaseEvent
   METHOD onThemeChangeEvent
   METHOD onThreadChangeEvent
   METHOD onTimerEvent
   METHOD onToolBarChangeEvent
   METHOD onToolTipEvent
   METHOD onToolTipChangeEvent
   METHOD onTouchBeginEvent
   METHOD onTouchCancelEvent
   METHOD onTouchEndEvent
   METHOD onTouchUpdateEvent
   METHOD onUngrabKeyboardEvent
   METHOD onUngrabMouseEvent
   METHOD onUpdateLaterEvent
   METHOD onUpdateRequestEvent
   METHOD onWhatsThisEvent
   METHOD onWhatsThisClickedEvent
   METHOD onWheelEvent
   METHOD onWindowActivateEvent
   METHOD onWindowBlockedEvent
   METHOD onWindowDeactivateEvent
   METHOD onWindowIconChangeEvent
   METHOD onWindowStateChangeEvent
   METHOD onWindowTitleChangeEvent
   METHOD onWindowUnblockedEvent
   METHOD onWinEventActEvent
   METHOD onWinIdChangeEvent
   METHOD onZeroTimerEventEvent
   METHOD onZOrderChangeEvent

$addSignals

   METHOD connect
   METHOD disconnect
   METHOD disconnectAll
   METHOD disconnectAllEvents
   METHOD disconnectAllSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QEvent>
#include <QtCore/QThread>
#include <QtCore/QVariant>
#include <QtWidgets/QWidget>

void _qtxhb_processOnEventMethod( QEvent::Type event );
%% void _qtxhb_processOnEventMethod2( QEvent::Type event );

$prototype=Q_INVOKABLE explicit QObject ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=bool blockSignals( bool block )

$prototypeV2=const QObjectList & children() const
%% TODO: to check
%% $method=|const QObjectList &|children|

$prototypeV2=void dumpObjectInfo()

$prototypeV2=void dumpObjectTree()

$prototype=QList<QByteArray> dynamicPropertyNames () const
$method=|QList<QByteArray>|dynamicPropertyNames||#ifndef QT_NO_PROPERTIES

$prototypeV2=virtual bool event( QEvent * e )

$prototypeV2=virtual bool eventFilter( QObject * watched, QEvent * event )

$prototype=T findChild(const QString & name = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
$method=|QObject *|findChild<QObject *>,findChild|const QString &=QString(),Qt::FindChildOptions=Qt::FindChildrenRecursively

$prototype=QList<T> findChildren(const QString &aName = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
$internalMethod=|QList<QObject *>|findChildren<QObject *>,findChildren1|const QString &=QString(),Qt::FindChildOptions=Qt::FindChildrenRecursively

$prototype=QList<T> findChildren(const QRegExp &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
$internalMethod=|QList<QObject *>|findChildren<QObject *>,findChildren2|const QRegExp &,Qt::FindChildOptions=Qt::FindChildrenRecursively|#ifndef QT_NO_REGEXP

$prototype=QList<T> findChildren(const QRegularExpression &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
$internalMethod=|QList<QObject *>|findChildren<QObject *>,findChildren3|const QRegularExpression &,Qt::FindChildOptions=Qt::FindChildrenRecursively|#ifndef QT_NO_REGULAREXPRESSION

/*
[1]QList<T> findChildren(const QString &aName = QString(), Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
[2]QList<T> findChildren(const QRegExp &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
[3]QList<T> findChildren(const QRegularExpression &re, Qt::FindChildOptions options = Qt::FindChildrenRecursively) const
*/

HB_FUNC_STATIC( QOBJECT_FINDCHILDREN )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTNUM(2) )
  {
    QObject_findChildren1();
  }
  else if( ISBETWEEN(1,2) && ISQREGEXP(1) && ISOPTNUM(2) )
  {
    QObject_findChildren2();
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTNUM(2) )
  {
    QObject_findChildren3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=findChildren

$prototypeV2=bool inherits( const char * className ) const

$prototypeV2=void installEventFilter( QObject * filterObj )

$prototypeV2=bool isWidgetType() const

$prototypeV2=bool isWindowType() const

$prototypeV2=void killTimer( int id )

$prototypeV2=virtual const QMetaObject * metaObject() const

$prototypeV2=void moveToThread( QThread * targetThread )

$prototypeV2=QString objectName() const

$prototypeV2=void setObjectName( const QString & name )

$prototypeV2=QObject * parent() const

$prototypeV2=void setParent( QObject * parent )

$prototype=QVariant property ( const char * name ) const
$method=|QVariant|property|const char *|#ifndef QT_NO_PROPERTIES

$prototype=bool setProperty ( const char * name, const QVariant & value )
$method=|bool|setProperty|const char *,const QVariant &|#ifndef QT_NO_PROPERTIES

$prototypeV2=void removeEventFilter( QObject * obj )

$prototypeV2=bool signalsBlocked() const

$prototypeV2=int startTimer( int interval, Qt::TimerType timerType = Qt::CoarseTimer )

$prototypeV2=QThread * thread() const

$prototypeV2=void deleteLater()

$prototypeV2=static QString tr( const char * sourceText, const char * disambiguation = nullptr, int n = -1 )

HB_FUNC_STATIC( QOBJECT_DISCONNECTALL )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( hb_pcount() == 0 )
    {
      Qt5xHb::Events_disconnect_all_events( obj, false );
      Qt5xHb::Signals_disconnect_all_signals( obj, false );
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Qt5xHb::Events_disconnect_all_events( obj, PBOOL(1) );
      Qt5xHb::Signals_disconnect_all_signals( obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLEVENTS )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( hb_pcount() == 0 )
    {
      Qt5xHb::Events_disconnect_all_events( obj, false );
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Qt5xHb::Events_disconnect_all_events( obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLSIGNALS )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnect_all_signals( obj, false );
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Qt5xHb::Signals_disconnect_all_signals( obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

%%
%% eventos
%%

void _qtxhb_processOnEventMethod( QEvent::Type event )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( hb_pcount() == 1 && hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) )
  {
    PHB_ITEM item = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );

    if( item )
    {
      hb_retl( Qt5xHb::Events_connect_event( obj, event, item ) );
    }
    else
    {
      hb_retl(0);
    }
  }
  else if( hb_pcount() == 0 )
  {
    hb_retl( Qt5xHb::Events_disconnect_event( obj, event ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% void _qtxhb_processOnEventMethod2( QEvent::Type event )
%% {
%%   auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();
%%
%%   if( hb_pcount() == 2 && hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) )
%%   {
%%     PHB_ITEM item = hb_itemNew( hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) );
%%
%%     if( item )
%%     {
%%       hb_retl( Qt5xHb::Events_connect_event( obj, event, item ) );
%%     }
%%     else
%%     {
%%       hb_retl(0);
%%     }
%%   }
%%   else if( hb_pcount() == 1 )
%%   {
%%     hb_retl( Qt5xHb::Events_disconnect_event( obj, event ) );
%%   }
%%   else
%%   {
%%     hb_retl(0);
%%   }
%% }

$eventMethod=AcceptDropsChange

$eventMethod=ActionAdded

$eventMethod=ActionChanged

$eventMethod=ActionRemoved

$eventMethod=ActivateControl

$eventMethod=ActivationChange

$eventMethod=ApplicationActivate

$eventMethod=ApplicationActivated

$eventMethod=ApplicationDeactivate

$eventMethod=ApplicationDeactivated

$eventMethod=ApplicationFontChange

$eventMethod=ApplicationLayoutDirectionChange

$eventMethod=ApplicationPaletteChange

$eventMethod=ApplicationWindowIconChange

$eventMethod=ChildAdded

$eventMethod=ChildPolished

$eventMethod=ChildRemoved

$eventMethod=Clipboard

$eventMethod=Close

$eventMethod=CloseSoftwareInputPanel

$eventMethod=ContentsRectChange

$eventMethod=ContextMenu

$eventMethod=Create

$eventMethod=CursorChange

$eventMethod=DeactivateControl

$eventMethod=DeferredDelete

$eventMethod=Destroy

$eventMethod=DragEnter

$eventMethod=DragLeave

$eventMethod=DragMove

$eventMethod=DragResponse

$eventMethod=Drop

$eventMethod=DynamicPropertyChange

$eventMethod=EmbeddingControl

$eventMethod=EnabledChange

$eventMethod=Enter

HB_FUNC_STATIC( QOBJECT_ONENTEREDITFOCUSEVENT )
{
#ifdef QT_KEYPAD_NAVIGATION
  _qtxhb_processOnEventMethod( QEvent::EnterEditFocus );
#endif
}

$eventMethod=EnterWhatsThisMode

$eventMethod=Expose

$eventMethod=FileOpen

$eventMethod=FocusAboutToChange

$eventMethod=FocusIn

$eventMethod=FocusOut

$eventMethod=FontChange

$eventMethod=FutureCallOut

$eventMethod=Gesture

$eventMethod=GestureOverride

$eventMethod=GrabKeyboard

$eventMethod=GrabMouse

$eventMethod=GraphicsSceneContextMenu

$eventMethod=GraphicsSceneDragEnter

$eventMethod=GraphicsSceneDragLeave

$eventMethod=GraphicsSceneDragMove

$eventMethod=GraphicsSceneDrop

$eventMethod=GraphicsSceneHelp

$eventMethod=GraphicsSceneHoverEnter

$eventMethod=GraphicsSceneHoverLeave

$eventMethod=GraphicsSceneHoverMove

$eventMethod=GraphicsSceneMouseDoubleClick

$eventMethod=GraphicsSceneMouseMove

$eventMethod=GraphicsSceneMousePress

$eventMethod=GraphicsSceneMouseRelease

$eventMethod=GraphicsSceneMove

$eventMethod=GraphicsSceneResize

$eventMethod=GraphicsSceneWheel

$eventMethod=HelpRequest

$eventMethod=Hide

$eventMethod=HideToParent

$eventMethod=HoverEnter

$eventMethod=HoverLeave

$eventMethod=HoverMove

$eventMethod=IconDrag

$eventMethod=IconTextChange

$eventMethod=InputMethod

$eventMethod=InputMethodQuery

$eventMethod=KeyboardLayoutChange

$eventMethod=KeyPress

$eventMethod=KeyRelease

$eventMethod=LanguageChange

$eventMethod=LayoutDirectionChange

$eventMethod=LayoutRequest

$eventMethod=Leave

HB_FUNC_STATIC( QOBJECT_ONLEAVEEDITFOCUSEVENT )
{
#ifdef QT_KEYPAD_NAVIGATION
  _qtxhb_processOnEventMethod( QEvent::LeaveEditFocus );
#endif
}

$eventMethod=LeaveWhatsThisMode

$eventMethod=LocaleChange

$eventMethod=MacGLClearDrawable

$eventMethod=MacGLWindowChange

$eventMethod=MacSizeChange

$eventMethod=MetaCall

$eventMethod=ModifiedChange

$eventMethod=MouseButtonDblClick

$eventMethod=MouseButtonPress

$eventMethod=MouseButtonRelease

$eventMethod=MouseMove

$eventMethod=MouseTrackingChange

$eventMethod=Move

$eventMethod=NativeGesture

$eventMethod=NetworkReplyUpdated

$eventMethod=NonClientAreaMouseButtonDblClick

$eventMethod=NonClientAreaMouseButtonPress

$eventMethod=NonClientAreaMouseButtonRelease

$eventMethod=NonClientAreaMouseMove

$eventMethod=None

$eventMethod=OkRequest

$eventMethod=OrientationChange

$eventMethod=Paint

$eventMethod=PaletteChange

$eventMethod=ParentAboutToChange

$eventMethod=ParentChange

$eventMethod=PlatformPanel

$eventMethod=Polish

$eventMethod=PolishRequest

$eventMethod=QueryWhatsThis

$eventMethod=Quit

$eventMethod=RequestSoftwareInputPanel

$eventMethod=Resize

$eventMethod=Scroll

$eventMethod=ScrollPrepare

$eventMethod=Shortcut

$eventMethod=ShortcutOverride

$eventMethod=Show

$eventMethod=ShowToParent

$eventMethod=ShowWindowRequest

$eventMethod=SockAct

$eventMethod=SockClose

$eventMethod=Speech

$eventMethod=StateMachineSignal

$eventMethod=StateMachineWrapped

$eventMethod=StatusTip

$eventMethod=Style

$eventMethod=StyleAnimationUpdate

$eventMethod=StyleChange

$eventMethod=TabletEnterProximity

$eventMethod=TabletLeaveProximity

$eventMethod=TabletMove

$eventMethod=TabletPress

$eventMethod=TabletRelease

$eventMethod=ThemeChange

$eventMethod=ThreadChange

$eventMethod=Timer

$eventMethod=ToolBarChange

$eventMethod=ToolTip

$eventMethod=ToolTipChange

$eventMethod=TouchBegin

$eventMethod=TouchCancel

$eventMethod=TouchEnd

$eventMethod=TouchUpdate

$eventMethod=UngrabKeyboard

$eventMethod=UngrabMouse

$eventMethod=UpdateLater

$eventMethod=UpdateRequest

$eventMethod=WhatsThis

$eventMethod=WhatsThisClicked

$eventMethod=Wheel

$eventMethod=WindowActivate

$eventMethod=WindowBlocked

$eventMethod=WindowDeactivate

$eventMethod=WindowIconChange

$eventMethod=WindowStateChange

$eventMethod=WindowTitleChange

$eventMethod=WindowUnblocked

$eventMethod=WinEventAct

$eventMethod=WinIdChange

$eventMethod=ZeroTimerEvent

$eventMethod=ZOrderChange

HB_FUNC_STATIC( QOBJECT_CONNECT )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym != nullptr )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        PHB_ITEM codeblock = hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL );
        hb_vmPush( codeblock );
        hb_vmSend( 1 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym != nullptr )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        hb_vmSend( 0 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(2) && ISNUM(1) && hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) )
    {
      int event = hb_parni(1);
%%       _qtxhb_processOnEventMethod2( (QEvent::Type) event );

      PHB_ITEM item = hb_itemNew( hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) );

      if( item )
      {
        hb_retl( Qt5xHb::Events_connect_event( obj, event, item ) );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( ISNUMPAR(1) && ISNUM(1) )
    {
      int event = hb_parni(1);
%%       _qtxhb_processOnEventMethod2( (QEvent::Type) event );

      hb_retl( Qt5xHb::Events_disconnect_event( obj, event ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QOBJECT_DISCONNECT )
{
  auto obj = (QObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym != nullptr )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        hb_vmSend( 0 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(1) && ISNUM(1) )
    {
      int event = hb_parni(1);
%%       _qtxhb_processOnEventMethod2( (QEvent::Type) event );

      hb_retl( Qt5xHb::Events_disconnect_event( obj, event ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

%%
%% SIGNALS
%%

$prototypeV2=void destroyed( QObject * obj = nullptr )

$prototypeV2=void objectNameChanged( const QString & objectName )

$extraMethods

#pragma ENDDUMP
