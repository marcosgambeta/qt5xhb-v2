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

$prototype=QAudioEncoderSettings()
$internalConstructor=|new1|

$prototype=QAudioEncoderSettings(const QAudioEncoderSettings & other)
$internalConstructor=|new2|const QAudioEncoderSettings &

/*
[1]QAudioEncoderSettings()
[2]QAudioEncoderSettings(const QAudioEncoderSettings & other)
*/

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioEncoderSettings_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
  {
    QAudioEncoderSettings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioEncoderSettings()
$deleteMethod

$prototypeV2=int bitRate() const

$prototypeV2=int channelCount() const

$prototypeV2=QString codec() const

$prototypeV2=QMultimedia::EncodingMode encodingMode() const

$prototypeV2=QVariant encodingOption( const QString & option ) const

$prototype=QVariantMap encodingOptions() const
%% TODO: QVariantMap

$prototypeV2=bool isNull() const

$prototypeV2=QMultimedia::EncodingQuality quality() const

$prototypeV2=int sampleRate() const

$prototypeV2=void setBitRate( int bitrate )

$prototypeV2=void setChannelCount( int channels )

$prototypeV2=void setCodec( const QString & codec )

$prototypeV2=void setEncodingMode( QMultimedia::EncodingMode mode )

$prototypeV2=void setEncodingOption( const QString & option, const QVariant & value )

$prototype=void setEncodingOptions(const QVariantMap &options)
%% TODO: QVariantMap

$prototypeV2=void setQuality( QMultimedia::EncodingQuality quality )

$prototypeV2=void setSampleRate( int rate )

$extraMethods

#pragma ENDDUMP
