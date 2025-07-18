//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTERDATAPROXY
#endif

CLASS QScatter3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete
   METHOD dataProxy
   METHOD setDataProxy
   METHOD selectedItem
   METHOD setSelectedItem
   METHOD itemSize
   METHOD setItemSize
   METHOD invalidSelectionIndex

   METHOD onDataProxyChanged
   METHOD onItemSizeChanged
   METHOD onSelectedItemChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScatter3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QScatter3DSeries>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtDataVisualization/QScatter3DSeries>
#endif
#endif

    using namespace QtDataVisualization;

HB_FUNC_STATIC(QSCATTER3DSERIES_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QScatter3DSeries(QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = new QScatter3DSeries(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(1, 2) && ISQSCATTERDATAPROXY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QScatter3DSeries(QScatterDataProxy * dataProxy, QObject * parent = nullptr)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
    auto obj = new QScatter3DSeries(PQSCATTERDATAPROXY(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QScatter3DSeries()
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QScatterDataProxy * dataProxy() const
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_DATAPROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->dataProxy();
      Qt5xHb::createReturnQObjectClass(ptr, "QSCATTERDATAPROXY");
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
void setDataProxy(QScatterDataProxy * proxy)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_SETDATAPROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCATTERDATAPROXY(1))
    {
#endif
      obj->setDataProxy(PQSCATTERDATAPROXY(1));
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
int selectedItem() const
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_SELECTEDITEM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->selectedItem());
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
void setSelectedItem(int index)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_SETSELECTEDITEM)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSelectedItem(PINT(1));
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
float itemSize() const
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_ITEMSIZE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RFLOAT(obj->itemSize());
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
void setItemSize(float size)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_SETITEMSIZE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto obj = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setItemSize(PFLOAT(1));
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
static int invalidSelectionIndex()
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_INVALIDSELECTIONINDEX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QScatter3DSeries::invalidSelectionIndex());
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
void dataProxyChanged(QScatterDataProxy * proxy)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_ONDATAPROXYCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("dataProxyChanged(QScatterDataProxy*)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QScatter3DSeries::dataProxyChanged, [sender, indexOfCodeBlock](QScatterDataProxy *arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCATTER3DSERIES");
                auto pArg1 = Qt5xHb::Signals_return_qobject(arg1, "QSCATTERDATAPROXY");
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
void itemSizeChanged(float size)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_ONITEMSIZECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("itemSizeChanged(float)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QScatter3DSeries::itemSizeChanged, [sender, indexOfCodeBlock](float arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCATTER3DSERIES");
                auto pArg1 = hb_itemPutND(nullptr, arg1);
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
void selectedItemChanged(int index)
*/
HB_FUNC_STATIC(QSCATTER3DSERIES_ONSELECTEDITEMCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  auto sender = qobject_cast<QScatter3DSeries *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("selectedItemChanged(int)");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QScatter3DSeries::selectedItemChanged, [sender, indexOfCodeBlock](int arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSCATTER3DSERIES");
                auto pArg1 = hb_itemPutNI(nullptr, arg1);
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
