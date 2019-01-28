/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHDEVICEINFO
#endif

CLASS QBluetoothDeviceDiscoveryAgent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD inquiryType
   METHOD setInquiryType
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredDevices
   METHOD start
   METHOD stop

   METHOD onDeviceDiscovered
   METHOD onFinished
   METHOD onError
   METHOD onCanceled
   METHOD onDeviceUpdated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothDeviceDiscoveryAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceDiscoveryAgent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothDeviceDiscoveryAgent>
#endif
#endif

/*
QBluetoothDeviceDiscoveryAgent(QObject *parent = nullptr)
*/
void QBluetoothDeviceDiscoveryAgent_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
*/
void QBluetoothDeviceDiscoveryAgent_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * o = new QBluetoothDeviceDiscoveryAgent ( *PQBLUETOOTHADDRESS(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]QBluetoothDeviceDiscoveryAgent(QObject *parent = nullptr)
//[2]QBluetoothDeviceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothDeviceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothDeviceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

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
QBluetoothDeviceDiscoveryAgent::InquiryType inquiryType() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_INQUIRYTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->inquiryType () );
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
void setInquiryType(QBluetoothDeviceDiscoveryAgent::InquiryType type)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_SETINQUIRYTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInquiryType ( (QBluetoothDeviceDiscoveryAgent::InquiryType) hb_parni(1) );
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
bool isActive() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive () );
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
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
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
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString () );
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
QList<QBluetoothDeviceInfo> discoveredDevices() const
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_DISCOVEREDDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBluetoothDeviceInfo> list = obj->discoveredDevices ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBLUETOOTHDEVICEINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QBluetoothDeviceInfo *) new QBluetoothDeviceInfo ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBLUETOOTHDEVICEINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
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
void start()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start ();
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
void stop()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * obj = (QBluetoothDeviceDiscoveryAgent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
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
void deviceDiscovered( const QBluetoothDeviceInfo & info )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONDEVICEDISCOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * sender = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "deviceDiscovered(QBluetoothDeviceInfo)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBluetoothDeviceDiscoveryAgent::deviceDiscovered, 
                                                              [sender]
                                                              (const QBluetoothDeviceInfo & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "deviceDiscovered(QBluetoothDeviceInfo)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QBLUETOOTHDEVICEINFO" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "deviceDiscovered(QBluetoothDeviceInfo)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "deviceDiscovered(QBluetoothDeviceInfo)" );

      QObject::disconnect( Signals2_get_connection( sender, "deviceDiscovered(QBluetoothDeviceInfo)" ) );

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
#endif
}

/*
void finished()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * sender = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "finished()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBluetoothDeviceDiscoveryAgent::finished, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "finished()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "finished()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "finished()" );

      QObject::disconnect( Signals2_get_connection( sender, "finished()" ) );

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
#endif
}

/*
void error( QBluetoothDeviceDiscoveryAgent::Error error )
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * sender = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "error(QBluetoothDeviceDiscoveryAgent::Error)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QBluetoothDeviceDiscoveryAgent::Error>::of(&QBluetoothDeviceDiscoveryAgent::error), 
                                                              [sender]
                                                              (QBluetoothDeviceDiscoveryAgent::Error arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "error(QBluetoothDeviceDiscoveryAgent::Error)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "error(QBluetoothDeviceDiscoveryAgent::Error)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "error(QBluetoothDeviceDiscoveryAgent::Error)" );

      QObject::disconnect( Signals2_get_connection( sender, "error(QBluetoothDeviceDiscoveryAgent::Error)" ) );

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
#endif
}

/*
void canceled()
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothDeviceDiscoveryAgent * sender = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "canceled()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBluetoothDeviceDiscoveryAgent::canceled, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "canceled()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "canceled()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "canceled()" );

      QObject::disconnect( Signals2_get_connection( sender, "canceled()" ) );

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
#endif
}

/*
void deviceUpdated(const QBluetoothDeviceInfo &info, QBluetoothDeviceInfo::Fields updatedFields)
*/
HB_FUNC_STATIC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONDEVICEUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_ANDROID
  QBluetoothDeviceDiscoveryAgent * sender = (QBluetoothDeviceDiscoveryAgent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "deviceUpdated(QBluetoothDeviceInfo,QBluetoothDeviceInfo::Fields)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBluetoothDeviceDiscoveryAgent::deviceUpdated, 
                                                              [sender]
                                                              (const QBluetoothDeviceInfo & arg1, QBluetoothDeviceInfo::Fields arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "deviceUpdated(QBluetoothDeviceInfo,QBluetoothDeviceInfo::Fields)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHDEVICEDISCOVERYAGENT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QBLUETOOTHDEVICEINFO" );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, (int) arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "deviceUpdated(QBluetoothDeviceInfo,QBluetoothDeviceInfo::Fields)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "deviceUpdated(QBluetoothDeviceInfo,QBluetoothDeviceInfo::Fields)" );

      QObject::disconnect( Signals2_get_connection( sender, "deviceUpdated(QBluetoothDeviceInfo,QBluetoothDeviceInfo::Fields)" ) );

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
#endif
#endif
}

#pragma ENDDUMP
