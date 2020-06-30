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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioOutput(const QAudioFormat & format = QAudioFormat(), QObject * parent = nullptr)
$internalConstructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=nullptr

$prototype=explicit QAudioOutput(const QAudioDeviceInfo & audioDeviceInfo, const QAudioFormat & format = QAudioFormat(), QObject * parent = nullptr)
$internalConstructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=nullptr

/*
[1]explicit QAudioOutput(const QAudioFormat & format = QAudioFormat(), QObject * parent = nullptr)
[2]explicit QAudioOutput(const QAudioDeviceInfo & audioDeviceInfo, const QAudioFormat & format = QAudioFormat(), QObject * parent = nullptr)
*/

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && ISOPTQOBJECT(2) )
  {
    QAudioOutput_new1();
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && ISOPTQOBJECT(3) )
  {
    QAudioOutput_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioOutput()
$deleteMethod

$prototypeV2=int bufferSize() const

$prototypeV2=int bytesFree() const

$prototypeV2=QString category() const

$prototypeV2=qint64 elapsedUSecs() const

$prototypeV2=QAudio::Error error() const

$prototypeV2=QAudioFormat format() const

$prototypeV2=int notifyInterval() const

$prototypeV2=int periodSize() const

$prototypeV2=qint64 processedUSecs() const

$prototypeV2=void reset()

$prototypeV2=void resume()

$prototypeV2=void setBufferSize( int bytes )

$prototypeV2=void setCategory( const QString & category )

$prototypeV2=void setNotifyInterval( int milliSeconds )

$prototypeV2=void setVolume( qreal volume )

$prototype=void start(QIODevice * device)
$internalMethod=|void|start,start1|QIODevice *

$prototype=QIODevice * start()
$internalMethod=|QIODevice *|start,start2|

/*
[1]void start(QIODevice * device)
[2]QIODevice * start()
*/

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAudioOutput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAudioOutput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=QAudio::State state() const

$prototypeV2=void stop()

$prototypeV2=void suspend()

$prototypeV2=qreal volume() const

%%
%% SIGNALS
%%

$prototype=void notify()
$signalMethod=|void|notify|

$prototype=void stateChanged( QAudio::State state )
$signalMethod=|void|stateChanged|QAudio::State

#pragma ENDDUMP
