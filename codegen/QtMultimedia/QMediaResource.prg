%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

%% TODO: check
%% private:
%%     enum Property
%%     {
%%         Url,
%%         Request,
%%         MimeType,
%%         Language,
%%         AudioCodec,
%%         VideoCodec,
%%         DataSize,
%%         AudioBitRate,
%%         VideoBitRate,
%%         SampleRate,
%%         ChannelCount,
%%         Resolution
%%     };
%%     QMap<int, QVariant> values;

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QSize>

$prototype=QMediaResource()
$internalConstructor=|new1|

$prototype=QMediaResource(const QUrl & url, const QString & mimeType = QString())
$internalConstructor=|new2|const QUrl &,const QString &=QString()

$prototype=QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
$internalConstructor=|new3|const QNetworkRequest &,const QString &=QString()

$prototype=QMediaResource(const QMediaResource & other)
$internalConstructor=|new4|const QMediaResource &

/*
[1]QMediaResource()
[2]QMediaResource(const QUrl & url, const QString & mimeType = QString())
[3]QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
[4]QMediaResource(const QMediaResource & other)
*/

HB_FUNC_STATIC( QMEDIARESOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaResource_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new2();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    QMediaResource_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QMediaResource()
$deleteMethod

$prototypeV2=int audioBitRate() const

$prototypeV2=QString audioCodec() const

$prototypeV2=int channelCount() const

$prototypeV2=qint64 dataSize() const

$prototypeV2=bool isNull() const

$prototypeV2=QString language() const

$prototypeV2=QString mimeType() const

$prototypeV2=QNetworkRequest request() const

$prototypeV2=QSize resolution() const

$prototypeV2=int sampleRate() const

$prototype=void setAudioBitRate(int rate)
$method=|void|setAudioBitRate|int

$prototype=void setAudioCodec(const QString & codec)
$method=|void|setAudioCodec|const QString &

$prototype=void setChannelCount(int channels)
$method=|void|setChannelCount|int

$prototype=void setDataSize(const qint64 size)
$method=|void|setDataSize|const qint64

$prototype=void setLanguage(const QString & language)
$method=|void|setLanguage|const QString &

$prototype=void setResolution(const QSize & resolution)
$internalMethod=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=|void|setResolution,setResolution2|int,int

/*
[1]void setResolution(const QSize & resolution)
[2]void setResolution(int width, int height)
*/

HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QMediaResource_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaResource_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResolution

$prototype=void setSampleRate(int frequency)
$method=|void|setSampleRate|int

$prototype=void setVideoBitRate(int rate)
$method=|void|setVideoBitRate|int

$prototype=void setVideoCodec(const QString & codec)
$method=|void|setVideoCodec|const QString &

$prototypeV2=QUrl url() const

$prototypeV2=int videoBitRate() const

$prototypeV2=QString videoCodec() const

$extraMethods

#pragma ENDDUMP
