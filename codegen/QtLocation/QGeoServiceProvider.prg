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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QGeoCodingManager>
#include <QtLocation/QGeoRoutingManager>
#include <QtLocation/QPlaceManager>

$deleteMethod

$prototype=static QStringList availableServiceProviders()
$staticMethod=|QStringList|availableServiceProviders|

$prototype=RoutingFeatures routingFeatures() const
$method=|QGeoServiceProvider::RoutingFeatures|routingFeatures|

$prototype=GeocodingFeatures geocodingFeatures() const
$method=|QGeoServiceProvider::GeocodingFeatures|geocodingFeatures|

$prototype=MappingFeatures mappingFeatures() const
$method=|QGeoServiceProvider::MappingFeatures|mappingFeatures|

$prototype=PlacesFeatures placesFeatures() const
$method=|QGeoServiceProvider::PlacesFeatures|placesFeatures|

$prototype=QGeoCodingManager *geocodingManager() const
$method=|QGeoCodingManager *|geocodingManager|

$prototype=QGeoMappingManager *mappingManager() const
%% TODO: classe inexistente na documentacao do Qt
%% $method=|QGeoMappingManager *|mappingManager|

$prototype=QGeoRoutingManager *routingManager() const
$method=|QGeoRoutingManager *|routingManager|

$prototype=QPlaceManager *placeManager() const
$method=|QPlaceManager *|placeManager|

$prototype=Error error() const
$method=|QGeoServiceProvider::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototype=void setAllowExperimental(bool allow)
$method=|void|setAllowExperimental|bool

#pragma ENDDUMP
