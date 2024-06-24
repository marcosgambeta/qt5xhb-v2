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

CLASS QProcessEnvironment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD insert
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD systemEnvironment

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QProcessEnvironment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QProcessEnvironment>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QProcessEnvironment>
#endif

HB_FUNC_STATIC(QPROCESSENVIRONMENT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QProcessEnvironment()
    */
    auto obj = new QProcessEnvironment();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if (ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1))
  {
    /*
    QProcessEnvironment(const QProcessEnvironment & other)
    */
    auto obj = new QProcessEnvironment(*PQPROCESSENVIRONMENT(1));
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_DELETE)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

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
void swap(QProcessEnvironment & other)
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_SWAP)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1))
    {
#endif
      obj->swap(*PQPROCESSENVIRONMENT(1));
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

/*
bool isEmpty() const
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_ISEMPTY)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
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
void clear()
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_CLEAR)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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

/*
bool contains(const QString & name) const
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_CONTAINS)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->contains(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_INSERT)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void insert(const QString & name, const QString & value)
    */
    auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->insert(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else if (ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1))
  {
    /*
    void insert(const QProcessEnvironment & e)
    */
    auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->insert(*PQPROCESSENVIRONMENT(1));
    }

    hb_itemReturn(hb_stackSelfItem());

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void remove(const QString & name)
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_REMOVE)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->remove(PQSTRING(1));
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

/*
QString value(const QString & name, const QString & defaultValue = QString()) const
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_VALUE)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      RQSTRING(obj->value(PQSTRING(1), OPQSTRING(2, QString())));
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
QStringList toStringList() const
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_TOSTRINGLIST)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->toStringList());
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
QStringList keys() const
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_KEYS)
{
  auto obj = static_cast<QProcessEnvironment*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->keys());
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
static QProcessEnvironment systemEnvironment()
*/
HB_FUNC_STATIC(QPROCESSENVIRONMENT_SYSTEMENVIRONMENT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    auto ptr = new QProcessEnvironment(QProcessEnvironment::systemEnvironment());
    Qt5xHb::createReturnClass(ptr, "QPROCESSENVIRONMENT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_NEWFROM)
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

HB_FUNC_STATIC(QPROCESSENVIRONMENT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPROCESSENVIRONMENT_NEWFROM);
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPROCESSENVIRONMENT_NEWFROM);
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPROCESSENVIRONMENT_SETSELFDESTRUCTION)
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
