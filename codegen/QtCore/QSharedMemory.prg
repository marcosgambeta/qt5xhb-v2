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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSharedMemory(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QSharedMemory(const QString &key, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,QObject *=nullptr

/*
[1]QSharedMemory(QObject *parent = nullptr)
[2]QSharedMemory(const QString &key, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSharedMemory_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSharedMemory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setKey( const QString & key )

$prototypeV2=QString key() const

$prototypeV2=void setNativeKey( const QString & key )

$prototypeV2=QString nativeKey() const

$prototypeV2=bool create( int size, QSharedMemory::AccessMode mode = QSharedMemory::ReadWrite )

$prototypeV2=int size() const

$prototypeV2=bool attach( QSharedMemory::AccessMode mode = QSharedMemory::ReadWrite )

$prototypeV2=bool isAttached() const

$prototypeV2=bool detach()

$prototypeV2=void * data()

$prototypeV2=bool lock()

$prototypeV2=bool unlock()

$prototypeV2=QSharedMemory::SharedMemoryError error() const

$prototypeV2=QString errorString() const

#pragma ENDDUMP
