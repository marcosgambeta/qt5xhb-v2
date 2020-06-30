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

#include <QtLocation/QPlaceSearchReply>

$deleteMethod

$prototypeV2=QString managerName() const

$prototypeV2=int managerVersion() const

$prototypeV2=QPlaceDetailsReply * getPlaceDetails( const QString & placeId ) const

$prototypeV2=QPlaceContentReply * getPlaceContent( const QPlaceContentRequest & request ) const

$prototypeV2=QPlaceSearchReply * search( const QPlaceSearchRequest & query ) const

$prototypeV2=QPlaceSearchSuggestionReply * searchSuggestions( const QPlaceSearchRequest & request ) const

$prototypeV2=QPlaceIdReply * savePlace( const QPlace & place )

$prototypeV2=QPlaceIdReply * removePlace( const QString & placeId )

$prototypeV2=QPlaceIdReply * saveCategory( const QPlaceCategory & category, const QString & parentId = QString() )

$prototypeV2=QPlaceIdReply * removeCategory( const QString & categoryId )

$prototypeV2=QPlaceReply * initializeCategories()

$prototypeV2=QString parentCategoryId( const QString & categoryId ) const

$prototypeV2=QStringList childCategoryIds( const QString & parentId = QString() ) const

$prototypeV2=QPlaceCategory category( const QString & categoryId ) const

$prototypeV2=QList<QPlaceCategory> childCategories( const QString & parentId = QString() ) const

$prototypeV2=QList<QLocale> locales() const

$prototypeV2=void setLocales( const QList<QLocale> & locale )

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=QPlace compatiblePlace( const QPlace & place )

$prototypeV2=QPlaceMatchReply * matchingPlaces( const QPlaceMatchRequest & request ) const

%%
%% SIGNALS
%%

$prototype=void finished( QPlaceReply * reply )
$signalMethod=|void|finished|QPlaceReply *

$prototype=void error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error|QPlaceReply *,QPlaceReply::Error,const QString &

$prototype=void placeAdded( const QString & placeId )
$signalMethod=|void|placeAdded|const QString &

$prototype=void placeUpdated( const QString & placeId )
$signalMethod=|void|placeUpdated|const QString &

$prototype=void placeRemoved( const QString & placeId )
$signalMethod=|void|placeRemoved|const QString &

$prototype=void categoryAdded( const QPlaceCategory & category, const QString & parentId )
$signalMethod=|void|categoryAdded|const QPlaceCategory &,const QString &

$prototype=void categoryUpdated( const QPlaceCategory & category, const QString & parentId )
$signalMethod=|void|categoryUpdated|const QPlaceCategory &,const QString &

$prototype=void categoryRemoved( const QString & categoryId, const QString & parentId )
$signalMethod=|void|categoryRemoved|const QString &,const QString &

$prototype=void dataChanged()
$signalMethod=|void|dataChanged|

#pragma ENDDUMP
