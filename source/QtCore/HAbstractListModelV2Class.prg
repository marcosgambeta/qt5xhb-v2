//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HAbstractListModelV2 INHERIT QAbstractListModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HAbstractListModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HAbstractListModelV2.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

    // HAbstractListModelV2(QObject *parent = nullptr)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    auto obj = new HAbstractListModelV2(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    THROW_ERROR_3012();
  }
}

// virtual ~HAbstractListModelV2()
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_DELETE)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  DELETE_QOBJECT(obj);

  RETURN_SELF();
}

// void setRowCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETROWCOUNTCB)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

// void setDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETDATACB)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setHeaderDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETHEADERDATACB)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHeaderDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      THROW_ERROR_3012();
    }
#endif
  }

  RETURN_SELF();
}

// void setFlagsCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETFLAGSCB)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETSETDATACB)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

// int rowCount(const QModelIndex &parent = QModelIndex()) const

// int columnCount(const QModelIndex &parent = QModelIndex()) const

// QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const

// QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const

// Qt::ItemFlags flags(const QModelIndex &index) const

// bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)

// void reloadData()
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_RELOADDATA)
{
  auto obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
