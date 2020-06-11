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

$prototype=QList<QPlaceCategory> categories() const
$method=|QList<QPlaceCategory>|categories|

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=|void|setCategories|const QList<QPlaceCategory> &

$prototype=void setCategory(const QPlaceCategory &category)
$method=|void|setCategory|const QPlaceCategory &

$prototypeV2=QGeoLocation location() const

$prototype=void setLocation(const QGeoLocation &location)
$method=|void|setLocation|const QGeoLocation &

$prototypeV2=QPlaceRatings ratings() const

$prototype=void setRatings(const QPlaceRatings &ratings)
$method=|void|setRatings|const QPlaceRatings &

$prototypeV2=QPlaceSupplier supplier() const

$prototype=void setSupplier(const QPlaceSupplier &supplier)
$method=|void|setSupplier|const QPlaceSupplier &

$prototypeV2=QString attribution() const

$prototype=void setAttribution(const QString &attribution)
$method=|void|setAttribution|const QString &

$prototypeV2=QPlaceIcon icon() const

$prototype=void setIcon(const QPlaceIcon &icon)
$method=|void|setIcon|const QPlaceIcon &

$prototype=int totalContentCount(QPlaceContent::Type type) const
$method=|int|totalContentCount|QPlaceContent::Type

$prototype=void setTotalContentCount(QPlaceContent::Type type, int total)
$method=|void|setTotalContentCount|QPlaceContent::Type,int

$prototypeV2=QString name() const

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototypeV2=QString placeId() const

$prototype=void setPlaceId(const QString &identifier)
$method=|void|setPlaceId|const QString &

$prototypeV2=QString primaryPhone() const

$prototypeV2=QString primaryFax() const

$prototypeV2=QString primaryEmail() const

$prototypeV2=QUrl primaryWebsite() const

$prototypeV2=bool detailsFetched() const

$prototype=void setDetailsFetched(bool fetched)
$method=|void|setDetailsFetched|bool

$prototypeV2=QStringList extendedAttributeTypes() const

$prototype=QPlaceAttribute extendedAttribute(const QString &attributeType) const
$method=|QPlaceAttribute|extendedAttribute|const QString &

$prototype=void setExtendedAttribute(const QString &attributeType, const QPlaceAttribute &attribute)
$method=|void|setExtendedAttribute|const QString &,const QPlaceAttribute &

$prototype=void removeExtendedAttribute(const QString &attributeType)
$method=|void|removeExtendedAttribute|const QString &

$prototypeV2=QStringList contactTypes() const

$prototype=QList<QPlaceContactDetail> contactDetails(const QString &contactType) const
$method=|QList<QPlaceContactDetail>|contactDetails|const QString &

$prototype=void setContactDetails(const QString &contactType, QList<QPlaceContactDetail> details)
$method=|void|setContactDetails|const QString &,QList<QPlaceContactDetail>

$prototype=void appendContactDetail(const QString &contactType, const QPlaceContactDetail &detail)
$method=|void|appendContactDetail|const QString &,const QPlaceContactDetail &

$prototype=void removeContactDetails(const QString &contactType)
$method=|void|removeContactDetails|const QString &

$prototypeV2=QLocation::Visibility visibility() const

$prototype=void setVisibility(QLocation::Visibility visibility)
$method=|void|setVisibility|QLocation::Visibility

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
