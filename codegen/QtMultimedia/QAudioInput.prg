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

$prototype=explicit QAudioInput(const QAudioFormat &format = QAudioFormat(), QObject *parent = nullptr)
$internalConstructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=nullptr

$prototype=explicit QAudioInput(const QAudioDeviceInfo &audioDeviceInfo, const QAudioFormat &format = QAudioFormat(), QObject *parent = nullptr)
$internalConstructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=nullptr

/*
[1]explicit QAudioInput(const QAudioFormat &format = QAudioFormat(), QObject *parent = nullptr)
[2]explicit QAudioInput(const QAudioDeviceInfo &audioDeviceInfo, const QAudioFormat &format = QAudioFormat(), QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QAUDIOINPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && ISOPTQOBJECT(2) )
  {
    QAudioInput_new1();
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && ISOPTQOBJECT(3) )
  {
    QAudioInput_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioInput()
$deleteMethod

$prototypeV2=int bufferSize() const

$prototypeV2=int bytesReady() const

$prototypeV2=qint64 elapsedUSecs() const

$prototypeV2=QAudio::Error error() const

$prototypeV2=QAudioFormat format() const

$prototypeV2=int notifyInterval() const

$prototypeV2=int periodSize() const

$prototypeV2=qint64 processedUSecs() const

$prototypeV2=void reset()

$prototypeV2=void resume()

$prototype=void setBufferSize ( int bytes )
$method=|void|setBufferSize|int

$prototype=void setNotifyInterval ( int milliSeconds )
$method=|void|setNotifyInterval|int

$prototype=void start ( QIODevice * device )
$internalMethod=|void|start,start1|QIODevice *

$prototype=QIODevice * start ()
$internalMethod=|QIODevice *|start,start2|

/*
[1]void start ( QIODevice * device )
[2]QIODevice * start ()
*/

HB_FUNC_STATIC( QAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAudioInput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAudioInput_start2();
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

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

$prototypeV2=qreal volume() const

%%
%% SIGNALS
%%

$prototype=void stateChanged(QAudio::State)
$signalMethod=|void|stateChanged|QAudio::State

$prototype=void notify()
$signalMethod=|void|notify|

#pragma ENDDUMP
