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

$prototype=QAudioFormat ()
$internalConstructor=|new1|

$prototype=QAudioFormat ( const QAudioFormat & other )
$internalConstructor=|new2|const QAudioFormat &

/*
[1]QAudioFormat ()
[2]QAudioFormat ( const QAudioFormat & other )
*/

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    QAudioFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioFormat()
$deleteMethod

$prototypeV2=QAudioFormat::Endian byteOrder() const

$prototypeV2=int channelCount() const

$prototypeV2=QString codec() const

$prototypeV2=bool isValid() const

$prototypeV2=int sampleRate() const

$prototypeV2=int sampleSize() const

$prototypeV2=QAudioFormat::SampleType sampleType() const

$prototypeV2=void setByteOrder( QAudioFormat::Endian byteOrder )

$prototypeV2=void setChannelCount( int channelCount )

$prototypeV2=void setCodec( const QString & codec )

$prototypeV2=void setSampleRate( int sampleRate )

$prototypeV2=void setSampleSize( int sampleSize )

$prototypeV2=void setSampleType( QAudioFormat::SampleType sampleType )

$prototypeV2=qint32 bytesForDuration( qint64 duration ) const

$prototypeV2=qint64 durationForBytes( qint32 byteCount ) const

$prototypeV2=qint32 bytesForFrames( qint32 frameCount ) const

$prototypeV2=qint32 framesForBytes( qint32 byteCount ) const

$prototypeV2=qint32 framesForDuration( qint64 duration ) const

$prototypeV2=qint64 durationForFrames( qint32 frameCount ) const

$prototypeV2=int bytesPerFrame() const

$extraMethods

#pragma ENDDUMP
