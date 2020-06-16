%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCharFormat>

$prototype=QCalendarWidget ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=int dateEditAcceptDelay() const

$prototype=QMap<QDate, QTextCharFormat> dateTextFormat () const
%% TODO: implementar

$prototype=QTextCharFormat dateTextFormat ( const QDate & date ) const
$method=|QTextCharFormat|dateTextFormat,dateTextFormat2|const QDate &

/*
[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
[2]QTextCharFormat dateTextFormat ( const QDate & date ) const
*/

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  if( ISNUMPAR(0) )
  {
    //HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT1 );
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=dateTextFormat

$prototypeV2=Qt::DayOfWeek firstDayOfWeek() const

$prototypeV2=QTextCharFormat headerTextFormat() const

$prototypeV2=QCalendarWidget::HorizontalHeaderFormat horizontalHeaderFormat() const

$prototypeV2=bool isDateEditEnabled() const

$prototypeV2=bool isGridVisible() const

$prototypeV2=bool isNavigationBarVisible() const

$prototypeV2=QDate maximumDate() const

$prototypeV2=QDate minimumDate() const

$prototypeV2=int monthShown() const

$prototypeV2=QDate selectedDate() const

$prototypeV2=QCalendarWidget::SelectionMode selectionMode() const

$prototype=void setDateEditAcceptDelay ( int delay )
$method=|void|setDateEditAcceptDelay|int

$prototype=void setDateEditEnabled ( bool enable )
$method=|void|setDateEditEnabled|bool

$prototype=void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
$method=|void|setDateTextFormat|const QDate &,const QTextCharFormat &

$prototype=void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
$method=|void|setFirstDayOfWeek|Qt::DayOfWeek

$prototype=void setHeaderTextFormat ( const QTextCharFormat & format )
$method=|void|setHeaderTextFormat|const QTextCharFormat &

$prototype=void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
$method=|void|setHorizontalHeaderFormat|QCalendarWidget::HorizontalHeaderFormat

$prototype=void setMaximumDate ( const QDate & date )
$method=|void|setMaximumDate|const QDate &

$prototype=void setMinimumDate ( const QDate & date )
$method=|void|setMinimumDate|const QDate &

$prototype=void setSelectionMode ( SelectionMode mode )
$method=|void|setSelectionMode|QCalendarWidget::SelectionMode

$prototype=void setVerticalHeaderFormat ( VerticalHeaderFormat format )
$method=|void|setVerticalHeaderFormat|QCalendarWidget::VerticalHeaderFormat

$prototype=void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
$method=|void|setWeekdayTextFormat|Qt::DayOfWeek,const QTextCharFormat &

$prototype=VerticalHeaderFormat verticalHeaderFormat () const
$method=|QCalendarWidget::VerticalHeaderFormat|verticalHeaderFormat|

$prototype=QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
$method=|QTextCharFormat|weekdayTextFormat|Qt::DayOfWeek

$prototypeV2=int yearShown() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void setCurrentPage ( int year, int month )
$method=|void|setCurrentPage|int,int

$prototype=void setDateRange ( const QDate & min, const QDate & max )
$method=|void|setDateRange|const QDate &,const QDate &

$prototype=void setGridVisible ( bool show )
$method=|void|setGridVisible|bool

$prototype=void setNavigationBarVisible ( bool visible )
$method=|void|setNavigationBarVisible|bool

$prototype=void setSelectedDate ( const QDate & date )
$method=|void|setSelectedDate|const QDate &

$prototypeV2=void showNextMonth()

$prototypeV2=void showNextYear()

$prototypeV2=void showPreviousMonth()

$prototypeV2=void showPreviousYear()

$prototypeV2=void showSelectedDate()

$prototypeV2=void showToday()

%%
%% SIGNALS
%%

$prototype=void activated( const QDate & date )
$signalMethod=|void|activated|const QDate &

$prototype=void clicked( const QDate & date )
$signalMethod=|void|clicked|const QDate &

$prototype=void currentPageChanged( int year, int month )
$signalMethod=|void|currentPageChanged|int,int

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

#pragma ENDDUMP
