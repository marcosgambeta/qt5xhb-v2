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

#include <QtLocation/QPlaceIcon>
#include <QtLocation/QPlaceSupplier>

$prototype=QPlace()
$internalConstructor=|new1|

$prototype=QPlace(const QPlace &other)
$internalConstructor=|new2|const QPlace &

/*
[1]QPlace()
[2]QPlace(const QPlace &other)
*/

HB_FUNC_STATIC( QPLACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlace_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACE(1) )
  {
    QPlace_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QList<QPlaceCategory> categories() const

$prototypeV2=void setCategories( const QList<QPlaceCategory> & categories )

$prototypeV2=void setCategory( const QPlaceCategory & category )

$prototypeV2=QGeoLocation location() const

$prototypeV2=void setLocation( const QGeoLocation & location )

$prototypeV2=QPlaceRatings ratings() const

$prototypeV2=void setRatings( const QPlaceRatings & ratings )

$prototypeV2=QPlaceSupplier supplier() const

$prototypeV2=void setSupplier( const QPlaceSupplier & supplier )

$prototypeV2=QString attribution() const

$prototypeV2=void setAttribution( const QString & attribution )

$prototypeV2=QPlaceIcon icon() const

$prototypeV2=void setIcon( const QPlaceIcon & icon )

$prototypeV2=int totalContentCount( QPlaceContent::Type type ) const

$prototypeV2=void setTotalContentCount( QPlaceContent::Type type, int total )

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

$prototypeV2=QString placeId() const

$prototypeV2=void setPlaceId( const QString & identifier )

$prototypeV2=QString primaryPhone() const

$prototypeV2=QString primaryFax() const

$prototypeV2=QString primaryEmail() const

$prototypeV2=QUrl primaryWebsite() const

$prototypeV2=bool detailsFetched() const

$prototypeV2=void setDetailsFetched( bool fetched )

$prototypeV2=QStringList extendedAttributeTypes() const

$prototypeV2=QPlaceAttribute extendedAttribute( const QString & attributeType ) const

$prototypeV2=void setExtendedAttribute( const QString & attributeType, const QPlaceAttribute & attribute )

$prototypeV2=void removeExtendedAttribute( const QString & attributeType )

$prototypeV2=QStringList contactTypes() const

$prototypeV2=QList<QPlaceContactDetail> contactDetails( const QString & contactType ) const

$prototypeV2=void setContactDetails( const QString & contactType, QList<QPlaceContactDetail> details )

$prototypeV2=void appendContactDetail( const QString & contactType, const QPlaceContactDetail & detail )

$prototypeV2=void removeContactDetails( const QString & contactType )

$prototypeV2=QLocation::Visibility visibility() const

$prototypeV2=void setVisibility( QLocation::Visibility visibility )

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
