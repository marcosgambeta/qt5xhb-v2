/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QResizeEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QResizeEvent>
#endif

/*
QResizeEvent( const QSize & size, const QSize & oldSize )
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
  if( ISNUMPAR(2) && ISQSIZE(1) && ISQSIZE(2) )
  {
    auto obj = new QResizeEvent( *PQSIZE(1), *PQSIZE(2) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QRESIZEEVENT_DELETE )
{
  auto obj = static_cast<QResizeEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
const QSize & size() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_SIZE )
{
  auto obj = static_cast<QResizeEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = &obj->size();
      Qt5xHb::createReturnClass(ptr, "QSIZE", false);
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
const QSize & oldSize() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_OLDSIZE )
{
  auto obj = static_cast<QResizeEvent*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = &obj->oldSize();
      Qt5xHb::createReturnClass(ptr, "QSIZE", false);
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
