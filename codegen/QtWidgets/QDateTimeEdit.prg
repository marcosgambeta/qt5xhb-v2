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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QCalendarWidget>

$prototype=QDateTimeEdit ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = nullptr )
$internalConstructor=|new2|const QDateTime &,QWidget *=nullptr

$prototype=QDateTimeEdit ( const QDate & date, QWidget * parent = nullptr )
$internalConstructor=|new3|const QDate &,QWidget *=nullptr

$prototype=QDateTimeEdit ( const QTime & time, QWidget * parent = nullptr )
$internalConstructor=|new4|const QTime &,QWidget *=nullptr

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool calendarPopup() const

$prototypeV2=QCalendarWidget * calendarWidget() const

$prototypeV2=void clearMaximumDate()

$prototypeV2=void clearMaximumDateTime()

$prototypeV2=void clearMaximumTime()

$prototypeV2=void clearMinimumDate()

$prototypeV2=void clearMinimumDateTime()

$prototypeV2=void clearMinimumTime()

$prototypeV2=QDateTimeEdit::Section currentSection() const

$prototypeV2=int currentSectionIndex() const

$prototypeV2=QDate date() const

$prototypeV2=QDateTime dateTime() const

$prototypeV2=QString displayFormat() const

$prototypeV2=QDateTimeEdit::Sections displayedSections() const

$prototypeV2=QDate maximumDate() const

$prototypeV2=QDateTime maximumDateTime() const

$prototypeV2=QTime maximumTime() const

$prototypeV2=QDate minimumDate() const

$prototypeV2=QDateTime minimumDateTime() const

$prototypeV2=QTime minimumTime() const

$prototype=Section sectionAt ( int index ) const
$method=|QDateTimeEdit::Section|sectionAt|int

$prototypeV2=int sectionCount() const

$prototype=QString sectionText ( Section section ) const
$method=|QString|sectionText|QDateTimeEdit::Section

$prototype=void setCalendarPopup ( bool enable )
$method=|void|setCalendarPopup|bool

$prototype=void setCalendarWidget ( QCalendarWidget * calendarWidget )
$method=|void|setCalendarWidget|QCalendarWidget *

$prototype=void setCurrentSection ( Section section )
$method=|void|setCurrentSection|QDateTimeEdit::Section

$prototype=void setCurrentSectionIndex ( int index )
$method=|void|setCurrentSectionIndex|int

$prototype=void setDateRange ( const QDate & min, const QDate & max )
$method=|void|setDateRange|const QDate &,const QDate &

$prototype=void setDateTimeRange ( const QDateTime & min, const QDateTime & max )
$method=|void|setDateTimeRange|const QDateTime &,const QDateTime &

$prototype=void setDisplayFormat ( const QString & format )
$method=|void|setDisplayFormat|const QString &

$prototype=void setMaximumDate ( const QDate & max )
$method=|void|setMaximumDate|const QDate &

$prototype=void setMaximumDateTime ( const QDateTime & dt )
$method=|void|setMaximumDateTime|const QDateTime &

$prototype=void setMaximumTime ( const QTime & max )
$method=|void|setMaximumTime|const QTime &

$prototype=void setMinimumDate ( const QDate & min )
$method=|void|setMinimumDate|const QDate &

$prototype=void setMinimumDateTime ( const QDateTime & dt )
$method=|void|setMinimumDateTime|const QDateTime &

$prototype=void setMinimumTime ( const QTime & min )
$method=|void|setMinimumTime|const QTime &

$prototype=void setSelectedSection ( Section section )
$method=|void|setSelectedSection|QDateTimeEdit::Section

$prototype=void setTimeRange ( const QTime & min, const QTime & max )
$method=|void|setTimeRange|const QTime &,const QTime &

$prototype=void setTimeSpec ( Qt::TimeSpec spec )
$method=|void|setTimeSpec|Qt::TimeSpec

$prototypeV2=QTime time() const

$prototypeV2=Qt::TimeSpec timeSpec() const

$prototypeV2=virtual void clear()

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototypeV2=virtual QSize sizeHint() const

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototype=void setDate ( const QDate & date )
$method=|void|setDate|const QDate &

$prototype=void setDateTime ( const QDateTime & dateTime )
$method=|void|setDateTime|const QDateTime &

$prototype=void setTime ( const QTime & time )
$method=|void|setTime|const QTime &

%%
%% SIGNALS
%%

$prototype=void dateChanged( const QDate & date )
$signalMethod=|void|dateChanged|const QDate &

$prototype=void dateTimeChanged( const QDateTime & datetime )
$signalMethod=|void|dateTimeChanged|const QDateTime &

$prototype=void timeChanged( const QTime & time )
$signalMethod=|void|timeChanged|const QTime &

#pragma ENDDUMP
