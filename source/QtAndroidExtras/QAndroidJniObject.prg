/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAndroidJniObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD callObjectMethod
   METHOD getObjectField
   METHOD toString
   METHOD isValid
   METHOD callStaticObjectMethod
   METHOD fromLocalRef
   METHOD fromString
   METHOD getStaticObjectField
   METHOD isClassAvailable

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidJniObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtAndroidExtras/QAndroidJniObject>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtAndroidExtras/QAndroidJniObject>
#endif
#endif

HB_FUNC_STATIC(QANDROIDJNIOBJECT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QAndroidJniObject()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QAndroidJniObject();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QAndroidJniObject(const char * className)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QAndroidJniObject(PCONSTCHAR(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISPOINTER(1))
  {
    /*
    QAndroidJniObject(jclass clazz)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QAndroidJniObject((jclass)hb_parptr(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QAndroidJniObject(int object)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = new QAndroidJniObject(PINT(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QANDROIDJNIOBJECT_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

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
T callMethod(const char *methodName) const
*/
/*
T callMethod(const char *methodName, const char *sig, ...) const
*/

/*
QAndroidJniObject callObjectMethod(const char * methodName) const
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_CALLOBJECTMETHOD)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QAndroidJniObject(obj->callObjectMethod(PCONSTCHAR(1)));
      Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
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
T getField(const char *fieldName) const
*/

HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETOBJECTFIELD)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QAndroidJniObject getObjectField(const char * fieldName) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QAndroidJniObject(obj->getObjectField(PCONSTCHAR(1)));
      Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
    }
#endif
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    QAndroidJniObject getObjectField(const char * fieldName, const char * signature) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QAndroidJniObject(obj->getObjectField(PCONSTCHAR(1), PCONSTCHAR(2)));
      Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_TOSTRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toString());
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
bool isValid() const
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_ISVALID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  auto obj = static_cast<QAndroidJniObject *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
T object() const
*/

/*
void setField(const char *fieldName, T value)
*/
/*
void setField(const char *fieldName, const char *signature, T value)
*/

/*
static T callStaticMethod(const char *className, const char *methodName)
*/
/*
static T callStaticMethod(const char *className, const char *methodName, const char *signature, ...)
*/
/*
static T callStaticMethod(jclass clazz, const char *methodName)
*/
/*
static T callStaticMethod(jclass clazz, const char *methodName, const char *signature, ...)
*/

HB_FUNC_STATIC(QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    static QAndroidJniObject callStaticObjectMethod(const char * className, const char * methodName)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))

    auto ptr = new QAndroidJniObject(QAndroidJniObject::callStaticObjectMethod(PCONSTCHAR(1), PCONSTCHAR(2)));
    Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#endif
  }
  else if (ISNUMPAR(2) && HB_ISPOINTER(1) && HB_ISCHAR(2))
  {
    /*
    static QAndroidJniObject callStaticObjectMethod(jclass clazz, const char * methodName)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))

    auto ptr = new QAndroidJniObject(QAndroidJniObject::callStaticObjectMethod((jclass)hb_parptr(1), PCONSTCHAR(2)));
    Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QAndroidJniObject fromLocalRef(int localRef)
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_FROMLOCALREF)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    auto ptr = new QAndroidJniObject(QAndroidJniObject::fromLocalRef(PINT(1)));
    Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QAndroidJniObject fromString(const QString & string)
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_FROMSTRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    auto ptr = new QAndroidJniObject(QAndroidJniObject::fromString(PQSTRING(1)));
    Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static T getStaticField(const char *className, const char *fieldName)
*/
/*
static T getStaticField(jclass clazz, const char *fieldName)
*/

HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    static QAndroidJniObject getStaticObjectField(const char * className, const char * fieldName)
    */
HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD)
    {
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
      {
#endif
        auto ptr = new QAndroidJniObject(QAndroidJniObject::getStaticObjectField(PCONSTCHAR(1), PCONSTCHAR(2)));
        Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
#endif
#endif
    }
  }
  else if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    static QAndroidJniObject getStaticObjectField(const char * className, const char * fieldName, const char * sig)
    */
HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD)
    {
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
      {
#endif
        auto ptr =
            new QAndroidJniObject(QAndroidJniObject::getStaticObjectField(PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3)));
        Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
#endif
#endif
    }
  }
  else if (ISNUMPAR(2) && HB_ISPOINTER(1) && HB_ISCHAR(2))
  {
    /*
    static QAndroidJniObject getStaticObjectField(jclass clazz, const char * fieldName)
    */
HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD)
    {
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      if (ISNUMPAR(2) && HB_ISPOINTER(1) && HB_ISCHAR(2))
      {
#endif
        auto ptr = new QAndroidJniObject(QAndroidJniObject::getStaticObjectField((jclass)hb_parptr(1), PCONSTCHAR(2)));
        Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
#endif
#endif
    }
  }
  else if (ISNUMPAR(3) && HB_ISPOINTER(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    static QAndroidJniObject getStaticObjectField(jclass clazz, const char * fieldName, const char * sig)
    */
HB_FUNC_STATIC(QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD)
    {
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      if (ISNUMPAR(3) && HB_ISPOINTER(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
      {
#endif
        auto ptr = new QAndroidJniObject(
            QAndroidJniObject::getStaticObjectField((jclass)hb_parptr(1), PCONSTCHAR(2), PCONSTCHAR(3)));
        Qt5xHb::createReturnClass(ptr, "QANDROIDJNIOBJECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
      }
      else
      {
        hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
      }
#endif
#endif
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static bool isClassAvailable(const char * className)
*/
HB_FUNC_STATIC(QANDROIDJNIOBJECT_ISCLASSAVAILABLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QAndroidJniObject::isClassAvailable(PCONSTCHAR(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setStaticField(const char *className, const char *fieldName, const char *signature, T value)
*/
/*
static void setStaticField(const char *className, const char *fieldName, T value)
*/
/*
static void setStaticField(jclass clazz, const char *fieldName, const char *signature, T value)
*/
/*
static void setStaticField(jclass clazz, const char *fieldName, T value)
*/

HB_FUNC_STATIC(QANDROIDJNIOBJECT_NEWFROM)
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

HB_FUNC_STATIC(QANDROIDJNIOBJECT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QANDROIDJNIOBJECT_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDJNIOBJECT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QANDROIDJNIOBJECT_NEWFROM);
}

HB_FUNC_STATIC(QANDROIDJNIOBJECT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QANDROIDJNIOBJECT_SETSELFDESTRUCTION)
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
