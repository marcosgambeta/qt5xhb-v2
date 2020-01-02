%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

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

#include <QtCore/QLocale>

$deleteMethod

$prototype=QString managerName() const
$method=|QString|managerName|

$prototype=int managerVersion() const
$method=|int|managerVersion|

$prototype=QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
$internalMethod=|QGeoCodeReply *|geocode,geocode1|const QGeoAddress &,const QGeoShape &=QGeoShape()

$prototype=QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())
$internalMethod=|QGeoCodeReply *|geocode,geocode2|const QString &,int=-1,int=0,const QGeoShape &=QGeoShape()

//[1]QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
//[2]QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())

HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE )
{
  if( ISBETWEEN(1,2) && ISQGEOADDRESS(1) && (ISQGEOSHAPE(2)||ISNIL(2)) )
  {
    QGeoCodingManager_geocode1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQGEOSHAPE(4)||ISNIL(4)) )
  {
    QGeoCodingManager_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=geocode

$prototype=QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds = QGeoShape())
$method=|QGeoCodeReply *|reverseGeocode|const QGeoCoordinate &,const QGeoShape &=QGeoShape()

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=|QLocale|locale|

%%
%% SIGNALS
%%

$prototype=void finished( QGeoCodeReply * reply )
$signalMethod=|void|finished|QGeoCodeReply *

$prototype=void error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString = QString() )
$signalMethod=|void|error|QGeoCodeReply *,QGeoCodeReply::Error,QString

#pragma ENDDUMP
