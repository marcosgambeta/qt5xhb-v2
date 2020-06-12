%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$prototype=QGeoAreaMonitorInfo(const QString &name = QString())
$internalConstructor=|new1|const QString &=QString()

$prototype=QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
$internalConstructor=|new2|const QGeoAreaMonitorInfo &

/*
[1]QGeoAreaMonitorInfo(const QString &name = QString())
[2]QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
*/

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    QGeoAreaMonitorInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
  {
    QGeoAreaMonitorInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString name() const

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototypeV2=QString identifier() const

$prototypeV2=bool isValid() const

$prototypeV2=QGeoShape area() const

$prototype=void setArea(const QGeoShape &newShape)
$method=|void|setArea|const QGeoShape &

$prototypeV2=QDateTime expiration() const

$prototype=void setExpiration(const QDateTime &expiry)
$method=|void|setExpiration|const QDateTime &

$prototypeV2=bool isPersistent() const

$prototype=void setPersistent(bool isPersistent)
$method=|void|setPersistent|bool

$extraMethods

#pragma ENDDUMP
