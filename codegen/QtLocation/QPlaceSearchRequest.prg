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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtPositioning/QGeoShape>

$prototype=QPlaceSearchRequest()
$internalConstructor=|new1|

$prototype=QPlaceSearchRequest(const QPlaceSearchRequest &other)
$internalConstructor=|new2|const QPlaceSearchRequest &

/*
[1]QPlaceSearchRequest()
[2]QPlaceSearchRequest(const QPlaceSearchRequest &other)
*/

HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
  {
    QPlaceSearchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString searchTerm() const

$prototypeV2=void setSearchTerm( const QString & term )

$prototypeV2=QList<QPlaceCategory> categories() const

$prototypeV2=void setCategory( const QPlaceCategory & category )

$prototypeV2=void setCategories( const QList<QPlaceCategory> & categories )

$prototypeV2=QGeoShape searchArea() const

$prototypeV2=void setSearchArea( const QGeoShape & area )

$prototypeV2=QString recommendationId() const

$prototypeV2=void setRecommendationId( const QString & recommendationId )

$prototypeV2=QVariant searchContext() const

$prototypeV2=void setSearchContext( const QVariant & context )

$prototypeV2=QLocation::VisibilityScope visibilityScope() const

$prototypeV2=void setVisibilityScope( QLocation::VisibilityScope visibilityScopes )

$prototypeV2=QPlaceSearchRequest::RelevanceHint relevanceHint() const

$prototypeV2=void setRelevanceHint( QPlaceSearchRequest::RelevanceHint hint )

$prototypeV2=int limit() const

$prototypeV2=void setLimit( int limit )

$prototypeV2=void clear()

$extraMethods

#pragma ENDDUMP
