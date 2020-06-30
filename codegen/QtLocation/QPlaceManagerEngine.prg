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

$prototypeV2=virtual QPlaceDetailsReply * getPlaceDetails( const QString & placeId )

$prototypeV2=virtual QPlaceContentReply * getPlaceContent( const QPlaceContentRequest & request )

$prototypeV2=virtual QPlaceSearchReply * search( const QPlaceSearchRequest & request )

$prototypeV2=virtual QPlaceSearchSuggestionReply * searchSuggestions( const QPlaceSearchRequest & request )

$prototypeV2=virtual QPlaceIdReply * savePlace( const QPlace & place )

$prototypeV2=virtual QPlaceIdReply * removePlace( const QString & placeId )

$prototypeV2=virtual QPlaceIdReply * saveCategory( const QPlaceCategory & category, const QString & parentId )

$prototypeV2=virtual QPlaceIdReply * removeCategory( const QString & categoryId )

$prototypeV2=virtual QPlaceReply * initializeCategories()

$prototypeV2=virtual QString parentCategoryId( const QString & categoryId ) const

$prototypeV2=virtual QStringList childCategoryIds( const QString & categoryId ) const

$prototypeV2=virtual QPlaceCategory category( const QString & categoryId ) const

$prototypeV2=virtual QList<QPlaceCategory> childCategories( const QString & parentId ) const

$prototypeV2=virtual QList<QLocale> locales() const

$prototypeV2=virtual void setLocales( const QList<QLocale> & locales )

$prototypeV2=virtual QUrl constructIconUrl( const QPlaceIcon & icon, const QSize & size ) const

$prototypeV2=virtual QPlace compatiblePlace( const QPlace & original ) const

$prototypeV2=virtual QPlaceMatchReply * matchingPlaces( const QPlaceMatchRequest & request )

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

$prototype=void categoryAdded( const QPlaceCategory & category, const QString & parentCategoryId )
$signalMethod=|void|categoryAdded|const QPlaceCategory &,const QString &

$prototype=void categoryUpdated( const QPlaceCategory & category, const QString & parentCategoryId )
$signalMethod=|void|categoryUpdated|const QPlaceCategory &,const QString &

$prototype=void categoryRemoved( const QString & categoryId, const QString & parentCategoryId )
$signalMethod=|void|categoryRemoved|const QString &,const QString &

$prototype=void dataChanged()
$signalMethod=|void|dataChanged|

#pragma ENDDUMP
