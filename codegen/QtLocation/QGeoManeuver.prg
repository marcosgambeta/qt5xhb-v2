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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setPosition(const QGeoCoordinate &position)
$method=|void|setPosition|const QGeoCoordinate &

$prototype=QGeoCoordinate position() const
$method=|QGeoCoordinate|position|

$prototype=void setInstructionText(const QString &instructionText)
$method=|void|setInstructionText|const QString &

$prototype=QString instructionText() const
$method=|QString|instructionText|

$prototype=void setDirection(InstructionDirection direction)
$method=|void|setDirection|QGeoManeuver::InstructionDirection

$prototype=InstructionDirection direction() const
$method=|QGeoManeuver::InstructionDirection|direction|

$prototype=void setTimeToNextInstruction(int secs)
$method=|void|setTimeToNextInstruction|int

$prototype=int timeToNextInstruction() const
$method=|int|timeToNextInstruction|

$prototype=void setDistanceToNextInstruction(qreal distance)
$method=|void|setDistanceToNextInstruction|qreal

$prototype=qreal distanceToNextInstruction() const
$method=|qreal|distanceToNextInstruction|

$prototype=void setWaypoint(const QGeoCoordinate &coordinate)
$method=|void|setWaypoint|const QGeoCoordinate &

$prototype=QGeoCoordinate waypoint() const
$method=|QGeoCoordinate|waypoint|

$extraMethods

#pragma ENDDUMP
