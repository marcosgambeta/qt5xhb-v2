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

//[1]QStorageInfo()
//[2]explicit QStorageInfo(const QString &path)
//[3]explicit QStorageInfo(const QDir &dir)
//[4]QStorageInfo(const QStorageInfo &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QStorageInfo &other)
$method=|void|swap|QStorageInfo &

$prototype=void setPath(const QString &path)
$method=|void|setPath|const QString &

$prototype=QString rootPath() const
$method=|QString|rootPath|

$prototype=QByteArray device() const
$method=|QByteArray|device|

$prototype=QByteArray fileSystemType() const
$method=|QByteArray|fileSystemType|

$prototype=QString name() const
$method=|QString|name|

$prototype=QString displayName() const
$method=|QString|displayName|

$prototype=qint64 bytesTotal() const
$method=|qint64|bytesTotal|

$prototype=qint64 bytesFree() const
$method=|qint64|bytesFree|

$prototype=qint64 bytesAvailable() const
$method=|qint64|bytesAvailable|

$prototype=bool isRoot() const
$method=|bool|isRoot|

$prototype=bool isReadOnly() const
$method=|bool|isReadOnly|

$prototype=bool isReady() const
$method=|bool|isReady|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void refresh()
$method=|void|refresh|

$prototype=static QList<QStorageInfo> mountedVolumes()
$staticMethod=|QList<QStorageInfo>|mountedVolumes|

$prototype=static QStorageInfo root()
$staticMethod=|QStorageInfo|root|

$extraMethods

#pragma ENDDUMP
