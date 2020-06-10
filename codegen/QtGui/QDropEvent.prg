%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent,QMimeSource

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>

$prototype=QDropEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = Drop )
$constructor=|new|const QPoint &,Qt::DropActions,const QMimeData *,Qt::MouseButtons,Qt::KeyboardModifiers,QEvent::Type=QEvent::Drop

$deleteMethod

$prototypeV2=void acceptProposedAction()

$prototypeV2=Qt::DropAction dropAction() const

$prototypeV2=Qt::KeyboardModifiers keyboardModifiers() const

$prototype=const QMimeData * mimeData () const
$method=|const QMimeData *|mimeData|

$prototypeV2=Qt::MouseButtons mouseButtons() const

$prototypeV2=Qt::DropActions possibleActions() const

$prototypeV2=Qt::DropAction proposedAction() const

$prototype=void setDropAction ( Qt::DropAction action )
$method=|void|setDropAction|Qt::DropAction

$prototypeV2=QObject * source() const

#pragma ENDDUMP
