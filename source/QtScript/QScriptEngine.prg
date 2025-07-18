//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newDate
   METHOD newObject
   METHOD newQMetaObject
   METHOD newRegExp
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScript/QScriptEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtScript/QScriptEngine>
#endif

#include <QtCore/QStringList>

HB_FUNC_STATIC(QSCRIPTENGINE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QScriptEngine()
    */
    auto obj = new QScriptEngine();
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    /*
    QScriptEngine(QObject * parent)
    */
    auto obj = new QScriptEngine(PQOBJECT(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSCRIPTENGINE_DELETE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void abortEvaluation(const QScriptValue &result = QScriptValue())
*/
HB_FUNC_STATIC(QSCRIPTENGINE_ABORTEVALUATION)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQSCRIPTVALUE(1) || HB_ISNIL(1)))
    {
#endif
      obj->abortEvaluation(HB_ISNIL(1) ? QScriptValue() : *static_cast<QScriptValue *>(Qt5xHb::itemGetPtr(1)));
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
QScriptEngineAgent * agent() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_AGENT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->agent();
      Qt5xHb::createReturnClass(ptr, "QSCRIPTENGINEAGENT", false);
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
QStringList availableExtensions() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_AVAILABLEEXTENSIONS)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->availableExtensions());
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
void clearExceptions()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_CLEAREXCEPTIONS)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearExceptions();
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
void collectGarbage()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_COLLECTGARBAGE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->collectGarbage();
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
QScriptContext * currentContext() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_CURRENTCONTEXT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->currentContext();
      Qt5xHb::createReturnClass(ptr, "QSCRIPTCONTEXT", false);
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
QScriptValue defaultPrototype(int metaTypeId) const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_DEFAULTPROTOTYPE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QScriptValue(obj->defaultPrototype(PINT(1)));
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

HB_FUNC_STATIC(QSCRIPTENGINE_EVALUATE)
{
  if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && ISNUMORNIL(3))
  {
    /*
    QScriptValue evaluate(const QString &program, const QString &fileName = QString(), int lineNumber = 1)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->evaluate(PQSTRING(1), OPQSTRING(2, QString()), OPINT(3, 1)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else if (ISNUMPAR(1) && ISQSCRIPTPROGRAM(1))
  {
    /*
    QScriptValue evaluate(const QScriptProgram &program)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->evaluate(*PQSCRIPTPROGRAM(1)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScriptValue globalObject() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_GLOBALOBJECT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QScriptValue(obj->globalObject());
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
bool hasUncaughtException() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_HASUNCAUGHTEXCEPTION)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasUncaughtException());
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
QScriptValue importExtension(const QString &extension)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_IMPORTEXTENSION)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QScriptValue(obj->importExtension(PQSTRING(1)));
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
QStringList importedExtensions() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_IMPORTEDEXTENSIONS)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->importedExtensions());
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
void installTranslatorFunctions(const QScriptValue &object = QScriptValue())
*/
HB_FUNC_STATIC(QSCRIPTENGINE_INSTALLTRANSLATORFUNCTIONS)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQSCRIPTVALUE(1) || HB_ISNIL(1)))
    {
#endif
      obj->installTranslatorFunctions(HB_ISNIL(1) ? QScriptValue()
                                                  : *static_cast<QScriptValue *>(Qt5xHb::itemGetPtr(1)));
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
bool isEvaluating() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_ISEVALUATING)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEvaluating());
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
QScriptValue newArray(uint length = 0)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_NEWARRAY)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
    {
#endif
      auto ptr = new QScriptValue(obj->newArray(OPUINT(1, 0)));
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
QScriptValue newDate(const QDateTime &value)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_NEWDATE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATETIME(1))
    {
#endif
      auto ptr = new QScriptValue(obj->newDate(*PQDATETIME(1)));
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

HB_FUNC_STATIC(QSCRIPTENGINE_NEWOBJECT)
{
  if (ISNUMPAR(0))
  {
    /*
    QScriptValue newObject()
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newObject());
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else if (ISBETWEEN(1, 2) && ISQSCRIPTCLASS(1) && (ISQSCRIPTVALUE(2) || HB_ISNIL(2)))
  {
    /*
    QScriptValue newObject(QScriptClass * scriptClass, const QScriptValue &data = QScriptValue())
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newObject(
          PQSCRIPTCLASS(1), HB_ISNIL(2) ? QScriptValue() : *static_cast<QScriptValue *>(Qt5xHb::itemGetPtr(2))));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScriptValue newQMetaObject(const QMetaObject * metaObject, const QScriptValue &ctor = QScriptValue())
*/
HB_FUNC_STATIC(QSCRIPTENGINE_NEWQMETAOBJECT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQMETAOBJECT(1) && (ISQSCRIPTVALUE(2) || HB_ISNIL(2)))
    {
#endif
      auto ptr = new QScriptValue(obj->newQMetaObject(
          PQMETAOBJECT(1), HB_ISNIL(2) ? QScriptValue() : *static_cast<QScriptValue *>(Qt5xHb::itemGetPtr(2))));
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

HB_FUNC_STATIC(QSCRIPTENGINE_NEWREGEXP)
{
  if (ISNUMPAR(1) && ISQREGEXP(1))
  {
    /*
    QScriptValue newRegExp(const QRegExp &regexp)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newRegExp(*PQREGEXP(1)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    QScriptValue newRegExp(const QString &pattern, const QString &flags)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newRegExp(PQSTRING(1), PQSTRING(2)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSCRIPTENGINE_NEWVARIANT)
{
  if (ISNUMPAR(1) && ISQVARIANT(1))
  {
    /*
    QScriptValue newVariant(const QVariant &value)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newVariant(*PQVARIANT(1)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else if (ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2))
  {
    /*
    QScriptValue newVariant(const QScriptValue &object, const QVariant &value)
    */
    auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      auto ptr = new QScriptValue(obj->newVariant(*PQSCRIPTVALUE(1), *PQVARIANT(2)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScriptValue nullValue()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_NULLVALUE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QScriptValue(obj->nullValue());
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
void popContext()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_POPCONTEXT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->popContext();
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
int processEventsInterval() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_PROCESSEVENTSINTERVAL)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->processEventsInterval());
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
QScriptContext * pushContext()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_PUSHCONTEXT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->pushContext();
      Qt5xHb::createReturnClass(ptr, "QSCRIPTCONTEXT", false);
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
void reportAdditionalMemoryCost(int size)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_REPORTADDITIONALMEMORYCOST)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->reportAdditionalMemoryCost(PINT(1));
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
void setAgent(QScriptEngineAgent * agent)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_SETAGENT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCRIPTENGINEAGENT(1))
    {
#endif
      obj->setAgent(PQSCRIPTENGINEAGENT(1));
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
void setDefaultPrototype(int metaTypeId, const QScriptValue &prototype)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_SETDEFAULTPROTOTYPE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSCRIPTVALUE(2))
    {
#endif
      obj->setDefaultPrototype(PINT(1), *PQSCRIPTVALUE(2));
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
void setGlobalObject(const QScriptValue &object)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_SETGLOBALOBJECT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCRIPTVALUE(1))
    {
#endif
      obj->setGlobalObject(*PQSCRIPTVALUE(1));
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
void setProcessEventsInterval(int interval)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_SETPROCESSEVENTSINTERVAL)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setProcessEventsInterval(PINT(1));
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
QScriptValue toObject(const QScriptValue &value)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_TOOBJECT)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCRIPTVALUE(1))
    {
#endif
      auto ptr = new QScriptValue(obj->toObject(*PQSCRIPTVALUE(1)));
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
QScriptString toStringHandle(const QString &str)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_TOSTRINGHANDLE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QScriptString(obj->toStringHandle(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QSCRIPTSTRING", true);
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
QScriptValue uncaughtException() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_UNCAUGHTEXCEPTION)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QScriptValue(obj->uncaughtException());
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
QStringList uncaughtExceptionBacktrace() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_UNCAUGHTEXCEPTIONBACKTRACE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->uncaughtExceptionBacktrace());
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
int uncaughtExceptionLineNumber() const
*/
HB_FUNC_STATIC(QSCRIPTENGINE_UNCAUGHTEXCEPTIONLINENUMBER)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->uncaughtExceptionLineNumber());
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
QScriptValue undefinedValue()
*/
HB_FUNC_STATIC(QSCRIPTENGINE_UNDEFINEDVALUE)
{
  auto obj = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QScriptValue(obj->undefinedValue());
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
static QScriptSyntaxCheckResult checkSyntax(const QString &program)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_CHECKSYNTAX)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    auto ptr = new QScriptSyntaxCheckResult(QScriptEngine::checkSyntax(PQSTRING(1)));
    Qt5xHb::createReturnClass(ptr, "QSCRIPTSYNTAXCHECKRESULT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
void signalHandlerException(const QScriptValue &exception)
*/
HB_FUNC_STATIC(QSCRIPTENGINE_ONSIGNALHANDLEREXCEPTION)
{
  auto sender = qobject_cast<QScriptEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("signalHandlerException(QScriptValue)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QScriptEngine::signalHandlerException, [sender, indexOfCodeBlock](const QScriptValue &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCRIPTENGINE");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QSCRIPTVALUE");
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (ISNUMPAR(0))
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
