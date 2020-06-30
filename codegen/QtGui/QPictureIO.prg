%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPictureIO()
$internalConstructor=|new1|

$prototype=QPictureIO(QIODevice *ioDevice, const char *format)
$internalConstructor=|new2|QIODevice *,const char *

$prototype=QPictureIO(const QString &fileName, const char *format)
$internalConstructor=|new3|const QString &,const char *

/*
[1]QPictureIO()
[2]QPictureIO(QIODevice *ioDevice, const char *format)
[3]QPictureIO(const QString &fileName, const char *format)
*/

HB_FUNC_STATIC( QPICTUREIO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPictureIO_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QPictureIO_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QPictureIO_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=const QPicture & picture() const

$prototypeV2=int status() const

$prototypeV2=const char * format() const

$prototypeV2=QIODevice * ioDevice() const

$prototypeV2=QString fileName() const

$prototypeV2=int quality() const

$prototypeV2=QString description() const

$prototypeV2=const char * parameters() const

$prototypeV2=float gamma() const

$prototypeV2=void setPicture( const QPicture & )

$prototypeV2=void setStatus( int )

$prototypeV2=void setFormat( const char * )

$prototypeV2=void setIODevice( QIODevice * )

$prototypeV2=void setFileName( const QString & )

$prototypeV2=void setQuality( int )

$prototypeV2=void setDescription( const QString & )

$prototypeV2=void setParameters( const char * )

$prototypeV2=void setGamma( float )

$prototypeV2=bool read()

$prototypeV2=bool write()

$prototype=static QByteArray pictureFormat(const QString &fileName)
$internalStaticMethod=|QByteArray|pictureFormat,pictureFormat1|const QString &

$prototype=static QByteArray pictureFormat(QIODevice *)
$internalStaticMethod=|QByteArray|pictureFormat,pictureFormat2|QIODevice *

/*
[1]static QByteArray pictureFormat(const QString &fileName)
[2]static QByteArray pictureFormat(QIODevice *)
*/

HB_FUNC_STATIC( QPICTUREIO_PICTUREFORMAT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPictureIO_pictureFormat1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPictureIO_pictureFormat2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=pictureFormat

$prototypeV2=static QList<QByteArray> inputFormats()

$prototypeV2=static QList<QByteArray> outputFormats()

$extraMethods

#pragma ENDDUMP
