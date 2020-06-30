%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtPositioning/QGeoCoordinate>

$prototype=QGeoManeuver()
$internalConstructor=|new1|

$prototype=QGeoManeuver(const QGeoManeuver &other)
$internalConstructor=|new2|const QGeoManeuver &

/*
[1]QGeoManeuver()
[2]QGeoManeuver(const QGeoManeuver &other)
*/

HB_FUNC_STATIC( QGEOMANEUVER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoManeuver_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOMANEUVER(1) )
  {
    QGeoManeuver_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setPosition( const QGeoCoordinate & position )

$prototypeV2=QGeoCoordinate position() const

$prototypeV2=void setInstructionText( const QString & instructionText )

$prototypeV2=QString instructionText() const

$prototypeV2=void setDirection( QGeoManeuver::InstructionDirection direction )

$prototypeV2=QGeoManeuver::InstructionDirection direction() const

$prototypeV2=void setTimeToNextInstruction( int secs )

$prototypeV2=int timeToNextInstruction() const

$prototypeV2=void setDistanceToNextInstruction( qreal distance )

$prototypeV2=qreal distanceToNextInstruction() const

$prototypeV2=void setWaypoint( const QGeoCoordinate & coordinate )

$prototypeV2=QGeoCoordinate waypoint() const

$extraMethods

#pragma ENDDUMP
