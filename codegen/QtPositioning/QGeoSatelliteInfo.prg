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

$prototype=QGeoSatelliteInfo()
$internalConstructor=|new1|

$prototype=QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
$internalConstructor=|new2|const QGeoSatelliteInfo &

/*
[1]QGeoSatelliteInfo()
[2]QGeoSatelliteInfo(const QGeoSatelliteInfo &other)
*/

HB_FUNC_STATIC( QGEOSATELLITEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoSatelliteInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOSATELLITEINFO(1) )
  {
    QGeoSatelliteInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setSatelliteSystem(SatelliteSystem system)
$method=|void|setSatelliteSystem|QGeoSatelliteInfo::SatelliteSystem

$prototype=SatelliteSystem satelliteSystem() const
$method=|QGeoSatelliteInfo::SatelliteSystem|satelliteSystem|

$prototype=void setSatelliteIdentifier(int satId)
$method=|void|setSatelliteIdentifier|int

$prototype=int satelliteIdentifier() const
$method=|int|satelliteIdentifier|

$prototype=void setSignalStrength(int signalStrength)
$method=|void|setSignalStrength|int

$prototype=int signalStrength() const
$method=|int|signalStrength|

$prototype=void setAttribute(Attribute attribute, qreal value)
$method=|void|setAttribute|QGeoSatelliteInfo::Attribute,qreal

$prototype=qreal attribute(Attribute attribute) const
$method=|qreal|attribute|QGeoSatelliteInfo::Attribute

$prototype=void removeAttribute(Attribute attribute)
$method=|void|removeAttribute|QGeoSatelliteInfo::Attribute

$prototype=bool hasAttribute(Attribute attribute) const
$method=|bool|hasAttribute|QGeoSatelliteInfo::Attribute

$extraMethods

#pragma ENDDUMP
