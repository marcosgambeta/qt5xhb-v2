%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioBuffer()
$internalConstructor=|new1|

$prototype=QAudioBuffer(QAbstractAudioBuffer *provider)
%% TODO: not present in the documentation

$prototype=QAudioBuffer(const QAudioBuffer & other)
$internalConstructor=|new2|const QAudioBuffer &

$prototype=QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
$internalConstructor=|new3|const QByteArray &,const QAudioFormat &,qint64=-1

$prototype=QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
$internalConstructor=|new4|int,const QAudioFormat &,qint64=-1

/*
[1]QAudioBuffer()
%% QAudioBuffer(QAbstractAudioBuffer *provider)
[2]QAudioBuffer(const QAudioBuffer & other)
[3]QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
[4]QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
*/

HB_FUNC_STATIC( QAUDIOBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOBUFFER(1) )
  {
    QAudioBuffer_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    QAudioBuffer_new3();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    QAudioBuffer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioBuffer()
$deleteMethod

$prototypeV2=int byteCount() const

$prototype=const void* constData() const
%% TODO: implementar
%% $method=|const void *|constData|

$prototype=const void* data() const

$prototypeV2=void * data()

$prototypeV2=qint64 duration() const

$prototypeV2=QAudioFormat format() const

$prototypeV2=int frameCount() const

$prototypeV2=bool isValid() const

$prototypeV2=int sampleCount() const

$prototypeV2=qint64 startTime() const

$extraMethods

#pragma ENDDUMP
