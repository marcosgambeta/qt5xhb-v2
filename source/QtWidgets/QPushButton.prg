/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QPushButton INHERIT QAbstractButton

#ifndef QT5XHB_NO_PROPERTIES

   // autoDefault : bool
   ACCESS lAutoDefault INLINE ::autoDefault()
   ASSIGN lAutoDefault(l) INLINE ::setAutoDefault(l)

   // default : bool
   ACCESS lDefault INLINE ::isDefault()
   ASSIGN lDefault(l) INLINE ::setDefault(l)

   // flat : bool
   ACCESS lFlat INLINE ::isFlat()
   ASSIGN lFlat(l) INLINE ::setFlat(l)

#endif

   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD menu
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD setMenu
   METHOD showMenu
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPushButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QPushButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QPushButton>
#endif

#include <QtWidgets/QMenu>

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)) )
  {
    /*
    QPushButton( QWidget * parent = nullptr )
    */
    auto obj = new QPushButton(OPQWIDGET(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)) )
  {
    /*
    QPushButton( const QString & text, QWidget * parent = nullptr )
    */
    auto obj = new QPushButton(PQSTRING(1), OPQWIDGET(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(2, 3) && (ISQICON(1)|| HB_ISCHAR(1)) && HB_ISCHAR(2) && (ISQWIDGET(3) || HB_ISNIL(3)) )
  {
    /*
    QPushButton( const QIcon & icon, const QString & text, QWidget * parent = nullptr )
    */
    auto obj = new QPushButton(HB_ISOBJECT(1) ? *static_cast<QIcon*>(Qt5xHb::itemGetPtr(1)) : QIcon(hb_parc(1)), PQSTRING(2), OPQWIDGET(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else if( ISBETWEEN(2, 3) && ISQPIXMAP(1) && HB_ISCHAR(2) && (ISQWIDGET(3) || HB_ISNIL(3)) )
  {
    /*
    QPushButton( const QPixmap & icon, const QString & text, QWidget * parent = nullptr )
    */
    auto obj = new QPushButton(*PQPIXMAP(1), PQSTRING(2), OPQWIDGET(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPUSHBUTTON_DELETE )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool autoDefault() const
*/
HB_FUNC_STATIC( QPUSHBUTTON_AUTODEFAULT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL(obj->autoDefault());
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
bool isDefault() const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISDEFAULT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL(obj->isDefault());
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
bool isFlat() const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISFLAT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL(obj->isFlat());
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
QMenu * menu () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MENU )
{
#ifndef QT_NO_MENU
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->menu();
      Qt5xHb::createReturnQWidgetClass(ptr, "QMENU");
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
void setAutoDefault( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETAUTODEFAULT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setAutoDefault(PBOOL(1));
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
void setDefault( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETDEFAULT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDefault(PBOOL(1));
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
void setFlat( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETFLAT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFlat(PBOOL(1));
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
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETMENU )
{
#ifndef QT_NO_MENU
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMENU(1) )
    {
#endif
      obj->setMenu(PQMENU(1));
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
void showMenu ()
*/
HB_FUNC_STATIC( QPUSHBUTTON_SHOWMENU )
{
#ifndef QT_NO_MENU
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showMenu();
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
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MINIMUMSIZEHINT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize(obj->minimumSizeHint());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
QSize sizeHint() const
*/
HB_FUNC_STATIC( QPUSHBUTTON_SIZEHINT )
{
  auto obj = qobject_cast<QPushButton*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize(obj->sizeHint());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
