//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

CLASS HAbstractListModel INHERIT QAbstractListModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB

   METHOD setCB
   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB
   METHOD setCheckStateRoleCB
   METHOD setAccessibleTextRoleCB
   METHOD setAccessibleDescriptionRoleCB

   METHOD setHorizontalHeaderCB
   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderToolTipRoleCB
   METHOD setHorizontalHeaderSizeHintRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderCB
   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderToolTipRoleCB
   METHOD setVerticalHeaderSizeHintRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFListModel INHERIT HAbstractListModel
END CLASS

CLASS HArrayListModel INHERIT HAbstractListModel
END CLASS

// clang-format on

#pragma BEGINDUMP

#include "HAbstractListModel.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

    /*
    HAbstractListModel(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(HABSTRACTLISTMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HAbstractListModel(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~HAbstractListModel()
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_DELETE)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
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
  linhas
*/

/*
void setRowCountCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETROWCOUNTCB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setRowCountCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
  células
*/

/*
void setCB(int role, PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETCB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && (HB_ISBLOCK(2) || HB_ISSYMBOL(2))) {
#endif
      obj->setCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDisplayRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDISPLAYROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDecorationRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDECORATIONROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setEditRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETEDITROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setEditRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setToolTipRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTOOLTIPROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setStatusTipRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSTATUSTIPROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setStatusTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setWhatsThisRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETWHATSTHISROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setWhatsThisRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSizeHintRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSIZEHINTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setFontRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFONTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTextAlignmentRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTEXTALIGNMENTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setBackgroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETBACKGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setForegroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFOREGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCheckStateRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETCHECKSTATEROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setCheckStateRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAcccessibleTextRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETACCESSIBLETEXTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleTextRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAcccessibleDescriptionRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETACCESSIBLEDESCRIPTIONROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleDescriptionRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
  cabeçalho horizontal
*/

/*
void setHorizontalHeaderCB(int role, PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERCB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && (HB_ISBLOCK(2) || HB_ISSYMBOL(2))) {
#endif
      obj->setHorizontalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDISPLAYROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDECORATIONROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderToolTipRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERTOOLTIPROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderSizeHintRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERSIZEHINTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderFontRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFONTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
  cabeçalho vertical
*/

/*
void setverticalHeaderCB(int role, PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERCB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && (HB_ISBLOCK(2) || HB_ISSYMBOL(2))) {
#endif
      obj->setVerticalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDISPLAYROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDECORATIONROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderToolTipRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERTOOLTIPROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderSizeHintRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERSIZEHINTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderFontRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFONTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERBACKGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFOREGROUNDROLECB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setFlagsCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFLAGSCB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFlagsCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSetDataCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSETDATACB)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSetDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/

/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/

/*
void reloadData()
*/
HB_FUNC_STATIC(HABSTRACTLISTMODEL_RELOADDATA)
{
  auto obj = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0)) {
#endif
      obj->reloadData();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
