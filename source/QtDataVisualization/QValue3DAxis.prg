/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVALUE3DAXISFORMATTER
#endif

CLASS QValue3DAxis INHERIT QAbstract3DAxis

   METHOD new
   METHOD delete
   METHOD segmentCount
   METHOD setSegmentCount
   METHOD subSegmentCount
   METHOD setSubSegmentCount
   METHOD labelFormat
   METHOD setLabelFormat
   METHOD formatter
   METHOD setFormatter
   METHOD reversed
   METHOD setReversed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QValue3DAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QValue3DAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QValue3DAxis>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit QValue3DAxis(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QValue3DAxis( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QValue3DAxis()
*/
HB_FUNC_STATIC( QVALUE3DAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals4_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int segmentCount() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->segmentCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSegmentCount(int count)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETSEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSegmentCount( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int subSegmentCount() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SUBSEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->subSegmentCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSubSegmentCount(int count)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETSUBSEGMENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSubSegmentCount( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString labelFormat() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_LABELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->labelFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLabelFormat(const QString &format)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETLABELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setLabelFormat( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QValue3DAxisFormatter *formatter() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_FORMATTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxisFormatter * ptr = obj->formatter();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXISFORMATTER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setFormatter(QValue3DAxisFormatter *formatter)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETFORMATTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXISFORMATTER(1) )
    {
#endif
      obj->setFormatter( PQVALUE3DAXISFORMATTER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool reversed() const
*/
HB_FUNC_STATIC( QVALUE3DAXIS_REVERSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reversed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setReversed(bool enable)
*/
HB_FUNC_STATIC( QVALUE3DAXIS_SETREVERSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QValue3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setReversed( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void formatterChanged( QValue3DAxisFormatter * formatter )
*/

/*
void labelFormatChanged( const QString & format )
*/

/*
void reversedChanged( bool enable )
*/

/*
void segmentCountChanged( int count )
*/

/*
void subSegmentCountChanged( int count )
*/

#pragma ENDDUMP
