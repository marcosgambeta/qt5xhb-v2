/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QQuickWebEngineScript INHERIT QObject

   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD sourceUrl
   METHOD setSourceUrl
   METHOD sourceCode
   METHOD setSourceCode
   METHOD injectionPoint
   METHOD setInjectionPoint
   METHOD worldId
   METHOD setWorldId
   METHOD runOnSubframes
   METHOD setRunOnSubframes
   METHOD toString

   METHOD onInjectionPointChanged
   METHOD onNameChanged
   METHOD onRunOnSubframesChanged
   METHOD onSourceCodeChanged
   METHOD onSourceUrlChanged
   METHOD onWorldIdChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuickWebEngineScript
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QQuickWebEngineScript>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QQuickWebEngineScript>
#endif
#endif

/*
explicit QQuickWebEngineScript(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQuickWebEngineScript * o = new QQuickWebEngineScript ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QQuickWebEngineScript()
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setName(const QString &name)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setName ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QUrl sourceUrl() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SOURCEURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->sourceUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setSourceUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETSOURCEURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSourceUrl ( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString sourceCode() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SOURCECODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceCode () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setSourceCode(const QString &code)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETSOURCECODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setSourceCode ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
InjectionPoint injectionPoint() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_INJECTIONPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->injectionPoint () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setInjectionPoint(InjectionPoint injectionPoint)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETINJECTIONPOINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInjectionPoint ( (QQuickWebEngineScript::InjectionPoint) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
ScriptWorldId worldId() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_WORLDID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->worldId () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setWorldId(ScriptWorldId scriptWorldId)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETWORLDID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setWorldId ( (QQuickWebEngineScript::ScriptWorldId) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool runOnSubframes() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_RUNONSUBFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->runOnSubframes () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Q_INVOKABLE void setRunOnSubframes(bool on)
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_SETRUNONSUBFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setRunOnSubframes ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Q_INVOKABLE QString toString() const
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QQuickWebEngineScript * obj = (QQuickWebEngineScript *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void injectionPointChanged( QQuickWebEngineScript::InjectionPoint injectionPoint )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONINJECTIONPOINTCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::injectionPointChanged, 
                                                              [sender]
                                                              (QQuickWebEngineScript::InjectionPoint arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)" );

      QObject::disconnect( Signals2_get_connection( sender, "injectionPointChanged(QQuickWebEngineScript::InjectionPoint)" ) );

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
void nameChanged( const QString & name )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONNAMECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "nameChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::nameChanged, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "nameChanged(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "nameChanged(QString)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "nameChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "nameChanged(QString)" ) );

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
void runOnSubframesChanged( bool on )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONRUNONSUBFRAMESCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "runOnSubframesChanged(bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::runOnSubframesChanged, 
                                                              [sender]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "runOnSubframesChanged(bool)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "runOnSubframesChanged(bool)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "runOnSubframesChanged(bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "runOnSubframesChanged(bool)" ) );

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
void sourceCodeChanged( const QString & code )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONSOURCECODECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "sourceCodeChanged(QString)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::sourceCodeChanged, 
                                                              [sender]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "sourceCodeChanged(QString)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "sourceCodeChanged(QString)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "sourceCodeChanged(QString)" );

      QObject::disconnect( Signals2_get_connection( sender, "sourceCodeChanged(QString)" ) );

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
void sourceUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONSOURCEURLCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "sourceUrlChanged(QUrl)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::sourceUrlChanged, 
                                                              [sender]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "sourceUrlChanged(QUrl)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "sourceUrlChanged(QUrl)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "sourceUrlChanged(QUrl)" );

      QObject::disconnect( Signals2_get_connection( sender, "sourceUrlChanged(QUrl)" ) );

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
void worldIdChanged( QQuickWebEngineScript::ScriptWorldId scriptWorldId )
*/
HB_FUNC_STATIC( QQUICKWEBENGINESCRIPT_ONWORLDIDCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQuickWebEngineScript::worldIdChanged, 
                                                              [sender]
                                                              (QQuickWebEngineScript::ScriptWorldId arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQUICKWEBENGINESCRIPT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)", connection );

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
    QQuickWebEngineScript * sender = (QQuickWebEngineScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)" );

      QObject::disconnect( Signals2_get_connection( sender, "worldIdChanged(QQuickWebEngineScript::ScriptWorldId)" ) );

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
