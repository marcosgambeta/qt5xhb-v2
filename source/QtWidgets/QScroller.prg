/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QPOINTF
REQUEST QSCROLLERPROPERTIES
#endif

CLASS QScroller INHERIT QObject

   METHOD finalPosition
   METHOD handleInput
   METHOD pixelPerMeter
   METHOD scrollerProperties
   METHOD setSnapPositionsX
   METHOD setSnapPositionsY
   METHOD state
   METHOD stop
   METHOD target
   METHOD velocity
   METHOD ensureVisible
   METHOD resendPrepareEvent
   METHOD scrollTo
   METHOD setScrollerProperties
   METHOD activeScrollers
   METHOD grabGesture
   METHOD grabbedGesture
   METHOD hasScroller
   METHOD scroller
   METHOD ungrabGesture

   METHOD onScrollerPropertiesChanged
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScroller
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QScroller>
#endif

/*
QPointF finalPosition() const
*/
HB_FUNC_STATIC( QSCROLLER_FINALPOSITION )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->finalPosition () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool handleInput(Input input, const QPointF & position, qint64 timestamp = 0)
*/
HB_FUNC_STATIC( QSCROLLER_HANDLEINPUT )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQPOINTF(2) && ISOPTNUM(3) )
    {
#endif
      RBOOL( obj->handleInput ( (QScroller::Input) hb_parni(1), *PQPOINTF(2), OPQINT64(3,0) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPointF pixelPerMeter() const
*/
HB_FUNC_STATIC( QSCROLLER_PIXELPERMETER )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->pixelPerMeter () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QScrollerProperties scrollerProperties() const
*/
HB_FUNC_STATIC( QSCROLLER_SCROLLERPROPERTIES )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QScrollerProperties( obj->scrollerProperties () );
      _qt5xhb_createReturnClass ( ptr, "QSCROLLERPROPERTIES", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSnapPositionsX(const QList<qreal> & positions)
*/
void QScroller_setSnapPositionsX1 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       QList<qreal> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
qreal temp1;
for (i1=0;i1<nLen1;i1++)
{
  temp1 = hb_arrayGetND(aList1, i1+1);
  par1 << temp1;
}
      obj->setSnapPositionsX ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSnapPositionsX(qreal first, qreal interval)
*/
void QScroller_setSnapPositionsX2 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setSnapPositionsX ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSnapPositionsX(const QList<qreal> & positions)
//[2]void setSnapPositionsX(qreal first, qreal interval)

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSX )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QScroller_setSnapPositionsX1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QScroller_setSnapPositionsX2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSnapPositionsY(const QList<qreal> & positions)
*/
void QScroller_setSnapPositionsY1 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       QList<qreal> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
qreal temp1;
for (i1=0;i1<nLen1;i1++)
{
  temp1 = hb_arrayGetND(aList1, i1+1);
  par1 << temp1;
}
      obj->setSnapPositionsY ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSnapPositionsY(qreal first, qreal interval)
*/
void QScroller_setSnapPositionsY2 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->setSnapPositionsY ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSnapPositionsY(const QList<qreal> & positions)
//[2]void setSnapPositionsY(qreal first, qreal interval)

HB_FUNC_STATIC( QSCROLLER_SETSNAPPOSITIONSY )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QScroller_setSnapPositionsY1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QScroller_setSnapPositionsY2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
State state() const
*/
HB_FUNC_STATIC( QSCROLLER_STATE )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void stop()
*/
HB_FUNC_STATIC( QSCROLLER_STOP )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject * target() const
*/
HB_FUNC_STATIC( QSCROLLER_TARGET )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->target ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPointF velocity() const
*/
HB_FUNC_STATIC( QSCROLLER_VELOCITY )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPointF( obj->velocity () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
*/
void QScroller_ensureVisible1 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->ensureVisible ( *PQRECTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)
*/
void QScroller_ensureVisible2 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->ensureVisible ( *PQRECTF(1), PQREAL(2), PQREAL(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin)
//[2]void ensureVisible(const QRectF & rect, qreal xmargin, qreal ymargin, int scrollTime)

HB_FUNC_STATIC( QSCROLLER_ENSUREVISIBLE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QScroller_ensureVisible1();
  }
  else if( ISNUMPAR(4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QScroller_ensureVisible2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resendPrepareEvent()
*/
HB_FUNC_STATIC( QSCROLLER_RESENDPREPAREEVENT )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resendPrepareEvent ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollTo(const QPointF & pos)
*/
void QScroller_scrollTo1 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->scrollTo ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollTo(const QPointF & pos, int scrollTime)
*/
void QScroller_scrollTo2 ()
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->scrollTo ( *PQPOINTF(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scrollTo(const QPointF & pos)
//[2]void scrollTo(const QPointF & pos, int scrollTime)

HB_FUNC_STATIC( QSCROLLER_SCROLLTO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QScroller_scrollTo1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QScroller_scrollTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setScrollerProperties(const QScrollerProperties & prop)
*/
HB_FUNC_STATIC( QSCROLLER_SETSCROLLERPROPERTIES )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCROLLERPROPERTIES(1) )
    {
#endif
      obj->setScrollerProperties ( *PQSCROLLERPROPERTIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QList<QScroller *> activeScrollers()
*/
HB_FUNC_STATIC( QSCROLLER_ACTIVESCROLLERS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QList<QScroller *> list = QScroller::activeScrollers ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSCROLLER" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QScroller *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSCROLLER", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::GestureType grabGesture(QObject * target, ScrollerGestureType scrollGestureType = TouchGesture)
*/
HB_FUNC_STATIC( QSCROLLER_GRABGESTURE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQOBJECT(1) && ISOPTNUM(2) )
  {
#endif
      RENUM( QScroller::grabGesture ( PQOBJECT(1), ISNIL(2)? (QScroller::ScrollerGestureType) QScroller::TouchGesture : (QScroller::ScrollerGestureType) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static Qt::GestureType grabbedGesture(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_GRABBEDGESTURE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
      RENUM( QScroller::grabbedGesture ( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool hasScroller(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_HASSCROLLER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
      RBOOL( QScroller::hasScroller ( PQOBJECT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QScroller * scroller(QObject * target)
*/
void QScroller_scroller1 ()
{

      QScroller * ptr = QScroller::scroller ( PQOBJECT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCROLLER" );
}

/*
static const QScroller * scroller(const QObject * target)
*/
void QScroller_scroller2 ()
{

      const QScroller * ptr = QScroller::scroller ( PQOBJECT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCROLLER" );
}

//[1]static QScroller * scroller(QObject * target)
//[2]static const QScroller * scroller(const QObject * target)

HB_FUNC_STATIC( QSCROLLER_SCROLLER )
{
  QScroller_scroller1();
}

/*
void ungrabGesture(QObject * target)
*/
HB_FUNC_STATIC( QSCROLLER_UNGRABGESTURE )
{
  QScroller * obj = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->ungrabGesture ( PQOBJECT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollerPropertiesChanged( const QScrollerProperties & newProperties )
*/
HB_FUNC_STATIC( QSCROLLER_ONSCROLLERPROPERTIESCHANGED )
{
  QScroller * sender = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("scrollerPropertiesChanged(QScrollerProperties)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScroller::scrollerPropertiesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QScrollerProperties & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSCROLLER" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QSCROLLERPROPERTIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void stateChanged( QScroller::State newState )
*/
HB_FUNC_STATIC( QSCROLLER_ONSTATECHANGED )
{
  QScroller * sender = (QScroller *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QScroller::State)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScroller::stateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QScroller::State arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSCROLLER" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
