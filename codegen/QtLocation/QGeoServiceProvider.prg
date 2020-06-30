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

$prototypeV2=static QStringList availableServiceProviders()

$prototypeV2=QGeoServiceProvider::RoutingFeatures routingFeatures() const

$prototypeV2=QGeoServiceProvider::GeocodingFeatures geocodingFeatures() const

$prototypeV2=QGeoServiceProvider::MappingFeatures mappingFeatures() const

$prototypeV2=QGeoServiceProvider::PlacesFeatures placesFeatures() const

$prototypeV2=QGeoCodingManager * geocodingManager() const

$prototype=QGeoMappingManager *mappingManager() const
%% TODO: classe inexistente na documentacao do Qt
%% $method=|QGeoMappingManager *|mappingManager|

$prototypeV2=QGeoRoutingManager * routingManager() const

$prototypeV2=QPlaceManager * placeManager() const

$prototypeV2=QGeoServiceProvider::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=void setAllowExperimental( bool allow )

#pragma ENDDUMP
