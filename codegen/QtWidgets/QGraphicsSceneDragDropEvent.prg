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

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>

$deleteMethod

$prototypeV2=void acceptProposedAction()

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=Qt::DropAction dropAction() const

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=QPointF pos() const

$prototypeV2=Qt::DropActions possibleActions() const

$prototypeV2=Qt::DropAction proposedAction() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QPoint screenPos() const

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototypeV2=QWidget * source() const

#pragma ENDDUMP
