%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototypeV2=QString managerName() const

$prototypeV2=int managerVersion() const

$prototype=virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
$internalVirtualMethod=|QGeoCodeReply *|geocode,geocode1|const QGeoAddress &,const QGeoShape &

$prototype=virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
$internalVirtualMethod=|QGeoCodeReply *|geocode,geocode2|const QString &,int,int,const QGeoShape &

/*
[1]virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
[2]virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
*/

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if( ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2) )
  {
    QGeoCodingManagerEngine_geocode1();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISQGEOSHAPE(4) )
  {
    QGeoCodingManagerEngine_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=geocode

$prototype=virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
$virtualMethod=|QGeoCodeReply *|reverseGeocode|const QGeoCoordinate &,const QGeoShape &

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototypeV2=QLocale locale() const

%%
%% SIGNALS
%%

$prototype=void finished( QGeoCodeReply * reply )
$signalMethod=|void|finished|QGeoCodeReply *

$prototype=void error( QGeoCodeReply * reply, QGeoCodeReply::Error error, QString errorString = QString() )
$signalMethod=|void|error|QGeoCodeReply *,QGeoCodeReply::Error,QString

#pragma ENDDUMP
