//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPainter
REQUEST QRect
#endif

CLASS HHeaderView INHERIT QHeaderView

   METHOD new
   METHOD delete

   METHOD setPaintSectionCB

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HHeaderView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HHeaderView.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) auto p = (HHeaderView *)Qt5xHb::itemGetPtrStackSelfItem()

    // HHeaderView(Qt::Orientation orientation, QWidget *parent = nullptr)
HB_FUNC_STATIC(HHEADERVIEW_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && ISQWIDGETORNIL(2)) {
    auto obj = new HHeaderView((Qt::Orientation)hb_parni(1), OPQWIDGET(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    THROW_ERROR_3012();
  }
}

HB_FUNC_STATIC(HHEADERVIEW_DELETE)
{
  GET_PTR_FROM_SELF(obj);
  DELETE_QOBJECT(obj);
  RETURN_SELF();
}

// void paintSection(QPainter *painter, const QRect &rect, int logicalIndex) const

// void setPaintSectionCB(PHB_ITEM block)
HB_FUNC_STATIC(HHEADERVIEW_SETPAINTSECTIONCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setPaintSectionCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

#pragma ENDDUMP
