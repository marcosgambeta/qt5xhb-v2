%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,14,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDate>

$prototype=explicit QCalendar()
$internalConstructor=|new1|

$prototype=explicit QCalendar(System system)
$internalConstructor=|new2|QCalendar::System

$prototype=explicit QCalendar(QLatin1String name)
%% TODO: $internalConstructor=|new3|QLatin1String

$prototype=explicit QCalendar(QStringView name)
%% TODO: $internalConstructor=|new4|QStringView

/*
[1]explicit QCalendar()
[2]explicit QCalendar(System system)
[3]explicit QCalendar(QLatin1String name)
[4]explicit QCalendar(QStringView name)
*/

HB_FUNC_STATIC( QCALENDAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCalendar_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCalendar_new2();
  }
%%  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
%%  {
%%    QCalendar_new3();
%%  }
%%  else if( ISNUMPAR(1) && ISQSTRINGVIEW(1) )
%%  {
%%    QCalendar_new4();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

%% TODO: $prototypeV2=int daysInMonth( int month, int year = Unspecified ) const

$prototypeV2=int daysInYear( int year ) const

$prototypeV2=int monthsInYear( int year ) const

$prototypeV2=bool isDateValid( int year, int month, int day ) const

$prototypeV2=bool isLeapYear( int year ) const

$prototypeV2=bool isGregorian() const

$prototypeV2=bool isLunar() const

$prototypeV2=bool isLuniSolar() const

$prototypeV2=bool isSolar() const

$prototypeV2=bool isProleptic() const

$prototypeV2=bool hasYearZero() const

$prototypeV2=int maximumDaysInMonth() const

$prototypeV2=int minimumDaysInMonth() const

$prototypeV2=int maximumMonthsInYear() const

$prototypeV2=QString name() const

$prototypeV2=QDate dateFromParts( int year, int month, int day ) const

%% TODO: $prototypeV2=QDate dateFromParts( const YearMonthDay & parts ) const

%% TODO: $prototypeV2=YearMonthDay partsFromDate( QDate date ) const

$prototypeV2=int dayOfWeek( QDate date ) const

%% TODO: $prototypeV2=QString monthName( const QLocale & locale, int month, int year = Unspecified, QLocale::FormatType format = QLocale::LongFormat ) const

%% TODO: $prototypeV2=QString standaloneMonthName( const QLocale & locale, int month, int year = Unspecified, QLocale::FormatType format = QLocale::LongFormat ) const

$prototypeV2=QString weekDayName( const QLocale & locale, int day, QLocale::FormatType format = QLocale::LongFormat ) const

$prototypeV2=QString standaloneWeekDayName( const QLocale & locale, int day, QLocale::FormatType format=QLocale::LongFormat ) const

%% TODO: $prototypeV2=QString dateTimeToString( QStringView format, const QDateTime & datetime, const QDate & dateOnly, const QTime & timeOnly, const QLocale & locale ) const

$prototypeV2=static QStringList availableCalendars()

$extraMethods

#pragma ENDDUMP
