//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPalette

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alternateBase
   METHOD base
   METHOD brightText
   METHOD brush
   METHOD button
   METHOD buttonText
   METHOD cacheKey
   METHOD color
   METHOD currentColorGroup
   METHOD dark
   METHOD highlight
   METHOD highlightedText
   METHOD isBrushSet
   METHOD isCopyOf
   METHOD isEqual
   METHOD light
   METHOD link
   METHOD linkVisited
   METHOD mid
   METHOD midlight
   METHOD resolve
   METHOD setBrush
   METHOD setColor
   METHOD setColorGroup
   METHOD setCurrentColorGroup
   METHOD shadow
   METHOD text
   METHOD toolTipBase
   METHOD toolTipText
   METHOD window
   METHOD windowText
   METHOD placeholderText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPalette
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPalette>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPalette>
#endif

HB_FUNC_STATIC(QPALETTE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPalette()
    */
    auto obj = new QPalette();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
  {
    /*
    QPalette(const QColor &button)
    */
    auto obj = new QPalette(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(1)) : QColor(hb_parc(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QPalette(Qt::GlobalColor button)
    */
    auto obj = new QPalette(static_cast<Qt::GlobalColor>(hb_parni(1)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (ISQCOLOR(2) || HB_ISCHAR(2)))
  {
    /*
    QPalette(const QColor &button, const QColor &window)
    */
    auto obj = new QPalette(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(1)) : QColor(hb_parc(1)),
                            HB_ISOBJECT(2) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(2)) : QColor(hb_parc(2)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) &&
           ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9))
  {
    /*
    QPalette(const QBrush &windowText, const QBrush &button, const QBrush &light, const QBrush &dark, const QBrush &
    mid, const QBrush &text, const QBrush &bright_text, const QBrush &base, const QBrush &window)
    */
    auto obj = new QPalette(*PQBRUSH(1), *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4), *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7),
                            *PQBRUSH(8), *PQBRUSH(9));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPALETTE(1))
  {
    /*
    QPalette(const QPalette &p)
    */
    auto obj = new QPalette(*PQPALETTE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPALETTE_DELETE)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

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
const QBrush &alternateBase() const
*/
HB_FUNC_STATIC(QPALETTE_ALTERNATEBASE)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->alternateBase();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &base() const
*/
HB_FUNC_STATIC(QPALETTE_BASE)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->base();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &brightText() const
*/
HB_FUNC_STATIC(QPALETTE_BRIGHTTEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->brightText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPALETTE_BRUSH)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    const QBrush &brush(QPalette::ColorGroup group, QPalette::ColorRole role) const
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr =
          &obj->brush(static_cast<QPalette::ColorGroup>(hb_parni(1)), static_cast<QPalette::ColorRole>(hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    const QBrush &brush(QPalette::ColorRole role) const
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = &obj->brush(static_cast<QPalette::ColorRole>(hb_parni(1)));
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
const QBrush &button() const
*/
HB_FUNC_STATIC(QPALETTE_BUTTON)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->button();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &buttonText() const
*/
HB_FUNC_STATIC(QPALETTE_BUTTONTEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->buttonText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
qint64 cacheKey() const
*/
HB_FUNC_STATIC(QPALETTE_CACHEKEY)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->cacheKey());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPALETTE_COLOR)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    const QColor &color(QPalette::ColorGroup group, QPalette::ColorRole role) const
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr =
          &obj->color(static_cast<QPalette::ColorGroup>(hb_parni(1)), static_cast<QPalette::ColorRole>(hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QCOLOR", false);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    const QColor &color(QPalette::ColorRole role) const
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      auto ptr = &obj->color(static_cast<QPalette::ColorRole>(hb_parni(1)));
      Qt5xHb::createReturnClass(ptr, "QCOLOR", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPalette::ColorGroup currentColorGroup() const
*/
HB_FUNC_STATIC(QPALETTE_CURRENTCOLORGROUP)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->currentColorGroup());
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
const QBrush &dark() const
*/
HB_FUNC_STATIC(QPALETTE_DARK)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->dark();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &highlight() const
*/
HB_FUNC_STATIC(QPALETTE_HIGHLIGHT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->highlight();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &highlightedText() const
*/
HB_FUNC_STATIC(QPALETTE_HIGHLIGHTEDTEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->highlightedText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
bool isBrushSet(QPalette::ColorGroup cg, QPalette::ColorRole cr) const
*/
HB_FUNC_STATIC(QPALETTE_ISBRUSHSET)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->isBrushSet(static_cast<QPalette::ColorGroup>(hb_parni(1)),
                            static_cast<QPalette::ColorRole>(hb_parni(2))));
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
bool isCopyOf(const QPalette &p) const
*/
HB_FUNC_STATIC(QPALETTE_ISCOPYOF)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPALETTE(1))
    {
#endif
      RBOOL(obj->isCopyOf(*PQPALETTE(1)));
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
bool isEqual(QPalette::ColorGroup cg1, QPalette::ColorGroup cg2) const
*/
HB_FUNC_STATIC(QPALETTE_ISEQUAL)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(
          obj->isEqual(static_cast<QPalette::ColorGroup>(hb_parni(1)), static_cast<QPalette::ColorGroup>(hb_parni(2))));
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
const QBrush &light() const
*/
HB_FUNC_STATIC(QPALETTE_LIGHT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->light();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &link() const
*/
HB_FUNC_STATIC(QPALETTE_LINK)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->link();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &linkVisited() const
*/
HB_FUNC_STATIC(QPALETTE_LINKVISITED)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->linkVisited();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &mid() const
*/
HB_FUNC_STATIC(QPALETTE_MID)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->mid();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &midlight() const
*/
HB_FUNC_STATIC(QPALETTE_MIDLIGHT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->midlight();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
QPalette resolve(const QPalette &other) const
*/
HB_FUNC_STATIC(QPALETTE_RESOLVE)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPALETTE(1))
    {
#endif
      auto ptr = new QPalette(obj->resolve(*PQPALETTE(1)));
      Qt5xHb::createReturnClass(ptr, "QPALETTE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPALETTE_SETBRUSH)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQBRUSH(2))
  {
    /*
    void setBrush(QPalette::ColorRole role, const QBrush &brush)
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setBrush(static_cast<QPalette::ColorRole>(hb_parni(1)), *PQBRUSH(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQBRUSH(3))
  {
    /*
    void setBrush(QPalette::ColorGroup group, QPalette::ColorRole role, const QBrush &brush)
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setBrush(static_cast<QPalette::ColorGroup>(hb_parni(1)), static_cast<QPalette::ColorRole>(hb_parni(2)),
                    *PQBRUSH(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPALETTE_SETCOLOR)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQCOLOR(3) || HB_ISCHAR(3)))
  {
    /*
    void setColor(QPalette::ColorGroup group, QPalette::ColorRole role, const QColor &color)
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setColor(static_cast<QPalette::ColorGroup>(hb_parni(1)), static_cast<QPalette::ColorRole>(hb_parni(2)),
                    HB_ISOBJECT(3) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(3)) : QColor(hb_parc(3)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && (ISQCOLOR(2) || HB_ISCHAR(2)))
  {
    /*
    void setColor(QPalette::ColorRole role, const QColor &color)
    */
    auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->setColor(static_cast<QPalette::ColorRole>(hb_parni(1)),
                    HB_ISOBJECT(2) ? *static_cast<QColor *>(Qt5xHb::itemGetPtr(2)) : QColor(hb_parc(2)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setColorGroup(QPalette::ColorGroup cg, const QBrush &windowText, const QBrush &button, const QBrush &light,
const QBrush &dark, const QBrush &mid, const QBrush &text, const QBrush &bright_text, const QBrush &base, const
QBrush &window)
*/
HB_FUNC_STATIC(QPALETTE_SETCOLORGROUP)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(10) && HB_ISNUM(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) &&
        ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) && ISQBRUSH(10))
    {
#endif
      obj->setColorGroup(static_cast<QPalette::ColorGroup>(hb_parni(1)), *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4),
                         *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7), *PQBRUSH(8), *PQBRUSH(9), *PQBRUSH(10));
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
void setCurrentColorGroup(QPalette::ColorGroup cg)
*/
HB_FUNC_STATIC(QPALETTE_SETCURRENTCOLORGROUP)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCurrentColorGroup(static_cast<QPalette::ColorGroup>(hb_parni(1)));
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
const QBrush &shadow() const
*/
HB_FUNC_STATIC(QPALETTE_SHADOW)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->shadow();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &text() const
*/
HB_FUNC_STATIC(QPALETTE_TEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->text();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &toolTipBase() const
*/
HB_FUNC_STATIC(QPALETTE_TOOLTIPBASE)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->toolTipBase();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &toolTipText() const
*/
HB_FUNC_STATIC(QPALETTE_TOOLTIPTEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->toolTipText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &window() const
*/
HB_FUNC_STATIC(QPALETTE_WINDOW)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->window();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &windowText() const
*/
HB_FUNC_STATIC(QPALETTE_WINDOWTEXT)
{
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->windowText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush &placeholderText() const
*/
HB_FUNC_STATIC(QPALETTE_PLACEHOLDERTEXT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 12, 0))
  auto obj = static_cast<QPalette *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = &obj->placeholderText();
      Qt5xHb::createReturnClass(ptr, "QBRUSH", false);
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

HB_FUNC_STATIC(QPALETTE_NEWFROM)
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

HB_FUNC_STATIC(QPALETTE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPALETTE_NEWFROM);
}

HB_FUNC_STATIC(QPALETTE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPALETTE_NEWFROM);
}

HB_FUNC_STATIC(QPALETTE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPALETTE_SETSELFDESTRUCTION)
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
