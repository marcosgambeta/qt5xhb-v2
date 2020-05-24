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

$prototype=QString text() const
$method=|QString|text|

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototype=QString country() const
$method=|QString|country|

$prototype=void setCountry(const QString &country)
$method=|void|setCountry|const QString &

$prototype=QString countryCode() const
$method=|QString|countryCode|

$prototype=void setCountryCode(const QString &countryCode)
$method=|void|setCountryCode|const QString &

$prototype=QString state() const
$method=|QString|state|

$prototype=void setState(const QString &state)
$method=|void|setState|const QString &

$prototype=QString county() const
$method=|QString|county|

$prototype=void setCounty(const QString &county)
$method=|void|setCounty|const QString &

$prototype=QString city() const
$method=|QString|city|

$prototype=void setCity(const QString &city)
$method=|void|setCity|const QString &

$prototype=QString district() const
$method=|QString|district|

$prototype=void setDistrict(const QString &district)
$method=|void|setDistrict|const QString &

$prototype=QString postalCode() const
$method=|QString|postalCode|

$prototype=void setPostalCode(const QString &postalCode)
$method=|void|setPostalCode|const QString &

$prototype=QString street() const
$method=|QString|street|

$prototype=void setStreet(const QString &street)
$method=|void|setStreet|const QString &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void clear()
$method=|void|clear|

$prototype=bool isTextGenerated() const
$method=|bool|isTextGenerated|

$extraMethods

#pragma ENDDUMP
