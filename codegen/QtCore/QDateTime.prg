%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDateTime ()
$internalConstructor=|new1|

$prototype=QDateTime ( const QDate & date )
$internalConstructor=|new2|const QDate &

$prototype=QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
$internalConstructor=|new3|const QDate &,const QTime &,Qt::TimeSpec=Qt::LocalTime

$prototype=QDateTime ( const QDateTime & other )
$internalConstructor=|new4|const QDateTime &

/*
[1]QDateTime ()
[2]QDateTime ( const QDate & date )
[3]QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
[4]QDateTime ( const QDateTime & other )
*/

HB_FUNC_STATIC( QDATETIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDateTime_new1();
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    QDateTime_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDATE(1) && ISQTIME(2) && ISOPTNUM(3) )
  {
    QDateTime_new3();
  }
  else if( ISNUMPAR(1) && ISQDATETIME(1) )
  {
    QDateTime_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QDateTime addDays( int ndays ) const

$prototypeV2=QDateTime addMSecs( qint64 msecs ) const

$prototypeV2=QDateTime addMonths( int nmonths ) const

$prototypeV2=QDateTime addSecs( int s ) const

$prototypeV2=QDateTime addYears( int nyears ) const

$prototypeV2=QDate date() const

$prototypeV2=int daysTo( const QDateTime & other ) const

$prototypeV2=bool isNull() const

$prototypeV2=bool isValid() const

$prototypeV2=qint64 msecsTo( const QDateTime & other ) const

$prototypeV2=int secsTo( const QDateTime & other ) const

$prototypeV2=void setDate( const QDate & date )

$prototypeV2=void setMSecsSinceEpoch( qint64 msecs )

$prototypeV2=void setTime( const QTime & time )

$prototypeV2=void setTimeSpec( Qt::TimeSpec spec )

$prototypeV2=void setTime_t( uint seconds )

$prototypeV2=QTime time() const

$prototypeV2=Qt::TimeSpec timeSpec() const

$prototypeV2=QDateTime toLocalTime() const

$prototypeV2=qint64 toMSecsSinceEpoch() const

$prototype=QString toString ( const QString & format ) const
$internalMethod=|QString|toString,toString1|const QString &

$prototype=QString toString ( Qt::DateFormat format = Qt::TextDate ) const
$internalMethod=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

/*
[1]QString toString ( const QString & format ) const
[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/

HB_FUNC_STATIC( QDATETIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDateTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDateTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=toString

$prototypeV2=QDateTime toTimeSpec( Qt::TimeSpec specification ) const

$prototypeV2=uint toTime_t() const

$prototypeV2=QDateTime toUTC() const

$prototypeV2=static QDateTime currentDateTime()

$prototypeV2=static QDateTime currentDateTimeUtc()

$prototypeV2=static qint64 currentMSecsSinceEpoch()

$prototypeV2=static QDateTime fromMSecsSinceEpoch( qint64 msecs )

$prototype=static QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
$internalStaticMethod=|QDateTime|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

$prototype=static QDateTime fromString ( const QString & string, const QString & format )
$internalStaticMethod=|QDateTime|fromString,fromString2|const QString &,const QString &

/*
[1]QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
[2]QDateTime fromString ( const QString & string, const QString & format )
*/

HB_FUNC_STATIC( QDATETIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDateTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDateTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromString

$prototypeV2=static QDateTime fromTime_t( uint seconds )

$extraMethods

#pragma ENDDUMP
