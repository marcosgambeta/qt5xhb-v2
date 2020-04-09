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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString searchTerm() const
$method=|QString|searchTerm|

$prototype=void setSearchTerm(const QString &term)
$method=|void|setSearchTerm|const QString &

$prototype=QList<QPlaceCategory> categories() const
$method=|QList<QPlaceCategory>|categories|

$prototype=void setCategory(const QPlaceCategory &category)
$method=|void|setCategory|const QPlaceCategory &

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=|void|setCategories|const QList<QPlaceCategory> &

$prototype=QGeoShape searchArea() const
$method=|QGeoShape|searchArea|

$prototype=void setSearchArea(const QGeoShape &area)
$method=|void|setSearchArea|const QGeoShape &

$prototype=QString recommendationId() const
$method=|QString|recommendationId|

$prototype=void setRecommendationId(const QString &recommendationId)
$method=|void|setRecommendationId|const QString &

$prototype=QVariant searchContext() const
$method=|QVariant|searchContext|

$prototype=void setSearchContext(const QVariant &context)
$method=|void|setSearchContext|const QVariant &

$prototype=QLocation::VisibilityScope visibilityScope() const
$method=|QLocation::VisibilityScope|visibilityScope|

$prototype=void setVisibilityScope(QLocation::VisibilityScope visibilityScopes)
$method=|void|setVisibilityScope|QLocation::VisibilityScope

$prototype=RelevanceHint relevanceHint() const
$method=|QPlaceSearchRequest::RelevanceHint|relevanceHint|

$prototype=void setRelevanceHint(RelevanceHint hint)
$method=|void|setRelevanceHint|QPlaceSearchRequest::RelevanceHint

$prototype=int limit() const
$method=|int|limit|

$prototype=void setLimit(int limit)
$method=|void|setLimit|int

$prototype=void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
