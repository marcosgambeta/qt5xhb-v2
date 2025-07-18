//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTER3DSERIES
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DScatter INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DScatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/Q3DScatter>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/Q3DScatter>
#endif
#endif

    using namespace QtDataVisualization;

/*
Q3DScatter(const QSurfaceFormat * format = nullptr, QWindow * parent = nullptr)
*/
HB_FUNC_STATIC(Q3DSCATTER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(0, 2) && (ISQSURFACEFORMAT(1) || HB_ISNIL(1)) && (ISQWINDOW(2) || HB_ISNIL(2)))
  {
    auto obj = new Q3DScatter(HB_ISNIL(1) ? nullptr : static_cast<QSurfaceFormat *>(Qt5xHb::itemGetPtr(1)),
                              OPQWINDOW(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
virtual ~Q3DScatter()
*/
HB_FUNC_STATIC(Q3DSCATTER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QValue3DAxis * axisX() const
*/
HB_FUNC_STATIC(Q3DSCATTER_AXISX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->axisX();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisX(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_SETAXISX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVALUE3DAXIS(1))
    {
#endif
      obj->setAxisX(PQVALUE3DAXIS(1));
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
QValue3DAxis * axisY() const
*/
HB_FUNC_STATIC(Q3DSCATTER_AXISY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->axisY();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisY(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_SETAXISY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVALUE3DAXIS(1))
    {
#endif
      obj->setAxisY(PQVALUE3DAXIS(1));
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
QValue3DAxis * axisZ() const
*/
HB_FUNC_STATIC(Q3DSCATTER_AXISZ)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->axisZ();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisZ(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_SETAXISZ)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVALUE3DAXIS(1))
    {
#endif
      obj->setAxisZ(PQVALUE3DAXIS(1));
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
QScatter3DSeries * selectedSeries() const
*/
HB_FUNC_STATIC(Q3DSCATTER_SELECTEDSERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->selectedSeries();
      Qt5xHb::createReturnQObjectClass(ptr, "QSCATTER3DSERIES");
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
void addSeries(QScatter3DSeries * series)
*/
HB_FUNC_STATIC(Q3DSCATTER_ADDSERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCATTER3DSERIES(1))
    {
#endif
      obj->addSeries(PQSCATTER3DSERIES(1));
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
void removeSeries(QScatter3DSeries * series)
*/
HB_FUNC_STATIC(Q3DSCATTER_REMOVESERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCATTER3DSERIES(1))
    {
#endif
      obj->removeSeries(PQSCATTER3DSERIES(1));
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
QList<QScatter3DSeries*> seriesList() const
*/
HB_FUNC_STATIC(Q3DSCATTER_SERIESLIST)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->seriesList();
      auto pDynSym = hb_dynsymFindName("QSCATTER3DSERIES");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (auto item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QSCATTER3DSERIES", HB_ERR_ARGS_BASEPARAMS);
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
void addAxis(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_ADDAXIS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVALUE3DAXIS(1))
    {
#endif
      obj->addAxis(PQVALUE3DAXIS(1));
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
void releaseAxis(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_RELEASEAXIS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVALUE3DAXIS(1))
    {
#endif
      obj->releaseAxis(PQVALUE3DAXIS(1));
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
QList<QValue3DAxis*> axes() const
*/
HB_FUNC_STATIC(Q3DSCATTER_AXES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto list = obj->axes();
      auto pDynSym = hb_dynsymFindName("QVALUE3DAXIS");
      auto pArray = hb_itemArrayNew(0);
      if (pDynSym != nullptr)
      {
        for (auto item : list)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          auto pObject = hb_itemNew(nullptr);
          hb_itemCopy(pObject, hb_stackReturnItem());
          auto pItem = hb_itemPutPtr(nullptr, item);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS);
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
void axisXChanged(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_ONAXISXCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("axisXChanged(QValue3DAxis*)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &Q3DScatter::axisXChanged, [sender, indexOfCodeBlock](QValue3DAxis *arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "Q3DSCATTER");
                auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QVALUE3DAXIS");
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
#else
  hb_retl(false);
#endif
}

/*
void axisYChanged(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_ONAXISYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("axisYChanged(QValue3DAxis*)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &Q3DScatter::axisYChanged, [sender, indexOfCodeBlock](QValue3DAxis *arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "Q3DSCATTER");
                auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QVALUE3DAXIS");
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
#else
  hb_retl(false);
#endif
}

/*
void axisZChanged(QValue3DAxis * axis)
*/
HB_FUNC_STATIC(Q3DSCATTER_ONAXISZCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("axisZChanged(QValue3DAxis*)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &Q3DScatter::axisZChanged, [sender, indexOfCodeBlock](QValue3DAxis *arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "Q3DSCATTER");
                auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QVALUE3DAXIS");
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
#else
  hb_retl(false);
#endif
}

/*
void selectedSeriesChanged(QScatter3DSeries * series)
*/
HB_FUNC_STATIC(Q3DSCATTER_ONSELECTEDSERIESCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<Q3DScatter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("selectedSeriesChanged(QScatter3DSeries*)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &Q3DScatter::selectedSeriesChanged,
                                           [sender, indexOfCodeBlock](QScatter3DSeries *arg1) {
                                             auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                                             if (cb != nullptr)
                                             {
                                               auto pSender = Qt5xHb::Signals_return_qobject(sender, "Q3DSCATTER");
                                               auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QSCATTER3DSERIES");
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
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
