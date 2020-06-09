%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStorageInfo()
$internalConstructor=|new1|

$prototype=explicit QStorageInfo(const QString &path)
$internalConstructor=|new2|const QString &

$prototype=explicit QStorageInfo(const QDir &dir)
$internalConstructor=|new3|const QDir &

$prototype=QStorageInfo(const QStorageInfo &other)
$internalConstructor=|new4|const QStorageInfo &

/*
[1]QStorageInfo()
[2]explicit QStorageInfo(const QString &path)
[3]explicit QStorageInfo(const QDir &dir)
[4]QStorageInfo(const QStorageInfo &other)
*/

HB_FUNC_STATIC( QSTORAGEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStorageInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStorageInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QStorageInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSTORAGEINFO(1) )
  {
    QStorageInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QStorageInfo &other)
$method=|void|swap|QStorageInfo &

$prototype=void setPath(const QString &path)
$method=|void|setPath|const QString &

$prototypeV2=QString rootPath() const

$prototypeV2=QByteArray device() const

$prototypeV2=QByteArray fileSystemType() const

$prototypeV2=QString name() const

$prototypeV2=QString displayName() const

$prototypeV2=qint64 bytesTotal() const

$prototypeV2=qint64 bytesFree() const

$prototypeV2=qint64 bytesAvailable() const

$prototypeV2=bool isRoot() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isReady() const

$prototypeV2=bool isValid() const

$prototypeV2=void refresh()

$prototype=static QList<QStorageInfo> mountedVolumes()
$staticMethod=|QList<QStorageInfo>|mountedVolumes|

$prototypeV2=static QStorageInfo root()

$extraMethods

#pragma ENDDUMP
