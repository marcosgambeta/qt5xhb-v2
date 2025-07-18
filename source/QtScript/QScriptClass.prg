//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTVALUE
REQUEST QVARIANT
#endif

CLASS QScriptClass

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD setProperty
   METHOD supportsExtension

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptClass
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScript/QScriptClass>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtScript/QScriptClass>
#endif

#include <QtScript/QScriptEngine>

    /*
    QScriptClass(QScriptEngine * engine)
    */
HB_FUNC_STATIC(QSCRIPTCLASS_NEW)
{
  if (ISNUMPAR(1) && ISQSCRIPTENGINE(1))
  {
    auto obj = new QScriptClass(PQSCRIPTENGINE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSCRIPTCLASS_DELETE)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

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
QScriptEngine * engine() const
*/
HB_FUNC_STATIC(QSCRIPTCLASS_ENGINE)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->engine();
      Qt5xHb::createReturnQObjectClass(ptr, "QSCRIPTENGINE");
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
virtual QVariant extension(QScriptClass::Extension extension, const QVariant &argument = QVariant())
*/
HB_FUNC_STATIC(QSCRIPTCLASS_EXTENSION)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQVARIANT(2) || HB_ISNIL(2)))
    {
#endif
      auto ptr =
          new QVariant(obj->extension(static_cast<QScriptClass::Extension>(hb_parni(1)),
                                      HB_ISNIL(2) ? QVariant() : *static_cast<QVariant *>(Qt5xHb::itemGetPtr(2))));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual QString name() const
*/
HB_FUNC_STATIC(QSCRIPTCLASS_NAME)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->name());
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
virtual QScriptClassPropertyIterator * newIterator(const QScriptValue &object)
*/
HB_FUNC_STATIC(QSCRIPTCLASS_NEWITERATOR)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCRIPTVALUE(1))
    {
#endif
      auto ptr = obj->newIterator(*PQSCRIPTVALUE(1));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTCLASSPROPERTYITERATOR", false);
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
virtual QScriptValue property(const QScriptValue &object, const QScriptString &name, uint id)
*/
HB_FUNC_STATIC(QSCRIPTCLASS_PROPERTY)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQSCRIPTVALUE(1) && ISQSCRIPTSTRING(2) && HB_ISNUM(3))
    {
#endif
      auto ptr = new QScriptValue(obj->property(*PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), PUINT(3)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
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
virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue &object, const QScriptString &name, uint id)
*/
HB_FUNC_STATIC(QSCRIPTCLASS_PROPERTYFLAGS)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQSCRIPTVALUE(1) && ISQSCRIPTSTRING(2) && HB_ISNUM(3))
    {
#endif
      RENUM(obj->propertyFlags(*PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), PUINT(3)));
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
virtual QScriptValue prototype() const
*/
HB_FUNC_STATIC(QSCRIPTCLASS_PROTOTYPE)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QScriptValue(obj->prototype());
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
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
virtual QueryFlags queryProperty(const QScriptValue &object, const QScriptString &name, QueryFlags flags, uint * id)
*/
/*
virtual void setProperty(QScriptValue &object, const QScriptString &name, uint id, const QScriptValue &value)
*/
HB_FUNC_STATIC(QSCRIPTCLASS_SETPROPERTY)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQSCRIPTVALUE(1) && ISQSCRIPTSTRING(2) && HB_ISNUM(3) && ISQSCRIPTVALUE(4))
    {
#endif
      obj->setProperty(*PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), PUINT(3), *PQSCRIPTVALUE(4));
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
virtual bool supportsExtension(QScriptClass::Extension extension) const
*/
HB_FUNC_STATIC(QSCRIPTCLASS_SUPPORTSEXTENSION)
{
  auto obj = static_cast<QScriptClass *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->supportsExtension(static_cast<QScriptClass::Extension>(hb_parni(1))));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSCRIPTCLASS_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (ISNUMPAR(1) && HB_ISPOINTER(1))
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

HB_FUNC_STATIC(QSCRIPTCLASS_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSCRIPTCLASS_NEWFROM);
}

HB_FUNC_STATIC(QSCRIPTCLASS_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSCRIPTCLASS_NEWFROM);
}

HB_FUNC_STATIC(QSCRIPTCLASS_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSCRIPTCLASS_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (ISNUMPAR(1) && HB_ISLOG(1))
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
