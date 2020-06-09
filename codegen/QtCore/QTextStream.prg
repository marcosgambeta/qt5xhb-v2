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

$prototype=void setAutoDetectUnicode(bool enabled)
$method=|void|setAutoDetectUnicode|bool

$prototypeV2=bool autoDetectUnicode() const

$prototype=void setGenerateByteOrderMark(bool generate)
$method=|void|setGenerateByteOrderMark|bool

$prototypeV2=bool generateByteOrderMark() const

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototypeV2=QLocale locale() const

$prototype=void setDevice(QIODevice *device)
$method=|void|setDevice|QIODevice *

$prototypeV2=QIODevice * device() const

$prototype=void setString(QString *string, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
%% TODO: $method=|void|setString|QString *,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QString *string() const
%% TODO: $method=|QString *|string|

$prototypeV2=QTextStream::Status status() const

$prototype=void setStatus(Status status)
$method=|void|setStatus|QTextStream::Status

$prototypeV2=void resetStatus()

$prototypeV2=bool atEnd() const

$prototypeV2=void reset()

$prototypeV2=void flush()

$prototype=bool seek(qint64 pos)
$method=|bool|seek|qint64

$prototypeV2=qint64 pos() const

$prototypeV2=void skipWhiteSpace()

$prototype=QString readLine(qint64 maxlen = 0)
$method=|QString|readLine|qint64=0

$prototypeV2=QString readAll()

$prototype=QString read(qint64 maxlen)
$method=|QString|read|qint64

$prototype=void setFieldAlignment(FieldAlignment alignment)
$method=|void|setFieldAlignment|QTextStream::FieldAlignment

$prototypeV2=QTextStream::FieldAlignment fieldAlignment() const

$prototype=void setPadChar(QChar ch)
$method=|void|setPadChar|QChar

$prototypeV2=QChar padChar() const

$prototype=void setFieldWidth(int width)
$method=|void|setFieldWidth|int

$prototypeV2=int fieldWidth() const

$prototype=void setNumberFlags(NumberFlags flags)
$method=|void|setNumberFlags|QTextStream::NumberFlags

$prototypeV2=QTextStream::NumberFlags numberFlags() const

$prototype=void setIntegerBase(int base)
$method=|void|setIntegerBase|int

$prototypeV2=int integerBase() const

$prototype=void setRealNumberNotation(RealNumberNotation notation)
$method=|void|setRealNumberNotation|QTextStream::RealNumberNotation

$prototype=RealNumberNotation realNumberNotation() const
$method=|QTextStream::RealNumberNotation|realNumberNotation|

$prototype=void setRealNumberPrecision(int precision)
$method=|void|setRealNumberPrecision|int

$prototypeV2=int realNumberPrecision() const

$extraMethods

#pragma ENDDUMP
