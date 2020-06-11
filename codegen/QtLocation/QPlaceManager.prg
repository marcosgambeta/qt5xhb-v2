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

$prototype=QPlaceDetailsReply *getPlaceDetails(const QString &placeId) const
$method=|QPlaceDetailsReply *|getPlaceDetails|const QString &

$prototype=QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request) const
$method=|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

$prototype=QPlaceSearchReply *search(const QPlaceSearchRequest &query) const
$method=|QPlaceSearchReply *|search|const QPlaceSearchRequest &

$prototype=QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request) const
$method=|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

$prototype=QPlaceIdReply *savePlace(const QPlace &place)
$method=|QPlaceIdReply *|savePlace|const QPlace &

$prototype=QPlaceIdReply *removePlace(const QString &placeId)
$method=|QPlaceIdReply *|removePlace|const QString &

$prototype=QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId = QString())
$method=|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &=QString()

$prototype=QPlaceIdReply *removeCategory(const QString &categoryId)
$method=|QPlaceIdReply *|removeCategory|const QString &

$prototypeV2=QPlaceReply * initializeCategories()

$prototype=QString parentCategoryId(const QString &categoryId) const
$method=|QString|parentCategoryId|const QString &

$prototype=QStringList childCategoryIds(const QString &parentId = QString()) const
$method=|QStringList|childCategoryIds|const QString &=QString()

$prototype=QPlaceCategory category(const QString &categoryId) const
$method=|QPlaceCategory|category|const QString &

$prototype=QList<QPlaceCategory> childCategories(const QString &parentId = QString()) const
$method=|QList<QPlaceCategory>|childCategories|const QString &=QString()

$prototype=QList<QLocale> locales() const
$method=|QList<QLocale>|locales|

$prototype=void setLocales(const QList<QLocale> &locale)
$method=|void|setLocales|const QList<QLocale> &

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototype=QPlace compatiblePlace(const QPlace &place)
$method=|QPlace|compatiblePlace|const QPlace &

$prototype=QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request) const
$method=|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

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
