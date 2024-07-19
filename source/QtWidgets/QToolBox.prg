//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QWIDGET
#endif

CLASS QToolBox INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QToolBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QToolBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QToolBox>
#endif

    /*
    QToolBox(QWidget * parent = nullptr, Qt::WindowFlags f = 0)
    */
HB_FUNC_STATIC(QTOOLBOX_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQWIDGET(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    auto obj = new QToolBox(OPQWIDGET(1, nullptr),
                            HB_ISNIL(2) ? static_cast<Qt::WindowFlags>(0) : static_cast<Qt::WindowFlags>(hb_parni(2)));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTOOLBOX_DELETE)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QTOOLBOX_ADDITEM)
{
  if (ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2) || HB_ISCHAR(2)) && HB_ISCHAR(3))
  {
    /*
    int addItem(QWidget * widget, const QIcon &iconSet, const QString &text)
    */
    auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RINT(obj->addItem(PQWIDGET(1), HB_ISOBJECT(2) ? *static_cast<QIcon *>(Qt5xHb::itemGetPtr(2)) : QIcon(hb_parc(2)),
                        PQSTRING(3)));
    }
  }
  else if (ISNUMPAR(2) && ISQWIDGET(1) && HB_ISCHAR(2))
  {
    /*
    int addItem(QWidget * w, const QString &text)
    */
    auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RINT(obj->addItem(PQWIDGET(1), PQSTRING(2)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int count() const
*/
HB_FUNC_STATIC(QTOOLBOX_COUNT)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
int currentIndex() const
*/
HB_FUNC_STATIC(QTOOLBOX_CURRENTINDEX)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->currentIndex());
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
QWidget * currentWidget() const
*/
HB_FUNC_STATIC(QTOOLBOX_CURRENTWIDGET)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->currentWidget();
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
int indexOf(QWidget * widget) const
*/
HB_FUNC_STATIC(QTOOLBOX_INDEXOF)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      RINT(obj->indexOf(PQWIDGET(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTOOLBOX_INSERTITEM)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && ISQWIDGET(2) && (ISQICON(3) || HB_ISCHAR(3)) && HB_ISCHAR(4))
  {
    /*
    int insertItem(int index, QWidget * widget, const QIcon &icon, const QString &text)
    */
    auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RINT(obj->insertItem(PINT(1), PQWIDGET(2),
                           HB_ISOBJECT(3) ? *static_cast<QIcon *>(Qt5xHb::itemGetPtr(3)) : QIcon(hb_parc(3)),
                           PQSTRING(4)));
    }
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && ISQWIDGET(2) && HB_ISCHAR(3))
  {
    /*
    int insertItem(int index, QWidget * widget, const QString &text)
    */
    auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

    if (obj != nullptr)
    {
      RINT(obj->insertItem(PINT(1), PQWIDGET(2), PQSTRING(3)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isItemEnabled(int index) const
*/
HB_FUNC_STATIC(QTOOLBOX_ISITEMENABLED)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isItemEnabled(PINT(1)));
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
QIcon itemIcon(int index) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMICON)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = new QIcon(obj->itemIcon(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
QString itemText(int index) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMTEXT)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->itemText(PINT(1)));
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
QString itemToolTip(int index) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMTOOLTIP)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->itemToolTip(PINT(1)));
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
void removeItem(int index)
*/
HB_FUNC_STATIC(QTOOLBOX_REMOVEITEM)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->removeItem(PINT(1));
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
void setItemEnabled(int index, bool enabled)
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMENABLED)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      obj->setItemEnabled(PINT(1), PBOOL(2));
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
void setItemIcon(int index, const QIcon &icon)
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMICON)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && (ISQICON(2) || HB_ISCHAR(2)))
    {
#endif
      obj->setItemIcon(PINT(1), HB_ISOBJECT(2) ? *static_cast<QIcon *>(Qt5xHb::itemGetPtr(2)) : QIcon(hb_parc(2)));
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
void setItemText(int index, const QString &text)
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMTEXT)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setItemText(PINT(1), PQSTRING(2));
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
void setItemToolTip(int index, const QString &toolTip)
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMTOOLTIP)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setItemToolTip(PINT(1), PQSTRING(2));
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
QWidget * widget(int index) const
*/
HB_FUNC_STATIC(QTOOLBOX_WIDGET)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      auto ptr = obj->widget(PINT(1));
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
void setCurrentIndex(int index)
*/
HB_FUNC_STATIC(QTOOLBOX_SETCURRENTINDEX)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCurrentIndex(PINT(1));
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
void setCurrentWidget(QWidget * widget)
*/
HB_FUNC_STATIC(QTOOLBOX_SETCURRENTWIDGET)
{
  auto obj = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->setCurrentWidget(PQWIDGET(1));
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
void currentChanged(int index)
*/
HB_FUNC_STATIC(QTOOLBOX_ONCURRENTCHANGED)
{
  auto sender = qobject_cast<QToolBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("currentChanged(int)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1 && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QToolBox::currentChanged, [sender, indexOfCodeBlock](int arg1) {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QTOOLBOX");
            auto pArg1 = hb_itemPutNI(nullptr, arg1);
            hb_vmEvalBlockV(cb, 2, pSender, pArg1);
            hb_itemRelease(pSender);
            hb_itemRelease(pArg1);
          }
        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
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
