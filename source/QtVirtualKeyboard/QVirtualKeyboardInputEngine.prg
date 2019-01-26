/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIRTUALKEYBOARDABSTRACTINPUTMETHOD
REQUEST QVIRTUALKEYBOARDINPUTCONTEXT
REQUEST QVIRTUALKEYBOARDSELECTIONLISTMODEL
#endif

CLASS QVirtualKeyboardInputEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeKey
   METHOD previousKey
   METHOD inputMethod
   METHOD setInputMethod
   METHOD inputModes
   METHOD inputMode
   METHOD setInputMode
   METHOD patternRecognitionModes
   METHOD wordCandidateListModel
   METHOD wordCandidateListVisibleHint
   METHOD init
   METHOD virtualKeyPress
   METHOD virtualKeyCancel
   METHOD virtualKeyRelease
   METHOD virtualKeyClick
   METHOD inputContext
   METHOD traceEnd
   METHOD clickPreeditText

   METHOD onVirtualKeyClicked
   METHOD onActiveKeyChanged
   METHOD onPreviousKeyChanged
   METHOD onInputMethodChanged
   METHOD onInputMethodReset
   METHOD onInputMethodUpdate
   METHOD onInputModesChanged
   METHOD onInputModeChanged
   METHOD onPatternRecognitionModesChanged
   METHOD onWordCandidateListModelChanged
   METHOD onWordCandidateListVisibleHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVirtualKeyboardInputEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVirtualKeyboardInputEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QVirtualKeyboardInputEngine>
#endif

/*
explicit QVirtualKeyboardInputEngine(QVirtualKeyboardInputContext *parent = nullptr)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQVIRTUALKEYBOARDINPUTCONTEXT(1)||ISNIL(1)) )
  {
    QVirtualKeyboardInputEngine * o = new QVirtualKeyboardInputEngine ( OPQVIRTUALKEYBOARDINPUTCONTEXT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QVirtualKeyboardInputEngine()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_DELETE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Key activeKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ACTIVEKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->activeKey () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::Key previousKey() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PREVIOUSKEY )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->previousKey () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVirtualKeyboardAbstractInputMethod *inputMethod() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardAbstractInputMethod * ptr = obj->inputMethod ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setInputMethod(QVirtualKeyboardAbstractInputMethod *inputMethod)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMETHOD )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) )
    {
#endif
      obj->setInputMethod ( PQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<int> inputModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->inputModes ();
      _qt5xhb_convert_qlist_int_to_array ( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
InputMode inputMode() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTMODE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->inputMode () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setInputMode(InputMode inputMode)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_SETINPUTMODE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInputMode ( (QVirtualKeyboardInputEngine::InputMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<int> patternRecognitionModes() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_PATTERNRECOGNITIONMODES )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->patternRecognitionModes ();
      _qt5xhb_convert_qlist_int_to_array ( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVirtualKeyboardSelectionListModel *wordCandidateListModel() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTMODEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardSelectionListModel * ptr = obj->wordCandidateListModel ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDSELECTIONLISTMODEL" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool wordCandidateListVisibleHint() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_WORDCANDIDATELISTVISIBLEHINT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->wordCandidateListVisibleHint () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void init()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INIT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->init ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE bool virtualKeyPress(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers, bool repeat)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYPRESS )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISCHAR(2) && ISNUM(3) && ISLOG(4) )
    {
#endif
      RBOOL( obj->virtualKeyPress ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3), PBOOL(4) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE void virtualKeyCancel()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCANCEL )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->virtualKeyCancel ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE bool virtualKeyRelease(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYRELEASE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyRelease ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE bool virtualKeyClick(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_VIRTUALKEYCLICK )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->virtualKeyClick ( (Qt::Key) hb_parni(1), PQSTRING(2), (Qt::KeyboardModifiers) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVirtualKeyboardInputContext *inputContext() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_INPUTCONTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardInputContext * ptr = obj->inputContext ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QVIRTUALKEYBOARDINPUTCONTEXT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE QVirtualKeyboardTrace *traceBegin(int traceId, PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
*/

/*
Q_INVOKABLE bool traceEnd(QVirtualKeyboardTrace *trace)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_TRACEEND )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIRTUALKEYBOARDTRACE(1) )
    {
#endif
      RBOOL( obj->traceEnd ( PQVIRTUALKEYBOARDTRACE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE bool reselect(int cursorPosition, const ReselectFlags &reselectFlags)
*/

/*
bool clickPreeditText(int cursorPosition)
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_CLICKPREEDITTEXT )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->clickPreeditText ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void reset() [private] [slot]
*/

/*
void update() [private] [slot]
*/

/*
void shiftChanged() [private] [slot]
*/

/*
void updateSelectionListModels() [private] [slot]
*/

/*
void updateInputModes() [private] [slot]
*/

/*
void timerEvent(QTimerEvent *timerEvent) [protected]
*/

/*
void virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONVIRTUALKEYCLICKED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::virtualKeyClicked, 
                                                              [sender]
                                                              (Qt::Key arg1, const QString & arg2, Qt::KeyboardModifiers arg3, bool arg4) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            PHB_ITEM pArg3 = hb_itemPutNI( NULL, (int) arg3 );
            PHB_ITEM pArg4 = hb_itemPutL( NULL, arg4 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 5, pSender, pArg1, pArg2, pArg3, pArg4 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
            hb_itemRelease( pArg4 );
          }

        });

        Signals2_store_connection( sender, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void activeKeyChanged( Qt::Key key )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONACTIVEKEYCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "activeKeyChanged(Qt::Key)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::activeKeyChanged, 
                                                              [sender]
                                                              (Qt::Key arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "activeKeyChanged(Qt::Key)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "activeKeyChanged(Qt::Key)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "activeKeyChanged(Qt::Key)" );

      QObject::disconnect( Signals2_get_connection( sender, "activeKeyChanged(Qt::Key)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void previousKeyChanged( Qt::Key key )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPREVIOUSKEYCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "previousKeyChanged(Qt::Key)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::previousKeyChanged, 
                                                              [sender]
                                                              (Qt::Key arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "previousKeyChanged(Qt::Key)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "previousKeyChanged(Qt::Key)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "previousKeyChanged(Qt::Key)" );

      QObject::disconnect( Signals2_get_connection( sender, "previousKeyChanged(Qt::Key)" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void inputMethodChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "inputMethodChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "inputMethodChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "inputMethodChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "inputMethodChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "inputMethodChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void inputMethodReset()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODRESET )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "inputMethodReset()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodReset, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "inputMethodReset()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "inputMethodReset()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "inputMethodReset()" );

      QObject::disconnect( Signals2_get_connection( sender, "inputMethodReset()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void inputMethodUpdate()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODUPDATE )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "inputMethodUpdate()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputMethodUpdate, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "inputMethodUpdate()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "inputMethodUpdate()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "inputMethodUpdate()" );

      QObject::disconnect( Signals2_get_connection( sender, "inputMethodUpdate()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void inputModesChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODESCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "inputModesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputModesChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "inputModesChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "inputModesChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "inputModesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "inputModesChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void inputModeChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODECHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "inputModeChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::inputModeChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "inputModeChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "inputModeChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "inputModeChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "inputModeChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void patternRecognitionModesChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPATTERNRECOGNITIONMODESCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "patternRecognitionModesChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::patternRecognitionModesChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "patternRecognitionModesChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "patternRecognitionModesChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "patternRecognitionModesChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "patternRecognitionModesChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void wordCandidateListModelChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTMODELCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "wordCandidateListModelChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::wordCandidateListModelChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "wordCandidateListModelChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "wordCandidateListModelChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "wordCandidateListModelChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "wordCandidateListModelChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void wordCandidateListVisibleHintChanged()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTVISIBLEHINTCHANGED )
{
  QVirtualKeyboardInputEngine * sender = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "wordCandidateListVisibleHintChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QVirtualKeyboardInputEngine::wordCandidateListVisibleHintChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "wordCandidateListVisibleHintChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QVIRTUALKEYBOARDINPUTENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "wordCandidateListVisibleHintChanged()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else
    {
      hb_retl( false );
    }
  }
  else if( hb_pcount() == 0 )
  {
    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "wordCandidateListVisibleHintChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "wordCandidateListVisibleHintChanged()" ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
