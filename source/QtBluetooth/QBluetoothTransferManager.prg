/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERREPLY
#endif

CLASS QBluetoothTransferManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD put

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothTransferManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferManager>
#endif
#endif

#include <QBluetoothTransferReply>

/*
QBluetoothTransferManager(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBluetoothTransferManager * o = new QBluetoothTransferManager ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) _qt5xhb_itemGetPtrStackSelfItem();

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
QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_PUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBLUETOOTHTRANSFERREQUEST(1) && ISQIODEVICE(2) )
    {
#endif
      QBluetoothTransferReply * ptr = obj->put ( *PQBLUETOOTHTRANSFERREQUEST(1), PQIODEVICE(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QBLUETOOTHTRANSFERREPLY" );
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
void finished( QBluetoothTransferReply * reply )
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( hb_pcount() == 1 )
  {
    QBluetoothTransferManager * sender = (QBluetoothTransferManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "finished(QBluetoothTransferReply*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBluetoothTransferManager::finished, 
                                                              [sender]
                                                              (QBluetoothTransferReply * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "finished(QBluetoothTransferReply*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QBLUETOOTHTRANSFERMANAGER" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QBLUETOOTHTRANSFERREPLY" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "finished(QBluetoothTransferReply*)", connection );

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
    QBluetoothTransferManager * sender = (QBluetoothTransferManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "finished(QBluetoothTransferReply*)" );

      QObject::disconnect( Signals2_get_connection( sender, "finished(QBluetoothTransferReply*)" ) );

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

#pragma ENDDUMP
