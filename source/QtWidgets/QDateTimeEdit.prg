/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCALENDARWIDGET
REQUEST QDATE
REQUEST QDATETIME
REQUEST QSIZE
REQUEST QTIME
#endif

CLASS QDateTimeEdit INHERIT QAbstractSpinBox

   METHOD new
   METHOD delete
   METHOD calendarPopup
   METHOD calendarWidget
   METHOD clearMaximumDate
   METHOD clearMaximumDateTime
   METHOD clearMaximumTime
   METHOD clearMinimumDate
   METHOD clearMinimumDateTime
   METHOD clearMinimumTime
   METHOD currentSection
   METHOD currentSectionIndex
   METHOD date
   METHOD dateTime
   METHOD displayFormat
   METHOD displayedSections
   METHOD maximumDate
   METHOD maximumDateTime
   METHOD maximumTime
   METHOD minimumDate
   METHOD minimumDateTime
   METHOD minimumTime
   METHOD sectionAt
   METHOD sectionCount
   METHOD sectionText
   METHOD setCalendarPopup
   METHOD setCalendarWidget
   METHOD setCurrentSection
   METHOD setCurrentSectionIndex
   METHOD setDateRange
   METHOD setDateTimeRange
   METHOD setDisplayFormat
   METHOD setMaximumDate
   METHOD setMaximumDateTime
   METHOD setMaximumTime
   METHOD setMinimumDate
   METHOD setMinimumDateTime
   METHOD setMinimumTime
   METHOD setSelectedSection
   METHOD setTimeRange
   METHOD setTimeSpec
   METHOD time
   METHOD timeSpec
   METHOD clear
   METHOD event
   METHOD sizeHint
   METHOD stepBy
   METHOD setDate
   METHOD setDateTime
   METHOD setTime

   METHOD onDateChanged
   METHOD onDateTimeChanged
   METHOD onTimeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDateTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDateTimeEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QDateTimeEdit>
#endif

#include <QtWidgets/QCalendarWidget>

/*
QDateTimeEdit ( QWidget * parent = nullptr )
*/
void QDateTimeEdit_new1()
{
  auto obj = new QDateTimeEdit( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = nullptr )
*/
void QDateTimeEdit_new2()
{
  auto obj = new QDateTimeEdit( *PQDATETIME(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDateTimeEdit ( const QDate & date, QWidget * parent = nullptr )
*/
void QDateTimeEdit_new3()
{
  auto obj = new QDateTimeEdit( *PQDATE(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDateTimeEdit ( const QTime & time, QWidget * parent = nullptr )
*/
void QDateTimeEdit_new4()
{
  auto obj = new QDateTimeEdit( *PQTIME(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QDateTimeEdit ( QWidget * parent = nullptr )
[2]QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = nullptr )
[3]QDateTimeEdit ( const QDate & date, QWidget * parent = nullptr )
[4]QDateTimeEdit ( const QTime & time, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QDATETIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDateTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new2();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new3();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATETIMEEDIT_DELETE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool calendarPopup () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CALENDARPOPUP )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->calendarPopup() );
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
QCalendarWidget * calendarWidget () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CALENDARWIDGET )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCalendarWidget * ptr = obj->calendarWidget();
      Qt5xHb::createReturnQWidgetClass( ptr, "QCALENDARWIDGET" );
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
void clearMaximumDate ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMaximumDate();
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
void clearMaximumDateTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMaximumDateTime();
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
void clearMaximumTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMaximumTime();
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
void clearMinimumDate ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMinimumDate();
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
void clearMinimumDateTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMinimumDateTime();
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
void clearMinimumTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearMinimumTime();
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
Section currentSection () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CURRENTSECTION )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->currentSection() );
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
int currentSectionIndex () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CURRENTSECTIONINDEX )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentSectionIndex() );
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
QDate date () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDate( obj->date() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
QDateTime dateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDateTime( obj->dateTime() );
      Qt5xHb::createReturnClass( ptr, "QDATETIME", true );
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
QString displayFormat () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DISPLAYFORMAT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->displayFormat() );
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
Sections displayedSections () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DISPLAYEDSECTIONS )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->displayedSections() );
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
QDate maximumDate () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDate( obj->maximumDate() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
QDateTime maximumDateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDateTime( obj->maximumDateTime() );
      Qt5xHb::createReturnClass( ptr, "QDATETIME", true );
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
QTime maximumTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QTime( obj->maximumTime() );
      Qt5xHb::createReturnClass( ptr, "QTIME", true );
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
QDate minimumDate () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDate( obj->minimumDate() );
      Qt5xHb::createReturnClass( ptr, "QDATE", true );
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
QDateTime minimumDateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDateTime( obj->minimumDateTime() );
      Qt5xHb::createReturnClass( ptr, "QDATETIME", true );
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
QTime minimumTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QTime( obj->minimumTime() );
      Qt5xHb::createReturnClass( ptr, "QTIME", true );
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
Section sectionAt ( int index ) const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONAT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RENUM( obj->sectionAt( PINT(1) ) );
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
int sectionCount () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONCOUNT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sectionCount() );
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
QString sectionText ( Section section ) const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONTEXT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->sectionText( (QDateTimeEdit::Section) hb_parni(1) ) );
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
void setCalendarPopup ( bool enable )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCALENDARPOPUP )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setCalendarPopup( PBOOL(1) );
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
void setCalendarWidget ( QCalendarWidget * calendarWidget )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCALENDARWIDGET )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCALENDARWIDGET(1) )
    {
#endif
      obj->setCalendarWidget( PQCALENDARWIDGET(1) );
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
void setCurrentSection ( Section section )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCURRENTSECTION )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentSection( (QDateTimeEdit::Section) hb_parni(1) );
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
void setCurrentSectionIndex ( int index )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCURRENTSECTIONINDEX )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentSectionIndex( PINT(1) );
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
void setDateRange ( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATERANGE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDATE(1) && ISQDATE(2) )
    {
#endif
      obj->setDateRange( *PQDATE(1), *PQDATE(2) );
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
void setDateTimeRange ( const QDateTime & min, const QDateTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATETIMERANGE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDATETIME(1) && ISQDATETIME(2) )
    {
#endif
      obj->setDateTimeRange( *PQDATETIME(1), *PQDATETIME(2) );
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
void setDisplayFormat ( const QString & format )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDISPLAYFORMAT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setDisplayFormat( PQSTRING(1) );
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
void setMaximumDate ( const QDate & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
#endif
      obj->setMaximumDate( *PQDATE(1) );
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
void setMaximumDateTime ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      obj->setMaximumDateTime( *PQDATETIME(1) );
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
void setMaximumTime ( const QTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      obj->setMaximumTime( *PQTIME(1) );
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
void setMinimumDate ( const QDate & min )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
#endif
      obj->setMinimumDate( *PQDATE(1) );
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
void setMinimumDateTime ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      obj->setMinimumDateTime( *PQDATETIME(1) );
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
void setMinimumTime ( const QTime & min )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      obj->setMinimumTime( *PQTIME(1) );
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
void setSelectedSection ( Section section )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETSELECTEDSECTION )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSelectedSection( (QDateTimeEdit::Section) hb_parni(1) );
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
void setTimeRange ( const QTime & min, const QTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIMERANGE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTIME(1) && ISQTIME(2) )
    {
#endif
      obj->setTimeRange( *PQTIME(1), *PQTIME(2) );
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
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIMESPEC )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTimeSpec( (Qt::TimeSpec) hb_parni(1) );
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
QTime time () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_TIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QTime( obj->time() );
      Qt5xHb::createReturnClass( ptr, "QTIME", true );
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
Qt::TimeSpec timeSpec () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_TIMESPEC )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->timeSpec() );
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
virtual void clear ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEAR )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_EVENT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SIZEHINT )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual void stepBy ( int steps )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_STEPBY )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->stepBy( PINT(1) );
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
void setDate ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATE )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATE(1) )
    {
#endif
      obj->setDate( *PQDATE(1) );
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
void setDateTime ( const QDateTime & dateTime )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATETIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      obj->setDateTime( *PQDATETIME(1) );
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
void setTime ( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIME )
{
  auto obj = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIME(1) )
    {
#endif
      obj->setTime( *PQTIME(1) );
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
void dateChanged( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_ONDATECHANGED )
{
  auto sender = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("dateChanged(QDate)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDateTimeEdit::dateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QDate & arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "QDATETIMEEDIT" );
            PHB_ITEM pArg1 = Signals_return_object( (void *) &arg1, "QDATE" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
void dateTimeChanged( const QDateTime & datetime )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_ONDATETIMECHANGED )
{
  auto sender = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("dateTimeChanged(QDateTime)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDateTimeEdit::dateTimeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QDateTime & arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "QDATETIMEEDIT" );
            PHB_ITEM pArg1 = Signals_return_object( (void *) &arg1, "QDATETIME" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
void timeChanged( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_ONTIMECHANGED )
{
  auto sender = (QDateTimeEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("timeChanged(QTime)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDateTimeEdit::timeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QTime & arg1) {
          PHB_ITEM cb = Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals_return_qobject( (QObject *) sender, "QDATETIMEEDIT" );
            PHB_ITEM pArg1 = Signals_return_object( (void *) &arg1, "QTIME" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals_get_connection( sender, indexOfSignal ) );

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
