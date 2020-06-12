%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraInfo(const QByteArray &name = QByteArray())
$internalConstructor=|new1|const QByteArray &=QByteArray()

$prototype=explicit QCameraInfo(const QCamera &camera)
$internalConstructor=|new2|const QCamera &

$prototype=QCameraInfo(const QCameraInfo& other)
$internalConstructor=|new3|const QCameraInfo &

/*
[1]explicit QCameraInfo(const QByteArray &name = QByteArray())
[2]explicit QCameraInfo(const QCamera &camera)
[3]QCameraInfo(const QCameraInfo& other)
*/

HB_FUNC_STATIC( QCAMERAINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISQBYTEARRAY(1) )
  {
    QCameraInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQCAMERA(1) )
  {
    QCameraInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQCAMERAINFO(1) )
  {
    QCameraInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCameraInfo()
$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=QString deviceName() const

$prototypeV2=QString description() const

$prototypeV2=QCamera::Position position() const

$prototypeV2=int orientation() const

$prototypeV2=static QCameraInfo defaultCamera()

$prototype=static QList<QCameraInfo> availableCameras(QCamera::Position position = QCamera::UnspecifiedPosition)
$staticMethod=|QList<QCameraInfo>|availableCameras|QCamera::Position=QCamera::UnspecifiedPosition

#pragma ENDDUMP
