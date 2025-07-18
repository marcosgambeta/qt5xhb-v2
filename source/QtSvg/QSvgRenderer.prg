//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMATRIX
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QSvgRenderer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSvg/QSvgRenderer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtSvg/QSvgRenderer>
#endif

HB_FUNC_STATIC(QSVGRENDERER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QSvgRenderer(QObject * parent = nullptr)
    */
    auto obj = new QSvgRenderer(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QSvgRenderer(const QString &filename, QObject * parent = nullptr)
    */
    auto obj = new QSvgRenderer(PQSTRING(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QSvgRenderer(const QByteArray &contents, QObject * parent = nullptr)
    */
    auto obj = new QSvgRenderer(*PQBYTEARRAY(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQXMLSTREAMREADER(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QSvgRenderer(QXmlStreamReader * contents, QObject * parent = nullptr)
    */
    auto obj = new QSvgRenderer(PQXMLSTREAMREADER(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSVGRENDERER_DELETE)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
bool animated() const
*/
HB_FUNC_STATIC(QSVGRENDERER_ANIMATED)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->animated());
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
QRectF boundsOnElement(const QString &id) const
*/
HB_FUNC_STATIC(QSVGRENDERER_BOUNDSONELEMENT)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QRectF(obj->boundsOnElement(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
QSize defaultSize() const
*/
HB_FUNC_STATIC(QSVGRENDERER_DEFAULTSIZE)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QSize(obj->defaultSize());
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
bool elementExists(const QString &id) const
*/
HB_FUNC_STATIC(QSVGRENDERER_ELEMENTEXISTS)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->elementExists(PQSTRING(1)));
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
int framesPerSecond() const
*/
HB_FUNC_STATIC(QSVGRENDERER_FRAMESPERSECOND)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->framesPerSecond());
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
bool isValid() const
*/
HB_FUNC_STATIC(QSVGRENDERER_ISVALID)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QMatrix matrixForElement(const QString &id) const
*/
HB_FUNC_STATIC(QSVGRENDERER_MATRIXFORELEMENT)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = new QMatrix(obj->matrixForElement(PQSTRING(1)));
      Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
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
void setFramesPerSecond(int num)
*/
HB_FUNC_STATIC(QSVGRENDERER_SETFRAMESPERSECOND)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFramesPerSecond(PINT(1));
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

HB_FUNC_STATIC(QSVGRENDERER_SETVIEWBOX)
{
  if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    void setViewBox(const QRect &viewbox)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->setViewBox(*PQRECT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    void setViewBox(const QRectF &viewbox)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->setViewBox(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect viewBox() const
*/
HB_FUNC_STATIC(QSVGRENDERER_VIEWBOX)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QRect(obj->viewBox());
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QRectF viewBoxF() const
*/
HB_FUNC_STATIC(QSVGRENDERER_VIEWBOXF)
{
  auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QRectF(obj->viewBoxF());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSVGRENDERER_LOAD)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    bool load(const QString &filename)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->load(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    bool load(const QByteArray &contents)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->load(*PQBYTEARRAY(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMREADER(1))
  {
    /*
    bool load(QXmlStreamReader * contents)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->load(PQXMLSTREAMREADER(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSVGRENDERER_RENDER)
{
  if (ISNUMPAR(1) && ISQPAINTER(1))
  {
    /*
    void render(QPainter * painter)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->render(PQPAINTER(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2))
  {
    /*
    void render(QPainter * painter, const QRectF &bounds)
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->render(PQPAINTER(1), *PQRECTF(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(2, 3) && ISQPAINTER(1) && HB_ISCHAR(2) && (ISQRECTF(3) || HB_ISNIL(3)))
  {
    /*
    void render(QPainter * painter, const QString &elementId, const QRectF &bounds = QRectF())
    */
    auto obj = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->render(PQPAINTER(1), PQSTRING(2), HB_ISNIL(3) ? QRectF() : *static_cast<QRectF *>(Qt5xHb::itemGetPtr(3)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void repaintNeeded()
*/
HB_FUNC_STATIC(QSVGRENDERER_ONREPAINTNEEDED)
{
  auto sender = qobject_cast<QSvgRenderer *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("repaintNeeded()");
    auto indexOfCodeBlock = -1;

    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QSvgRenderer::repaintNeeded, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QSVGRENDERER");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
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
