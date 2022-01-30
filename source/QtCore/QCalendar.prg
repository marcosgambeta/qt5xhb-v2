/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QCalendar

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD daysInYear
   METHOD monthsInYear
   METHOD isDateValid
   METHOD isLeapYear
   METHOD isGregorian
   METHOD isLunar
   METHOD isLuniSolar
   METHOD isSolar
   METHOD isProleptic
   METHOD hasYearZero
   METHOD maximumDaysInMonth
   METHOD minimumDaysInMonth
   METHOD maximumMonthsInYear
   METHOD name
   METHOD dateFromParts
   METHOD dayOfWeek
   METHOD weekDayName
   METHOD standaloneWeekDayName
   METHOD availableCalendars

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCalendar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtCore/QCalendar>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtCore/QCalendar>
#endif
#endif

#include <QtCore/QDate>

HB_FUNC_STATIC( QCALENDAR_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    /*
    QCalendar()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QCalendar();
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    /*
    QCalendar( QCalendar::System system )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
    auto obj = new QCalendar( static_cast<QCalendar::System>( hb_parni( 1 ) ) );
    Qt5xHb::returnNewObject( obj, true );
#endif

  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCALENDAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QCALENDAR_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int daysInYear( int year ) const
*/
HB_FUNC_STATIC( QCALENDAR_DAYSINYEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RINT( obj->daysInYear( PINT( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int monthsInYear( int year ) const
*/
HB_FUNC_STATIC( QCALENDAR_MONTHSINYEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RINT( obj->monthsInYear( PINT( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isDateValid( int year, int month, int day ) const
*/
HB_FUNC_STATIC( QCALENDAR_ISDATEVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 3 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) )
    {
#endif
      RBOOL( obj->isDateValid( PINT( 1 ), PINT( 2 ), PINT( 3 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isLeapYear( int year ) const
*/
HB_FUNC_STATIC( QCALENDAR_ISLEAPYEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->isLeapYear( PINT( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isGregorian() const
*/
HB_FUNC_STATIC( QCALENDAR_ISGREGORIAN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isGregorian() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isLunar() const
*/
HB_FUNC_STATIC( QCALENDAR_ISLUNAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isLunar() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isLuniSolar() const
*/
HB_FUNC_STATIC( QCALENDAR_ISLUNISOLAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isLuniSolar() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isSolar() const
*/
HB_FUNC_STATIC( QCALENDAR_ISSOLAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isSolar() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isProleptic() const
*/
HB_FUNC_STATIC( QCALENDAR_ISPROLEPTIC )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isProleptic() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool hasYearZero() const
*/
HB_FUNC_STATIC( QCALENDAR_HASYEARZERO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->hasYearZero() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int maximumDaysInMonth() const
*/
HB_FUNC_STATIC( QCALENDAR_MAXIMUMDAYSINMONTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->maximumDaysInMonth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int minimumDaysInMonth() const
*/
HB_FUNC_STATIC( QCALENDAR_MINIMUMDAYSINMONTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->minimumDaysInMonth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int maximumMonthsInYear() const
*/
HB_FUNC_STATIC( QCALENDAR_MAXIMUMMONTHSINYEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->maximumMonthsInYear() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QCALENDAR_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QDate dateFromParts( int year, int month, int day ) const
*/
HB_FUNC_STATIC( QCALENDAR_DATEFROMPARTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 3 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) )
    {
#endif
      auto ptr = new QDate( obj->dateFromParts( PINT( 1 ), PINT( 2 ), PINT( 3 ) ) );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int dayOfWeek( QDate date ) const
*/
HB_FUNC_STATIC( QCALENDAR_DAYOFWEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQDATE( 1 ) )
    {
#endif
      RINT( obj->dayOfWeek( *PQDATE( 1 ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString weekDayName( const QLocale & locale, int day, QLocale::FormatType format = QLocale::LongFormat ) const
*/
HB_FUNC_STATIC( QCALENDAR_WEEKDAYNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 3 ) && ISQLOCALE( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      RQSTRING( obj->weekDayName( *PQLOCALE( 1 ), PINT( 2 ), HB_ISNIL( 3 ) ? static_cast< QLocale::FormatType >( QLocale::LongFormat ) : static_cast< QLocale::FormatType >( hb_parni( 3 ) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString standaloneWeekDayName( const QLocale & locale, int day, QLocale::FormatType format=QLocale::LongFormat ) const
*/
HB_FUNC_STATIC( QCALENDAR_STANDALONEWEEKDAYNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = static_cast< QCalendar * >( Qt5xHb::itemGetPtrStackSelfItem() );

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 3 ) && ISQLOCALE( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      RQSTRING( obj->standaloneWeekDayName( *PQLOCALE( 1 ), PINT( 2 ), HB_ISNIL( 3 ) ? static_cast< QLocale::FormatType >( QLocale::LongFormat ) : static_cast< QLocale::FormatType >( hb_parni( 3 ) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QStringList availableCalendars()
*/
HB_FUNC_STATIC( QCALENDAR_AVAILABLECALENDARS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RQSTRINGLIST( QCalendar::availableCalendars() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QCALENDAR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCALENDAR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCALENDAR_NEWFROM );
}

HB_FUNC_STATIC( QCALENDAR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCALENDAR_NEWFROM );
}

HB_FUNC_STATIC( QCALENDAR_SELFDESTRUCTION )
{
  hb_retl( static_cast< bool >( hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) ) );
}

HB_FUNC_STATIC( QCALENDAR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
