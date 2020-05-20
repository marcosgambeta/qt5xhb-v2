/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTimeEdit INHERIT QDateTimeEdit

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QTimeEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QTimeEdit>
#endif

/*
QTimeEdit ( QWidget * parent = nullptr )
*/
void QTimeEdit_new1()
{
  auto obj = new QTimeEdit( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QTimeEdit ( const QTime & time, QWidget * parent = nullptr )
*/
void QTimeEdit_new2()
{
  auto obj = new QTimeEdit( *PQTIME(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QTimeEdit ( QWidget * parent = nullptr )
[2]QTimeEdit ( const QTime & time, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QTimeEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMEEDIT_DELETE )
{
  auto obj = (QTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
