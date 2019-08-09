%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QString managerName() const
$method=|QString|managerName|

$prototype=int managerVersion() const
$method=|int|managerVersion|

$prototype=virtual QPlaceDetailsReply *getPlaceDetails(const QString &placeId)
$virtualMethod=|QPlaceDetailsReply *|getPlaceDetails|const QString &

$prototype=virtual QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request)
$virtualMethod=|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

$prototype=virtual QPlaceSearchReply *search(const QPlaceSearchRequest &request)
$virtualMethod=|QPlaceSearchReply *|search|const QPlaceSearchRequest &

$prototype=virtual QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request)
$virtualMethod=|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

$prototype=virtual QPlaceIdReply *savePlace(const QPlace &place)
$virtualMethod=|QPlaceIdReply *|savePlace|const QPlace &

$prototype=virtual QPlaceIdReply *removePlace(const QString &placeId)
$virtualMethod=|QPlaceIdReply *|removePlace|const QString &

$prototype=virtual QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId)
$virtualMethod=|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &

$prototype=virtual QPlaceIdReply *removeCategory(const QString &categoryId)
$virtualMethod=|QPlaceIdReply *|removeCategory|const QString &

$prototype=virtual QPlaceReply *initializeCategories()
$virtualMethod=|QPlaceReply *|initializeCategories|

$prototype=virtual QString parentCategoryId(const QString &categoryId) const
$virtualMethod=|QString|parentCategoryId|const QString &

$prototype=virtual QStringList childCategoryIds(const QString &categoryId) const
$virtualMethod=|QStringList|childCategoryIds|const QString &

$prototype=virtual QPlaceCategory category(const QString &categoryId) const
$virtualMethod=|QPlaceCategory|category|const QString &

$prototype=virtual QList<QPlaceCategory> childCategories(const QString &parentId) const
$virtualMethod=|QList<QPlaceCategory>|childCategories|const QString &

$prototype=virtual QList<QLocale> locales() const
$virtualMethod=|QList<QLocale>|locales|

$prototype=virtual void setLocales(const QList<QLocale> &locales)
$virtualMethod=|void|setLocales|const QList<QLocale> &

$prototype=virtual QUrl constructIconUrl(const QPlaceIcon &icon, const QSize &size) const
$virtualMethod=|QUrl|constructIconUrl|const QPlaceIcon &,const QSize &

$prototype=virtual QPlace compatiblePlace(const QPlace &original) const
$virtualMethod=|QPlace|compatiblePlace|const QPlace &

$prototype=virtual QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request)
$virtualMethod=|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

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
