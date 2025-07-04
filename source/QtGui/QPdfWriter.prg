//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGELAYOUT
#endif

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution
   METHOD pageLayout
   METHOD setPageLayout
   METHOD pdfVersion
   METHOD setPageMargins
   METHOD setPageOrientation
   METHOD setPdfVersion

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPdfWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

HB_FUNC_STATIC(QPDFWRITER_NEW)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QPdfWriter(const QString &filename)
    */
    auto obj = new QPdfWriter(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    QPdfWriter(QIODevice * device)
    */
    auto obj = new QPdfWriter(PQIODEVICE(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPDFWRITER_DELETE)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
QString title() const
*/
HB_FUNC_STATIC(QPDFWRITER_TITLE)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
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
void setTitle(const QString &title)
*/
HB_FUNC_STATIC(QPDFWRITER_SETTITLE)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTitle(PQSTRING(1));
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
QString creator() const
*/
HB_FUNC_STATIC(QPDFWRITER_CREATOR)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->creator());
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
void setCreator(const QString &creator)
*/
HB_FUNC_STATIC(QPDFWRITER_SETCREATOR)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCreator(PQSTRING(1));
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
bool newPage()
*/
HB_FUNC_STATIC(QPDFWRITER_NEWPAGE)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->newPage());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPDFWRITER_SETPAGESIZE)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setPageSize(QPagedPaintDevice::PageSize size)
    */
    auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      obj->setPageSize(static_cast<QPagedPaintDevice::PageSize>(hb_parni(1)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQPAGESIZE(1))
  {
    /*
    bool setPageSize(const QPageSize &pageSize)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setPageSize(*PQPAGESIZE(1)));
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPageSizeMM(const QSizeF &size)
*/
HB_FUNC_STATIC(QPDFWRITER_SETPAGESIZEMM)
{
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSIZEF(1))
    {
#endif
      obj->setPageSizeMM(*PQSIZEF(1));
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
int resolution() const
*/
HB_FUNC_STATIC(QPDFWRITER_RESOLUTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->resolution());
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
void setResolution(int resolution)
*/
HB_FUNC_STATIC(QPDFWRITER_SETRESOLUTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setResolution(PINT(1));
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
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC(QPDFWRITER_PAGELAYOUT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QPageLayout(obj->pageLayout());
      Qt5xHb::createReturnClass(ptr, "QPAGELAYOUT", true);
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
bool setPageLayout(const QPageLayout &newPageLayout)
*/
HB_FUNC_STATIC(QPDFWRITER_SETPAGELAYOUT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAGELAYOUT(1))
    {
#endif
      RBOOL(obj->setPageLayout(*PQPAGELAYOUT(1)));
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
QPagedPaintDevice::PdfVersion pdfVersion() const
*/
HB_FUNC_STATIC(QPDFWRITER_PDFVERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->pdfVersion());
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

HB_FUNC_STATIC(QPDFWRITER_SETPAGEMARGINS)
{
  if (ISNUMPAR(1) && ISQMARGINSF(1))
  {
    /*
    bool setPageMargins(const QMarginsF &margins)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setPageMargins(*PQMARGINSF(1)));
    }
#endif
  }
  else if (ISNUMPAR(2) && ISQMARGINSF(1) && HB_ISNUM(2))
  {
    /*
    bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RBOOL(obj->setPageMargins(*PQMARGINSF(1), static_cast<QPageLayout::Unit>(hb_parni(2))));
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool setPageOrientation(QPageLayout::Orientation orientation)
*/
HB_FUNC_STATIC(QPDFWRITER_SETPAGEORIENTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setPageOrientation(static_cast<QPageLayout::Orientation>(hb_parni(1))));
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
void setPdfVersion(QPagedPaintDevice::PdfVersion version)
*/
HB_FUNC_STATIC(QPDFWRITER_SETPDFVERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  auto obj = qobject_cast<QPdfWriter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPdfVersion(static_cast<QPagedPaintDevice::PdfVersion>(hb_parni(1)));
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
virtual void setMargins(const Margins &m) override (obsolete)
*/

#pragma ENDDUMP
