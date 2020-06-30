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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDataStream()
$internalConstructor=|new1|

$prototype=QDataStream(QIODevice *)
$internalConstructor=|new2|QIODevice *

$prototype=QDataStream(QByteArray *, QIODevice::OpenMode flags)
$internalConstructor=|new3|QByteArray *,QIODevice::OpenMode

$prototype=QDataStream(const QByteArray &)
$internalConstructor=|new4|const QByteArray &

/*
[1]QDataStream()
[2]QDataStream(QIODevice *)
[3]QDataStream(QByteArray *, QIODevice::OpenMode flags)
[4]QDataStream(const QByteArray &)
*/

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDataStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDataStream_new2();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QDataStream_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QDataStream_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QIODevice * device() const

$prototypeV2=void setDevice( QIODevice * )

$prototypeV2=void unsetDevice()

$prototypeV2=bool atEnd() const

$prototypeV2=QDataStream::Status status() const

$prototypeV2=void setStatus( QDataStream::Status status )

$prototypeV2=void resetStatus()

$prototypeV2=QDataStream::FloatingPointPrecision floatingPointPrecision() const

$prototypeV2=void setFloatingPointPrecision( QDataStream::FloatingPointPrecision precision )

$prototypeV2=QDataStream::ByteOrder byteOrder() const

$prototypeV2=void setByteOrder( QDataStream::ByteOrder )

$prototypeV2=int version() const

$prototypeV2=void setVersion( int )

$prototype=QDataStream &readBytes(char *&, uint &len)
%% TODO: revisar e corrigir implementacao do metodo
%% $method=|QDataStream &|readBytes|char *&,uint &

$prototypeV2=int readRawData( char *, int len )
%% TODO: corrigir codigo gerado

$prototypeV2=QDataStream & writeBytes( const char *, uint len )

$prototypeV2=int writeRawData( const char *, int len )

$prototypeV2=int skipRawData( int len )

$extraMethods

#pragma ENDDUMP
