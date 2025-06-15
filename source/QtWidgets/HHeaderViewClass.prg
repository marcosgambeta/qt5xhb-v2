//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTER
REQUEST QRECT
#endif

CLASS HHeaderView INHERIT QHeaderView

   METHOD new
   METHOD delete

   METHOD setPaintSectionCB

   DESTRUCTOR destroyObject

END CLASS

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

    /*
    HHeaderView(Qt::Orientation orientation, QWidget *parent = nullptr)
    */
HB_FUNC_STATIC(HHEADERVIEW_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    auto obj = new HHeaderView((Qt::Orientation)hb_parni(1), OPQWIDGET(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(HHEADERVIEW_DELETE)
{
  auto obj = (HHeaderView *)Qt5xHb::itemGetPtrStackSelfItem();

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
void paintSection(QPainter *painter, const QRect &rect, int logicalIndex) const
*/

/*
void setPaintSectionCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HHEADERVIEW_SETPAINTSECTIONCB)
{
  auto obj = (HHeaderView *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setPaintSectionCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
