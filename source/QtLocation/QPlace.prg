/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOLOCATION
REQUEST QPLACEATTRIBUTE
REQUEST QPLACECATEGORY
REQUEST QPLACECONTACTDETAIL
REQUEST QPLACEICON
REQUEST QPLACERATINGS
REQUEST QPLACESUPPLIER
REQUEST QURL
#endif

CLASS QPlace

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD categories
   METHOD setCategories
   METHOD setCategory
   METHOD location
   METHOD setLocation
   METHOD ratings
   METHOD setRatings
   METHOD supplier
   METHOD setSupplier
   METHOD attribution
   METHOD setAttribution
   METHOD icon
   METHOD setIcon
   METHOD totalContentCount
   METHOD setTotalContentCount
   METHOD name
   METHOD setName
   METHOD placeId
   METHOD setPlaceId
   METHOD primaryPhone
   METHOD primaryFax
   METHOD primaryEmail
   METHOD primaryWebsite
   METHOD detailsFetched
   METHOD setDetailsFetched
   METHOD extendedAttributeTypes
   METHOD extendedAttribute
   METHOD setExtendedAttribute
   METHOD removeExtendedAttribute
   METHOD contactTypes
   METHOD contactDetails
   METHOD setContactDetails
   METHOD appendContactDetail
   METHOD removeContactDetails
   METHOD visibility
   METHOD setVisibility
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlace>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlace>
#endif
#endif

#include <QtLocation/QPlaceIcon>
#include <QtLocation/QPlaceSupplier>

HB_FUNC_STATIC( QPLACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPlace()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QPlace();
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if( ISNUMPAR(1) && ISQPLACE(1) )
  {
    /*
    QPlace( const QPlace & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    auto obj = new QPlace( *PQPLACE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPLACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QList<QPlaceCategory> categories() const
*/
HB_FUNC_STATIC( QPLACE_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QList<QPlaceCategory> list = obj->categories();
      PHB_DYNS pDynSym = hb_dynsymFindName("QPLACECATEGORY");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QPlaceCategory(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QPLACECATEGORY", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setCategories( const QList<QPlaceCategory> & categories )
*/
HB_FUNC_STATIC( QPLACE_SETCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QPlaceCategory> par1;
      auto aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( auto i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QPlaceCategory*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0) ) );
      }
      obj->setCategories( par1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setCategory( const QPlaceCategory & category )
*/
HB_FUNC_STATIC( QPLACE_SETCATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACECATEGORY(1) )
    {
#endif
      obj->setCategory( *PQPLACECATEGORY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QGeoLocation location() const
*/
HB_FUNC_STATIC( QPLACE_LOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QGeoLocation( obj->location() );
      Qt5xHb::createReturnClass(ptr, "QGEOLOCATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLocation( const QGeoLocation & location )
*/
HB_FUNC_STATIC( QPLACE_SETLOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
    {
#endif
      obj->setLocation( *PQGEOLOCATION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPlaceRatings ratings() const
*/
HB_FUNC_STATIC( QPLACE_RATINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPlaceRatings( obj->ratings() );
      Qt5xHb::createReturnClass(ptr, "QPLACERATINGS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRatings( const QPlaceRatings & ratings )
*/
HB_FUNC_STATIC( QPLACE_SETRATINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACERATINGS(1) )
    {
#endif
      obj->setRatings( *PQPLACERATINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPlaceSupplier supplier() const
*/
HB_FUNC_STATIC( QPLACE_SUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPlaceSupplier( obj->supplier() );
      Qt5xHb::createReturnClass(ptr, "QPLACESUPPLIER", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setSupplier( const QPlaceSupplier & supplier )
*/
HB_FUNC_STATIC( QPLACE_SETSUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
    {
#endif
      obj->setSupplier( *PQPLACESUPPLIER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString attribution() const
*/
HB_FUNC_STATIC( QPLACE_ATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->attribution() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setAttribution( const QString & attribution )
*/
HB_FUNC_STATIC( QPLACE_SETATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setAttribution( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACE_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPlaceIcon( obj->icon() );
      Qt5xHb::createReturnClass(ptr, "QPLACEICON", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setIcon( const QPlaceIcon & icon )
*/
HB_FUNC_STATIC( QPLACE_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACEICON(1) )
    {
#endif
      obj->setIcon( *PQPLACEICON(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int totalContentCount( QPlaceContent::Type type ) const
*/
HB_FUNC_STATIC( QPLACE_TOTALCONTENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->totalContentCount( static_cast<QPlaceContent::Type>( hb_parni(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setTotalContentCount( QPlaceContent::Type type, int total )
*/
HB_FUNC_STATIC( QPLACE_SETTOTALCONTENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setTotalContentCount( static_cast<QPlaceContent::Type>( hb_parni(1) ), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QPLACE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setName( const QString & name )
*/
HB_FUNC_STATIC( QPLACE_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString placeId() const
*/
HB_FUNC_STATIC( QPLACE_PLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->placeId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPlaceId( const QString & identifier )
*/
HB_FUNC_STATIC( QPLACE_SETPLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPlaceId( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString primaryPhone() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYPHONE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->primaryPhone() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString primaryFax() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYFAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->primaryFax() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString primaryEmail() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYEMAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->primaryEmail() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QUrl primaryWebsite() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYWEBSITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->primaryWebsite() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool detailsFetched() const
*/
HB_FUNC_STATIC( QPLACE_DETAILSFETCHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->detailsFetched() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setDetailsFetched( bool fetched )
*/
HB_FUNC_STATIC( QPLACE_SETDETAILSFETCHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDetailsFetched( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QStringList extendedAttributeTypes() const
*/
HB_FUNC_STATIC( QPLACE_EXTENDEDATTRIBUTETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->extendedAttributeTypes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPlaceAttribute extendedAttribute( const QString & attributeType ) const
*/
HB_FUNC_STATIC( QPLACE_EXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      auto ptr = new QPlaceAttribute( obj->extendedAttribute( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QPLACEATTRIBUTE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setExtendedAttribute( const QString & attributeType, const QPlaceAttribute & attribute )
*/
HB_FUNC_STATIC( QPLACE_SETEXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQPLACEATTRIBUTE(2) )
    {
#endif
      obj->setExtendedAttribute( PQSTRING(1), *PQPLACEATTRIBUTE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void removeExtendedAttribute( const QString & attributeType )
*/
HB_FUNC_STATIC( QPLACE_REMOVEEXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeExtendedAttribute( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QStringList contactTypes() const
*/
HB_FUNC_STATIC( QPLACE_CONTACTTYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->contactTypes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QList<QPlaceContactDetail> contactDetails( const QString & contactType ) const
*/
HB_FUNC_STATIC( QPLACE_CONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      const QList<QPlaceContactDetail> list = obj->contactDetails( PQSTRING(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QPLACECONTACTDETAIL");
      auto pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( const auto & item : list )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, new QPlaceContactDetail(item));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          auto pDestroy = hb_itemPutL(nullptr, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QPLACECONTACTDETAIL", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setContactDetails( const QString & contactType, QList<QPlaceContactDetail> details )
*/
HB_FUNC_STATIC( QPLACE_SETCONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
    {
#endif
      QList<QPlaceContactDetail> par2;
      auto aList2 = hb_param( 2, HB_IT_ARRAY );
      int nLen2 = hb_arrayLen( aList2 );
      for( auto i2 = 0; i2 < nLen2; i2++ )
      {
        par2 << *static_cast<QPlaceContactDetail*>( hb_itemGetPtr( hb_objSendMsg(hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0) ) );
      }
      obj->setContactDetails( PQSTRING(1), par2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void appendContactDetail( const QString & contactType, const QPlaceContactDetail & detail )
*/
HB_FUNC_STATIC( QPLACE_APPENDCONTACTDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQPLACECONTACTDETAIL(2) )
    {
#endif
      obj->appendContactDetail( PQSTRING(1), *PQPLACECONTACTDETAIL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void removeContactDetails( const QString & contactType )
*/
HB_FUNC_STATIC( QPLACE_REMOVECONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeContactDetails( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLocation::Visibility visibility() const
*/
HB_FUNC_STATIC( QPLACE_VISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->visibility() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setVisibility( QLocation::Visibility visibility )
*/
HB_FUNC_STATIC( QPLACE_SETVISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVisibility( static_cast<QLocation::Visibility>( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACE_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = static_cast<QPlace*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPLACE_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QPLACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACE_NEWFROM );
}

HB_FUNC_STATIC( QPLACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACE_NEWFROM );
}

HB_FUNC_STATIC( QPLACE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPLACE_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
