//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
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

ENDCLASS

PROCEDURE destroyObject() CLASS HAbstractListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFListModel INHERIT HAbstractListModel
ENDCLASS

CLASS HArrayListModel INHERIT HAbstractListModel
ENDCLASS

// clang-format on

#pragma BEGINDUMP

#include "HAbstractListModel.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) auto p = qobject_cast<HAbstractListModel *>(Qt5xHb::getQObjectPointerFromSelfItem())

// HAbstractListModel(QObject *parent = nullptr)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HAbstractListModel(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    THROW_ERROR_3012();
  }
}

// virtual ~HAbstractListModel()
HB_FUNC_STATIC(HABSTRACTLISTMODEL_DELETE)
{
  GET_PTR_FROM_SELF(obj);
  DELETE_QOBJECT(obj);
  RETURN_SELF();
}

//   linhas

// void setRowCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETROWCOUNTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setRowCountCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

//   células

// void setCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setEditRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETEDITROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setEditRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setStatusTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSTATUSTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setStatusTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setWhatsThisRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETWHATSTHISROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setWhatsThisRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setCheckStateRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETCHECKSTATEROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setCheckStateRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setAcccessibleTextRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETACCESSIBLETEXTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleTextRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setAcccessibleDescriptionRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETACCESSIBLEDESCRIPTIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleDescriptionRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

//   cabeçalho horizontal

// void setHorizontalHeaderCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setHorizontalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

//   cabeçalho vertical

// void setverticalHeaderCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setVerticalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setFlagsCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFLAGSCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFlagsCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setSetDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSETDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSetDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const

// QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const

// int rowCount(const QModelIndex &parent = QModelIndex()) const

// void reloadData()
HB_FUNC_STATIC(HABSTRACTLISTMODEL_RELOADDATA)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0)) {
#endif
      obj->reloadData();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

#pragma ENDDUMP
