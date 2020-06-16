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

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QPointF centerPoint() const

$prototypeV2=QPinchGesture::ChangeFlags changeFlags() const

$prototypeV2=QPointF lastCenterPoint() const

$prototypeV2=qreal lastRotationAngle() const

$prototypeV2=qreal lastScaleFactor() const

$prototypeV2=qreal rotationAngle() const

$prototypeV2=qreal scaleFactor() const

$prototype=void setCenterPoint(const QPointF & value)
$method=|void|setCenterPoint|const QPointF &

$prototype=void setChangeFlags(ChangeFlags value)
$method=|void|setChangeFlags|QPinchGesture::ChangeFlags

$prototype=void setLastCenterPoint(const QPointF & value)
$method=|void|setLastCenterPoint|const QPointF &

$prototype=void setLastRotationAngle(qreal value)
$method=|void|setLastRotationAngle|qreal

$prototype=void setLastScaleFactor(qreal value)
$method=|void|setLastScaleFactor|qreal

$prototype=void setRotationAngle(qreal value)
$method=|void|setRotationAngle|qreal

$prototype=void setScaleFactor(qreal value)
$method=|void|setScaleFactor|qreal

$prototype=void setStartCenterPoint(const QPointF & value)
$method=|void|setStartCenterPoint|const QPointF &

$prototype=void setTotalChangeFlags(ChangeFlags value)
$method=|void|setTotalChangeFlags|QPinchGesture::ChangeFlags

$prototype=void setTotalRotationAngle(qreal value)
$method=|void|setTotalRotationAngle|qreal

$prototype=void setTotalScaleFactor(qreal value)
$method=|void|setTotalScaleFactor|qreal

$prototypeV2=QPointF startCenterPoint() const

$prototypeV2=QPinchGesture::ChangeFlags totalChangeFlags() const

$prototypeV2=qreal totalRotationAngle() const

$prototypeV2=qreal totalScaleFactor() const

#pragma ENDDUMP
