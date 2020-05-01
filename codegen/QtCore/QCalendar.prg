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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int daysInMonth(int month, int year = Unspecified) const
%% TODO: $method=|int|daysInMonth|int,int=Unspecified

$prototype=int daysInYear(int year) const
$method=|int|daysInYear|int

$prototype=int monthsInYear(int year) const
$method=|int|monthsInYear|int

$prototype=bool isDateValid(int year, int month, int day) const
$method=|bool|isDateValid|int,int,int

$prototype=bool isLeapYear(int year) const
$method=|bool|isLeapYear|int

$prototype=bool isGregorian() const
$method=|bool|isGregorian|

$prototype=bool isLunar() const
$method=|bool|isLunar|

$prototype=bool isLuniSolar() const
$method=|bool|isLuniSolar|

$prototype=bool isSolar() const
$method=|bool|isSolar|

$prototype=bool isProleptic() const
$method=|bool|isProleptic|

$prototype=bool hasYearZero() const
$method=|bool|hasYearZero|

$prototype=int maximumDaysInMonth() const
$method=|int|maximumDaysInMonth|

$prototype=int minimumDaysInMonth() const
$method=|int|minimumDaysInMonth|

$prototype=int maximumMonthsInYear() const
$method=|int|maximumMonthsInYear|

$prototype=QString name() const
$method=|QString|name|

$prototype=QDate dateFromParts(int year, int month, int day) const
$method=|QDate|dateFromParts|int,int,int

$prototype=QDate dateFromParts(const YearMonthDay &parts) const
%% TODO: $method=|QDate|dateFromParts|const YearMonthDay &

$prototype=YearMonthDay partsFromDate(QDate date) const
%% TODO: $method=|YearMonthDay|partsFromDate|QDate

$prototype=int dayOfWeek(QDate date) const
$method=|int|dayOfWeek|QDate

$prototype=QString monthName(const QLocale &locale, int month, int year = Unspecified, QLocale::FormatType format=QLocale::LongFormat) const
%% TODO: $method=|QString|monthName|const QLocale &,int,int=Unspecified,QLocale::FormatType=QLocale::LongFormat

$prototype=QString standaloneMonthName(const QLocale &locale, int month, int year = Unspecified, QLocale::FormatType format = QLocale::LongFormat) const
%% TODO: $method=|QString|standaloneMonthName|const QLocale &,int,int=Unspecified,QLocale::FormatType=QLocale::LongFormat

$prototype=QString weekDayName(const QLocale &locale, int day, QLocale::FormatType format = QLocale::LongFormat) const
$method=|QString|weekDayName|const QLocale &,int,QLocale::FormatType=QLocale::LongFormat

$prototype=QString standaloneWeekDayName(const QLocale &locale, int day, QLocale::FormatType format=QLocale::LongFormat) const
$method=|QString|standaloneWeekDayName|const QLocale &,int,QLocale::FormatType=QLocale::LongFormat

$prototype=QString dateTimeToString(QStringView format, const QDateTime &datetime, const QDate &dateOnly, const QTime &timeOnly, const QLocale &locale) const
%% TODO: $method=|QString|dateTimeToString|QStringView,const QDateTime &,const QDate &,const QTime &,const QLocale &

$prototype=static QStringList availableCalendars()
$staticMethod=|QStringList|availableCalendars|

$extraMethods

#pragma ENDDUMP
