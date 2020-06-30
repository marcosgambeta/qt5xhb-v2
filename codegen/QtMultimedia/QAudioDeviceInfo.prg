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

$prototype=QAudioDeviceInfo ()
$internalConstructor=|new1|

$prototype=QAudioDeviceInfo ( const QAudioDeviceInfo & other )
$internalConstructor=|new2|const QAudioDeviceInfo &

$prototype=QAudioDeviceInfo(const QString &realm, const QByteArray &handle, QAudio::Mode mode) [private]

/*
[1]QAudioDeviceInfo ()
[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    QAudioDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioDeviceInfo()
$deleteMethod

$prototypeV2=QString deviceName() const

$prototypeV2=bool isFormatSupported( const QAudioFormat & format ) const

$prototypeV2=bool isNull() const

$prototypeV2=QAudioFormat nearestFormat( const QAudioFormat & format ) const

$prototypeV2=QAudioFormat preferredFormat() const

$prototypeV2=QList<QAudioFormat::Endian> supportedByteOrders() const

$prototypeV2=QList<int> supportedChannelCounts() const

$prototypeV2=QStringList supportedCodecs() const

$prototypeV2=QList<int> supportedSampleRates() const

$prototypeV2=QList<int> supportedSampleSizes() const

$prototypeV2=QList<QAudioFormat::SampleType> supportedSampleTypes() const

$prototypeV2=static QList<QAudioDeviceInfo> availableDevices( QAudio::Mode mode )

$prototypeV2=static QAudioDeviceInfo defaultInputDevice()

$prototypeV2=static QAudioDeviceInfo defaultOutputDevice()

$prototype=QString realm() const [private]

$prototype=QByteArray handle() const [private]

$prototype=QAudio::Mode mode() const [private]

$extraMethods

#pragma ENDDUMP
