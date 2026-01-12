//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS HEventFilter INHERIT QObject

   METHOD new
   METHOD delete

   METHOD setEventFilterCB

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HEventFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HEventFilter.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

    /*
    HEventFilter(QObject *parent = nullptr)
    */
HB_FUNC_STATIC(HEVENTFILTER_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HEventFilter(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~HEventFilter()
*/
HB_FUNC_STATIC(HEVENTFILTER_DELETE)
{
  auto obj = qobject_cast<HEventFilter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  DELETE_QOBJECT(obj);

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setEventFilterCB (PHB_ITEM block)
*/
HB_FUNC_STATIC(HEVENTFILTER_SETEVENTFILTERCB)
{
  auto obj = qobject_cast<HEventFilter *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setEventFilterCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
