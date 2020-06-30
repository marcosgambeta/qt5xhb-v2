%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QFileDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSaveFile(const QString &name)
$internalConstructor=|new1|const QString &

$prototype=QSaveFile(QObject *parent = nullptr)
$internalConstructor=|new2|QObject *=nullptr

$prototype=QSaveFile(const QString &name, QObject *parent)
$internalConstructor=|new3|const QString &,QObject *

/*
[1]QSaveFile(const QString &name)
[2]QSaveFile(QObject *parent = nullptr)
[3]QSaveFile(const QString &name, QObject *parent)
*/

HB_FUNC_STATIC( QSAVEFILE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSaveFile_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSaveFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QSaveFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototypeV2=QString fileName() const

$prototypeV2=void setFileName( const QString & name )

$prototypeV2=bool open( QIODevice::OpenMode flags )

$prototypeV2=bool commit()

$prototypeV2=void cancelWriting()

$prototypeV2=void setDirectWriteFallback( bool enabled )

$prototypeV2=bool directWriteFallback() const

#pragma ENDDUMP
