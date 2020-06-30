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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% TODO: is abstract ?
%%//[1]QIODevice ()
%%//[2]QIODevice ( QObject * parent )

%%//HB_FUNC_STATIC( QIODEVICE_NEW )
%%//{
%%//  if( ISNUMPAR(0) )
%%//  {
%%//    HB_FUNC_EXEC( QIODEVICE_NEW1 );
%%//  }
%%//  else if( ISNUMPAR(1) && ISOBJECT(1) )
%%//  {
%%//    HB_FUNC_EXEC( QIODEVICE_NEW2 );
%%//  }
%%//}

$deleteMethod

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototypeV2=QString errorString() const

%% TODO: revisar e implementar corretamente(?)
$prototypeV2=bool getChar( char * c )

$prototypeV2=bool isOpen() const

$prototypeV2=bool isReadable() const

$prototypeV2=virtual bool isSequential() const

$prototypeV2=bool isTextModeEnabled() const

$prototypeV2=bool isWritable() const

$prototypeV2=virtual bool open( QIODevice::OpenMode mode )

$prototypeV2=QIODevice::OpenMode openMode() const

$prototype=qint64 peek ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|peek,peek1|char *,qint64

$prototype=QByteArray peek ( qint64 maxSize )
$internalMethod=|QByteArray|peek,peek2|qint64

/*
[1]qint64 peek ( char * data, qint64 maxSize )
[2]QByteArray peek ( qint64 maxSize )
*/

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_peek1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_peek2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=peek

$prototypeV2=virtual qint64 pos() const

$prototypeV2=bool putChar( char c )

$prototype=qint64 read ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|read,read1|char *,qint64

$prototype=QByteArray read ( qint64 maxSize )
$internalMethod=|QByteArray|read,read2|qint64

/*
[1]qint64 read ( char * data, qint64 maxSize )
[2]QByteArray read ( qint64 maxSize )
*/

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_read1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QIODevice_read2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=read

$prototypeV2=QByteArray readAll()

$prototype=qint64 readLine ( char * data, qint64 maxSize )
%% TODO: corrigir
$internalMethod=|qint64|readLine,readLine1|char *,qint64

$prototype=QByteArray readLine ( qint64 maxSize = 0 )
$internalMethod=|QByteArray|readLine,readLine2|qint64=0

/*
[1]qint64 readLine ( char * data, qint64 maxSize )
[2]QByteArray readLine ( qint64 maxSize = 0 )
*/

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_readLine1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QIODevice_readLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=readLine

$prototypeV2=virtual bool reset()

$prototypeV2=virtual bool seek( qint64 pos )

$prototypeV2=void setTextModeEnabled( bool enabled )

$prototypeV2=virtual qint64 size() const

$prototypeV2=void ungetChar( char c )

$prototypeV2=virtual bool waitForBytesWritten( int msecs )

$prototypeV2=virtual bool waitForReadyRead( int msecs )

$prototype=qint64 write ( const char * data, qint64 maxSize )
$internalMethod=|qint64|write,write1|const char *,qint64

$prototype=qint64 write ( const char * data )
$internalMethod=|qint64|write,write2|const char *

$prototype=qint64 write ( const QByteArray & byteArray )
$internalMethod=|qint64|write,write3|const QByteArray &

/*
[1]qint64 write ( const char * data, qint64 maxSize )
[2]qint64 write ( const char * data )
[3]qint64 write ( const QByteArray & byteArray )
*/

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QIODevice_write1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QIODevice_write2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QIODevice_write3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=write

%%
%% SIGNALS
%%

$prototype=void aboutToClose()
$signalMethod=|void|aboutToClose|

$prototype=void bytesWritten( qint64 bytes )
$signalMethod=|void|bytesWritten|qint64

$prototype=void readChannelFinished()
$signalMethod=|void|readChannelFinished|

$prototype=void readyRead()
$signalMethod=|void|readyRead|

#pragma ENDDUMP
