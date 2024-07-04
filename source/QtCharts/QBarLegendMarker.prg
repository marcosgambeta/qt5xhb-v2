//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBARSERIES
REQUEST QBARSET
#endif

CLASS QBarLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete
   METHOD type
   METHOD series
   METHOD barset

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBarLegendMarker>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QBarLegendMarker>
#endif
#endif

    using namespace QtCharts;

/*
QBarLegendMarker(QAbstractBarSeries * series, QBarSet * barset, QLegend * legend, QObject * parent = nullptr)
*/
HB_FUNC_STATIC(QBARLEGENDMARKER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(3, 4) && ISQABSTRACTBARSERIES(1) && ISQBARSET(2) && ISQLEGEND(3) && (ISQOBJECT(4) || HB_ISNIL(4)))
  {
    auto obj = new QBarLegendMarker(PQABSTRACTBARSERIES(1), PQBARSET(2), PQLEGEND(3), OPQOBJECT(4, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
virtual ~QBarLegendMarker()
*/
HB_FUNC_STATIC(QBARLEGENDMARKER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBarLegendMarker *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
#endif
}

/*
virtual QLegendMarker::LegendMarkerType type()
*/
HB_FUNC_STATIC(QBARLEGENDMARKER_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBarLegendMarker *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
virtual QAbstractBarSeries * series()
*/
HB_FUNC_STATIC(QBARLEGENDMARKER_SERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBarLegendMarker *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTBARSERIES");
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
QBarSet * barset()
*/
HB_FUNC_STATIC(QBARLEGENDMARKER_BARSET)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QBarLegendMarker *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->barset();
      Qt5xHb::createReturnQObjectClass(ptr, "QBARSET");
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

#pragma ENDDUMP
