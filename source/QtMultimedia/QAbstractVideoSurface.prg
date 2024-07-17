//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete
   METHOD nativeResolution
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD surfaceFormat

   METHOD onActiveChanged
   METHOD onSurfaceFormatChanged
   METHOD onSupportedFormatsChanged
   METHOD onNativeResolutionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractVideoSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAbstractVideoSurface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAbstractVideoSurface>
#endif

#include <QtMultimedia/QVideoSurfaceFormat>

    /*
    QAbstractVideoSurface(QObject * parent = nullptr)
    */

    /*
    ~QAbstractVideoSurface()
    */
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_DELETE)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QSize nativeResolution() const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_NATIVERESOLUTION)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSize(obj->nativeResolution());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
QAbstractVideoSurface::Error error() const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ERROR)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
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
bool isActive() const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ISACTIVE)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isActive());
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
virtual bool isFormatSupported(const QVideoSurfaceFormat & format) const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1))
    {
#endif
      RBOOL(obj->isFormatSupported(*PQVIDEOSURFACEFORMAT(1)));
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
virtual QVideoSurfaceFormat nearestFormat(const QVideoSurfaceFormat & format) const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_NEARESTFORMAT)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1))
    {
#endif
      auto ptr = new QVideoSurfaceFormat(obj->nearestFormat(*PQVIDEOSURFACEFORMAT(1)));
      Qt5xHb::createReturnClass(ptr, "QVIDEOSURFACEFORMAT", true);
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
virtual bool present(const QVideoFrame & frame) = 0
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_PRESENT)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIDEOFRAME(1))
    {
#endif
      RBOOL(obj->present(*PQVIDEOFRAME(1)));
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
virtual bool start(const QVideoSurfaceFormat & format)
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_START)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1))
    {
#endif
      RBOOL(obj->start(*PQVIDEOSURFACEFORMAT(1)));
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
virtual void stop()
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_STOP)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
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
QVideoSurfaceFormat surfaceFormat() const
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_SURFACEFORMAT)
{
  auto obj = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QVideoSurfaceFormat(obj->surfaceFormat());
      Qt5xHb::createReturnClass(ptr, "QVIDEOSURFACEFORMAT", true);
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
virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats(QAbstractVideoBuffer::HandleType handleType =
QAbstractVideoBuffer::NoHandle) const = 0
*/

/*
void activeChanged(bool active)
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ONACTIVECHANGED)
{
  auto sender = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("activeChanged(bool)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstractVideoSurface::activeChanged, [sender, indexOfCodeBlock](bool arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTVIDEOSURFACE");
                auto pArg1 = hb_itemPutL(nullptr, arg1);
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
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

/*
void surfaceFormatChanged(const QVideoSurfaceFormat & format)
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ONSURFACEFORMATCHANGED)
{
  auto sender = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("surfaceFormatChanged(QVideoSurfaceFormat)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstractVideoSurface::surfaceFormatChanged,
                             [sender, indexOfCodeBlock](const QVideoSurfaceFormat &arg1) {
                               auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

                               if (cb != nullptr)
                               {
                                 auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTVIDEOSURFACE");
                                 auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QVIDEOSURFACEFORMAT");
                                 hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                                 hb_itemRelease(pSender);
                                 hb_itemRelease(pArg1);
                               }
                             });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
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

/*
void supportedFormatsChanged()
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ONSUPPORTEDFORMATSCHANGED)
{
  auto sender = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("supportedFormatsChanged()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection =
            QObject::connect(sender, &QAbstractVideoSurface::supportedFormatsChanged, [sender, indexOfCodeBlock]() {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTVIDEOSURFACE");
                hb_vmEvalBlockV(cb, 1, pSender);
                hb_itemRelease(pSender);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
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

/*
void nativeResolutionChanged(const QSize &)
*/
HB_FUNC_STATIC(QABSTRACTVIDEOSURFACE_ONNATIVERESOLUTIONCHANGED)
{
  auto sender = qobject_cast<QAbstractVideoSurface *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("nativeResolutionChanged(QSize)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QAbstractVideoSurface::nativeResolutionChanged, [sender, indexOfCodeBlock](const QSize &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QABSTRACTVIDEOSURFACE");
                auto pArg1 = Qt5xHb::Signals_return_object((void *)&arg1, "QSIZE");
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
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
