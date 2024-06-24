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

CLASS QDBusObjectPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD delete
   METHOD path
   METHOD setPath

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusObjectPath
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusObjectPath>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusObjectPath>
#endif

/*
QDBusObjectPath()
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_NEW1)
{
  auto obj = new QDBusObjectPath();
  Qt5xHb::returnNewObject(obj, true);
}

/*
QDBusObjectPath(const char * path)
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_NEW2)
{
  auto obj = new QDBusObjectPath(PCONSTCHAR(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QDBusObjectPath(QLatin1String path)
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_NEW3)
{
  auto obj = new QDBusObjectPath(*PQLATIN1STRING(1));
  Qt5xHb::returnNewObject(obj, true);
}

/*
QDBusObjectPath(const QString & path)
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_NEW4)
{
  auto obj = new QDBusObjectPath(PQSTRING(1));
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC(QDBUSOBJECTPATH_NEW)
{
  if (ISNUMPAR(0))
  {
    HB_FUNC_EXEC(QDBUSOBJECTPATH_NEW1);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QDBUSOBJECTPATH_NEW2);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QDBUSOBJECTPATH_NEW3);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QDBUSOBJECTPATH_NEW4);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDBUSOBJECTPATH_DELETE)
{
  auto obj = static_cast<QDBusObjectPath*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString path() const
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_PATH)
{
  auto obj = static_cast<QDBusObjectPath*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->path());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setPath(const QString & path)
*/
HB_FUNC_STATIC(QDBUSOBJECTPATH_SETPATH)
{
  auto obj = static_cast<QDBusObjectPath*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QDBUSOBJECTPATH_NEWFROM)
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

HB_FUNC_STATIC(QDBUSOBJECTPATH_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QDBUSOBJECTPATH_NEWFROM);
}

HB_FUNC_STATIC(QDBUSOBJECTPATH_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QDBUSOBJECTPATH_NEWFROM);
}

HB_FUNC_STATIC(QDBUSOBJECTPATH_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QDBUSOBJECTPATH_SETSELFDESTRUCTION)
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
