/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QBarDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setValue
   METHOD value
   METHOD setRotation
   METHOD rotation

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarDataItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBarDataItem>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBarDataItem>
#endif
#endif

using namespace QtDataVisualization;

HB_FUNC_STATIC( QBARDATAITEM_NEW )
{
  if (ISNUMPAR(0))
  {
    /*
    QBarDataItem()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QBarDataItem();
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QBarDataItem( float value )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QBarDataItem(PFLOAT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QBarDataItem( float value, float angle )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QBarDataItem(PFLOAT(1), PFLOAT(2));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else if (ISNUMPAR(1) && ISQBARDATAITEM(1))
  {
    /*
    QBarDataItem( const QBarDataItem & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    auto obj = new QBarDataItem( *PQBARDATAITEM(1));
    Qt5xHb::returnNewObject(obj, true);
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QBarDataItem()
*/
HB_FUNC_STATIC( QBARDATAITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QBarDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
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
void setValue( float val )
*/
HB_FUNC_STATIC( QBARDATAITEM_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QBarDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setValue(PFLOAT(1));
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
float value() const
*/
HB_FUNC_STATIC( QBARDATAITEM_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QBarDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->value());
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
void setRotation( float angle )
*/
HB_FUNC_STATIC( QBARDATAITEM_SETROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QBarDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRotation(PFLOAT(1));
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
float rotation() const
*/
HB_FUNC_STATIC( QBARDATAITEM_ROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = static_cast<QBarDataItem*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->rotation());
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

HB_FUNC_STATIC( QBARDATAITEM_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
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

HB_FUNC_STATIC( QBARDATAITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC(QBARDATAITEM_NEWFROM);
}

HB_FUNC_STATIC( QBARDATAITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC(QBARDATAITEM_NEWFROM);
}

HB_FUNC_STATIC( QBARDATAITEM_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QBARDATAITEM_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
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
