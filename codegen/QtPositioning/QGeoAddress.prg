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

#include <QtCore/QString>

$prototype=QGeoAddress()
$internalConstructor=|new1|

$prototype=QGeoAddress(const QGeoAddress &other)
$internalConstructor=|new2|const QGeoAddress &

/*
[1]QGeoAddress()
[2]QGeoAddress(const QGeoAddress &other)
*/

HB_FUNC_STATIC( QGEOADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoAddress_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOADDRESS(1) )
  {
    QGeoAddress_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString text() const

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototypeV2=QString country() const

$prototype=void setCountry(const QString &country)
$method=|void|setCountry|const QString &

$prototypeV2=QString countryCode() const

$prototype=void setCountryCode(const QString &countryCode)
$method=|void|setCountryCode|const QString &

$prototypeV2=QString state() const

$prototype=void setState(const QString &state)
$method=|void|setState|const QString &

$prototypeV2=QString county() const

$prototype=void setCounty(const QString &county)
$method=|void|setCounty|const QString &

$prototypeV2=QString city() const

$prototype=void setCity(const QString &city)
$method=|void|setCity|const QString &

$prototypeV2=QString district() const

$prototype=void setDistrict(const QString &district)
$method=|void|setDistrict|const QString &

$prototypeV2=QString postalCode() const

$prototype=void setPostalCode(const QString &postalCode)
$method=|void|setPostalCode|const QString &

$prototypeV2=QString street() const

$prototype=void setStreet(const QString &street)
$method=|void|setStreet|const QString &

$prototypeV2=bool isEmpty() const

$prototypeV2=void clear()

$prototypeV2=bool isTextGenerated() const

$extraMethods

#pragma ENDDUMP
