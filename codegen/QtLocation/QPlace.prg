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

#include <QtLocation/QPlaceSupplier>
#include <QtLocation/QPlaceIcon>

$prototype=QPlace()
$internalConstructor=|new1|

$prototype=QPlace(const QPlace &other)
$internalConstructor=|new2|const QPlace &

//[1]QPlace()
//[2]QPlace(const QPlace &other)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QPlaceCategory> categories() const
$method=|QList<QPlaceCategory>|categories|

$prototype=void setCategories(const QList<QPlaceCategory> &categories)
$method=|void|setCategories|const QList<QPlaceCategory> &

$prototype=void setCategory(const QPlaceCategory &category)
$method=|void|setCategory|const QPlaceCategory &

$prototype=QGeoLocation location() const
$method=|QGeoLocation|location|

$prototype=void setLocation(const QGeoLocation &location)
$method=|void|setLocation|const QGeoLocation &

$prototype=QPlaceRatings ratings() const
$method=|QPlaceRatings|ratings|

$prototype=void setRatings(const QPlaceRatings &ratings)
$method=|void|setRatings|const QPlaceRatings &

$prototype=QPlaceSupplier supplier() const
$method=|QPlaceSupplier|supplier|

$prototype=void setSupplier(const QPlaceSupplier &supplier)
$method=|void|setSupplier|const QPlaceSupplier &

$prototype=QString attribution() const
$method=|QString|attribution|

$prototype=void setAttribution(const QString &attribution)
$method=|void|setAttribution|const QString &

$prototype=QPlaceIcon icon() const
$method=|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=|void|setIcon|const QPlaceIcon &

$prototype=int totalContentCount(QPlaceContent::Type type) const
$method=|int|totalContentCount|QPlaceContent::Type

$prototype=void setTotalContentCount(QPlaceContent::Type type, int total)
$method=|void|setTotalContentCount|QPlaceContent::Type,int

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QString placeId() const
$method=|QString|placeId|

$prototype=void setPlaceId(const QString &identifier)
$method=|void|setPlaceId|const QString &

$prototype=QString primaryPhone() const
$method=|QString|primaryPhone|

$prototype=QString primaryFax() const
$method=|QString|primaryFax|

$prototype=QString primaryEmail() const
$method=|QString|primaryEmail|

$prototype=QUrl primaryWebsite() const
$method=|QUrl|primaryWebsite|

$prototype=bool detailsFetched() const
$method=|bool|detailsFetched|

$prototype=void setDetailsFetched(bool fetched)
$method=|void|setDetailsFetched|bool

$prototype=QStringList extendedAttributeTypes() const
$method=|QStringList|extendedAttributeTypes|

$prototype=QPlaceAttribute extendedAttribute(const QString &attributeType) const
$method=|QPlaceAttribute|extendedAttribute|const QString &

$prototype=void setExtendedAttribute(const QString &attributeType, const QPlaceAttribute &attribute)
$method=|void|setExtendedAttribute|const QString &,const QPlaceAttribute &

$prototype=void removeExtendedAttribute(const QString &attributeType)
$method=|void|removeExtendedAttribute|const QString &

$prototype=QStringList contactTypes() const
$method=|QStringList|contactTypes|

$prototype=QList<QPlaceContactDetail> contactDetails(const QString &contactType) const
$method=|QList<QPlaceContactDetail>|contactDetails|const QString &

$prototype=void setContactDetails(const QString &contactType, QList<QPlaceContactDetail> details)
$method=|void|setContactDetails|const QString &,QList<QPlaceContactDetail>

$prototype=void appendContactDetail(const QString &contactType, const QPlaceContactDetail &detail)
$method=|void|appendContactDetail|const QString &,const QPlaceContactDetail &

$prototype=void removeContactDetails(const QString &contactType)
$method=|void|removeContactDetails|const QString &

$prototype=QLocation::Visibility visibility() const
$method=|QLocation::Visibility|visibility|

$prototype=void setVisibility(QLocation::Visibility visibility)
$method=|void|setVisibility|QLocation::Visibility

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
