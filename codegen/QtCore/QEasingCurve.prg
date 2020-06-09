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

#include <QtCore/QPointF>

$prototype=QEasingCurve ( Type type = Linear )
$internalConstructor=|new1|QEasingCurve::Type=QEasingCurve::Linear

$prototype=QEasingCurve ( const QEasingCurve & other )
$internalConstructor=|new2|const QEasingCurve &

/*
[1]QEasingCurve(Type type = Linear)
[2]QEasingCurve(const QEasingCurve & other)
*/

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QEasingCurve_new1();
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    QEasingCurve_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addCubicBezierSegment(const QPointF & c1, const QPointF & c2, const QPointF & endPoint)
$method=|void|addCubicBezierSegment|const QPointF &,const QPointF &,const QPointF &

$prototype=void addTCBSegment(const QPointF & nextPoint, qreal t, qreal c, qreal b)
$method=|void|addTCBSegment|const QPointF &,qreal,qreal,qreal

$prototypeV2=qreal amplitude() const

$prototypeV2=qreal overshoot() const

$prototypeV2=qreal period() const

$prototype=void setAmplitude(qreal amplitude)
$method=|void|setAmplitude|qreal

$prototype=void setOvershoot(qreal overshoot)
$method=|void|setOvershoot|qreal

$prototype=void setPeriod(qreal period)
$method=|void|setPeriod|qreal

$prototype=void setType(Type type)
$method=|void|setType|QEasingCurve::Type

$prototype=void swap(QEasingCurve & other)
$method=|void|swap|QEasingCurve &

$prototype=QVector<QPointF> toCubicSpline() const
$method=|QVector<QPointF>|toCubicSpline|

$prototypeV2=QEasingCurve::Type type() const

$prototype=qreal valueForProgress(qreal progress) const
$method=|qreal|valueForProgress|qreal

$extraMethods

#pragma ENDDUMP
