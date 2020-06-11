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

$prototype=void setSearchTerm(const QString &term)
$method=|void|setSearchTerm|const QString &

$prototype=QList<QPlaceCategory> categories() const
$method=|QList<QPlaceCategory>|categories|

$prototype=void setCategory(const QPlaceCategory &category)
$method=|void|setCategory|const QPlaceCategory &

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=|void|setCategories|const QList<QPlaceCategory> &

$prototypeV2=QGeoShape searchArea() const

$prototype=void setSearchArea(const QGeoShape &area)
$method=|void|setSearchArea|const QGeoShape &

$prototypeV2=QString recommendationId() const

$prototype=void setRecommendationId(const QString &recommendationId)
$method=|void|setRecommendationId|const QString &

$prototypeV2=QVariant searchContext() const

$prototype=void setSearchContext(const QVariant &context)
$method=|void|setSearchContext|const QVariant &

$prototypeV2=QLocation::VisibilityScope visibilityScope() const

$prototype=void setVisibilityScope(QLocation::VisibilityScope visibilityScopes)
$method=|void|setVisibilityScope|QLocation::VisibilityScope

$prototypeV2=QPlaceSearchRequest::RelevanceHint relevanceHint() const

$prototype=void setRelevanceHint(RelevanceHint hint)
$method=|void|setRelevanceHint|QPlaceSearchRequest::RelevanceHint

$prototypeV2=int limit() const

$prototype=void setLimit(int limit)
$method=|void|setLimit|int

$prototypeV2=void clear()

$extraMethods

#pragma ENDDUMP
