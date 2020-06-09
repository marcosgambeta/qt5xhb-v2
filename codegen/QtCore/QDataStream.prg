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

$prototype=void setDevice(QIODevice *)
$method=|void|setDevice|QIODevice *

$prototypeV2=void unsetDevice()

$prototypeV2=bool atEnd() const

$prototypeV2=QDataStream::Status status() const

$prototype=void setStatus(Status status)
$method=|void|setStatus|QDataStream::Status

$prototypeV2=void resetStatus()

$prototypeV2=QDataStream::FloatingPointPrecision floatingPointPrecision() const

$prototype=void setFloatingPointPrecision(FloatingPointPrecision precision)
$method=|void|setFloatingPointPrecision|QDataStream::FloatingPointPrecision

$prototypeV2=QDataStream::ByteOrder byteOrder() const

$prototype=void setByteOrder(ByteOrder)
$method=|void|setByteOrder|QDataStream::ByteOrder

$prototypeV2=int version() const

$prototype=void setVersion(int)
$method=|void|setVersion|int

$prototype=QDataStream &readBytes(char *&, uint &len)
%% TODO: revisar e corrigir implementacao do metodo
%% $method=|QDataStream &|readBytes|char *&,uint &

$prototype=int readRawData(char *, int len)
%% TODO: corrigir codigo gerado
$method=|int|readRawData|char *,int

$prototype=QDataStream &writeBytes(const char *, uint len)
$method=|QDataStream &|writeBytes|const char *,uint

$prototype=int writeRawData(const char *, int len)
$method=|int|writeRawData|const char *,int

$prototype=int skipRawData(int len)
$method=|int|skipRawData|int

$extraMethods

#pragma ENDDUMP
