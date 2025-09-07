//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HAbstractTableModelV2 INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractTableModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HAbstractTableModelV2.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

    /*
    HAbstractTableModelV2(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new HAbstractTableModelV2(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~HAbstractTableModelV2()
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_DELETE)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void setRowCountCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETROWCOUNTCB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
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
void setColumnCountCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETCOLUMNCOUNTCB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setColumnCountCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDataCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETDATACB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setDataCB(PBLOCKORSYMBOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHeaderDataCB(PHB_ITEM block)
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETHEADERDATACB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setHeaderDataCB(PBLOCKORSYMBOL(1));
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
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETFLAGSCB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
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
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_SETSETDATACB)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr) {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
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
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/

/*
QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
*/

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/

/*
void reloadData()
*/
HB_FUNC_STATIC(HABSTRACTTABLEMODELV2_RELOADDATA)
{
  auto obj = qobject_cast<HAbstractTableModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
