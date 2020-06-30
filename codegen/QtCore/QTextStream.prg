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

$prototype=QTextStream()
$internalConstructor=|new1|

$prototype=QTextStream(QIODevice *device)
$internalConstructor=|new2|QIODevice *

$prototype=QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$internalConstructor=|new3|FILE *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
%% TODO: $internalConstructor=|new4|QString *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
$internalConstructor=|new5|QByteArray *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)
$internalConstructor=|new6|const QByteArray &,QIODevice::OpenMode=QIODevice::ReadOnly

/*
[1]QTextStream()
[2]QTextStream(QIODevice *device)
[3]QTextStream(FILE *fileHandle, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
[4]QTextStream(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite) // TODO: revisar implementacao
[5]QTextStream(QByteArray *array, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
[6]QTextStream(const QByteArray &array, QIODevice::OpenMode openMode = QIODevice::ReadOnly)
*/

HB_FUNC_STATIC( QTEXTSTREAM_NEW ) // TODO: revisar casos [5] e [6]
{
  if( ISNUMPAR(0) )
  {
    QTextStream_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QTextStream_new2();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTNUM(2) )
  {
    QTextStream_new3();
  }
%%  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
%%  {
%%    QTextStream_new4();
%%  }
  //else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  //{
  //  QTextStream_new5();
  //}
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QTextStream_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setCodec(QTextCodec *codec)
$internalMethod=|void|setCodec,setCodec1|QTextCodec *

$prototype=void setCodec(const char *codecName)
$internalMethod=|void|setCodec,setCodec2|const char *

/*
[1]void setCodec(QTextCodec *codec)
[2]void setCodec(const char *codecName)
*/

HB_FUNC_STATIC( QTEXTSTREAM_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextStream_setCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextStream_setCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCodec

$prototypeV2=QTextCodec * codec() const

$prototypeV2=void setAutoDetectUnicode( bool enabled )

$prototypeV2=bool autoDetectUnicode() const

$prototypeV2=void setGenerateByteOrderMark( bool generate )

$prototypeV2=bool generateByteOrderMark() const

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=QLocale locale() const

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=QIODevice * device() const

$prototype=void setString(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
%% TODO: $method=|void|setString|QString *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QString *string() const
%% TODO: $method=|QString *|string|

$prototypeV2=QTextStream::Status status() const

$prototypeV2=void setStatus( QTextStream::Status status )

$prototypeV2=void resetStatus()

$prototypeV2=bool atEnd() const

$prototypeV2=void reset()

$prototypeV2=void flush()

$prototypeV2=bool seek( qint64 pos )

$prototypeV2=qint64 pos() const

$prototypeV2=void skipWhiteSpace()

$prototypeV2=QString readLine( qint64 maxlen = 0 )

$prototypeV2=QString readAll()

$prototypeV2=QString read( qint64 maxlen )

$prototypeV2=void setFieldAlignment( QTextStream::FieldAlignment alignment )

$prototypeV2=QTextStream::FieldAlignment fieldAlignment() const

$prototypeV2=void setPadChar( QChar ch )

$prototypeV2=QChar padChar() const

$prototypeV2=void setFieldWidth( int width )

$prototypeV2=int fieldWidth() const

$prototypeV2=void setNumberFlags( QTextStream::NumberFlags flags )

$prototypeV2=QTextStream::NumberFlags numberFlags() const

$prototypeV2=void setIntegerBase( int base )

$prototypeV2=int integerBase() const

$prototypeV2=void setRealNumberNotation( QTextStream::RealNumberNotation notation )

$prototypeV2=QTextStream::RealNumberNotation realNumberNotation() const

$prototypeV2=void setRealNumberPrecision( int precision )

$prototypeV2=int realNumberPrecision() const

$extraMethods

#pragma ENDDUMP
