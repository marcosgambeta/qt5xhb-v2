/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QSurfaceDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPosition
   METHOD position
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD x
   METHOD y
   METHOD z

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSurfaceDataItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QSurfaceDataItem>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QSurfaceDataItem>
#endif
#endif

using namespace QtDataVisualization;

/*
QSurfaceDataItem()
*/
void QSurfaceDataItem_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QSurfaceDataItem();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSurfaceDataItem(const QVector3D &position)
*/
void QSurfaceDataItem_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QSurfaceDataItem( *PQVECTOR3D(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSurfaceDataItem(const QSurfaceDataItem &other)
*/
void QSurfaceDataItem_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QSurfaceDataItem( *PQSURFACEDATAITEM(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

//[1]QSurfaceDataItem()
//[2]QSurfaceDataItem(const QVector3D &position)
//[3]QSurfaceDataItem(const QSurfaceDataItem &other)

HB_FUNC_STATIC( QSURFACEDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSurfaceDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QSurfaceDataItem_new2();
  }
  else if( ISNUMPAR(1) && ISQSURFACEDATAITEM(1) )
  {
    QSurfaceDataItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QSurfaceDataItem()
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPosition(const QVector3D &pos)
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_SETPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setPosition( *PQVECTOR3D(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QVector3D position() const
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_POSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVector3D( obj->position() );
      Qt5xHb::createReturnClass( ptr, "QVECTOR3D", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setX(float value)
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_SETX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setX( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setY(float value)
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_SETY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setY( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setZ(float value)
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_SETZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZ( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
float x() const
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->x() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
float y() const
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->y() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
float z() const
*/
HB_FUNC_STATIC( QSURFACEDATAITEM_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QSurfaceDataItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->z() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void createExtraData() [protected]
*/

HB_FUNC_STATIC( QSURFACEDATAITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSURFACEDATAITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSURFACEDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QSURFACEDATAITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSURFACEDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QSURFACEDATAITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSURFACEDATAITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
