//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVARIANT
#endif

CLASS QBBSystemLocaleData INHERIT QObject

   METHOD new
   METHOD delete
   METHOD measurementSystem
   METHOD timeFormat
   METHOD dateTimeFormat
   METHOD languageLocale
   METHOD regionLocale
   METHOD installSocketNotifiers
   METHOD readLanguageLocale
   METHOD readRegionLocale
   METHOD readMeasurementSystem
   METHOD readHourFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBBSystemLocaleData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QBBSystemLocaleData>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QBBSystemLocaleData>
#endif

    /*
    QBBSystemLocaleData()
    */
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_NEW)
{
  if (ISNUMPAR(0))
  {
    auto obj = new QBBSystemLocaleData();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_DELETE)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

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
uint measurementSystem()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_MEASUREMENTSYSTEM)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RUINT(obj->measurementSystem());
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
QVariant timeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_TIMEFORMAT)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->timeFormat(static_cast<QLocale::FormatType>(hb_parni(1))));
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
QVariant dateTimeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_DATETIMEFORMAT)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QVariant(obj->dateTimeFormat(static_cast<QLocale::FormatType>(hb_parni(1))));
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
QLocale languageLocale()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_LANGUAGELOCALE)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QLocale(obj->languageLocale());
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
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
QLocale regionLocale()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_REGIONLOCALE)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QLocale(obj->regionLocale());
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
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
void installSocketNotifiers()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_INSTALLSOCKETNOTIFIERS)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->installSocketNotifiers();
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
void readLanguageLocale()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_READLANGUAGELOCALE)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->readLanguageLocale();
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
void readRegionLocale()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_READREGIONLOCALE)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->readRegionLocale();
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
void readMeasurementSystem()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_READMEASUREMENTSYSTEM)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->readMeasurementSystem();
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
void readHourFormat()
*/
HB_FUNC_STATIC(QBBSYSTEMLOCALEDATA_READHOURFORMAT)
{
  auto obj = static_cast<QBBSystemLocaleData *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->readHourFormat();
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

#pragma ENDDUMP
