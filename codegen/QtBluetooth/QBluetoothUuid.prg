%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QUuid

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBluetoothUuid()
$internalConstructor=|new1|

$prototype=QBluetoothUuid(ProtocolUuid uuid)
$constructor=|new2|QBluetoothUuid::ProtocolUuid

$prototype=QBluetoothUuid(ServiceClassUuid uuid)
$constructor=|new3|QBluetoothUuid::ServiceClassUuid

$prototype=QBluetoothUuid(quint16 uuid)
$constructor=|new4|quint16

$prototype=QBluetoothUuid(quint32 uuid)
$constructor=|new5|quint32

$prototype=QBluetoothUuid(quint128 uuid)
%% TODO: implementar
%% $constructor=|new6|quint128

$prototype=QBluetoothUuid(const QString &uuid)
$internalConstructor=|new7|const QString &

$prototype=QBluetoothUuid(const QBluetoothUuid &uuid)
$internalConstructor=|new8|const QBluetoothUuid &

$prototype=QBluetoothUuid(const QUuid &uuid)
$internalConstructor=|new9|const QUuid &

//[1]QBluetoothUuid()
//[2]QBluetoothUuid(ProtocolUuid uuid)
//[3]QBluetoothUuid(ServiceClassUuid uuid)
//[4]QBluetoothUuid(quint16 uuid)
//[5]QBluetoothUuid(quint32 uuid)
//[6]QBluetoothUuid(quint128 uuid)
//[7]QBluetoothUuid(const QString &uuid)
//[8]QBluetoothUuid(const QBluetoothUuid &uuid)
//[9]QBluetoothUuid(const QUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHUUID_NEW ) // TODO: resolver conflitos
{
  if( ISNUMPAR(0) )
  {
    QBluetoothUuid_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW5 );
  }
%%  else if( ISNUMPAR(1) && ISNUM(1) )
%%  {
%%    HB_FUNC_EXEC( QBLUETOOTHUUID_NEW6 );
%%  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothUuid_new7();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothUuid_new8();
  }
  else if( ISNUMPAR(1) && ISQUUID(1) )
  {
    QBluetoothUuid_new9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int minimumSize() const
$method=|int|minimumSize|

$prototype=quint16 toUInt16(bool *ok = nullptr) const
%% TODO: revisar e implementar parametro opcional
$method=|quint16|toUInt16|bool *=nullptr

$prototype=quint32 toUInt32(bool *ok = nullptr) const
%% TODO: revisar e implementar parametro opcional
$method=|quint32|toUInt32|bool *=nullptr

%% /*
%%   convert QList<QBluetoothUuid> to array
%% */
%% /*
%% void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> & list )
%% {
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );
%%
%%   PHB_ITEM pArray = hb_itemArrayNew(0);
%%
%%   int i;
%%
%%   for(i=0; i<list.count(); i++)
%%   {
%%     if( pDynSym )
%%     {
%%       hb_vmPushDynSym( pDynSym );
%%       hb_vmPushNil();
%%       hb_vmDo( 0 );
%%       PHB_ITEM pObject = hb_itemNew( NULL );
%%       hb_itemCopy( pObject, hb_stackReturnItem() );
%%       PHB_ITEM pItem = hb_itemNew( NULL );
%%       hb_itemPutPtr( pItem, (QBluetoothUuid *) new QBluetoothUuid ( list[i] ) );
%%       hb_objSendMsg( pObject, "_POINTER", 1, pItem );
%%       hb_itemRelease( pItem );
%%       hb_arrayAddForward( pArray, pObject );
%%       hb_itemRelease( pObject );
%%     }
%%   }
%%
%%   hb_itemReturnRelease(pArray);
%% }
%% */

#pragma ENDDUMP
