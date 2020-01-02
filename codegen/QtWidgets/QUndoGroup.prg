%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QUndoStack>
#include <QtWidgets/QAction>

$prototype=QUndoGroup(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QUndoStack * activeStack() const
$method=|QUndoStack *|activeStack|

$prototype=void addStack(QUndoStack * stack)
$method=|void|addStack|QUndoStack *

$prototype=bool canRedo() const
$method=|bool|canRedo|

$prototype=bool canUndo() const
$method=|bool|canUndo|

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototype=bool isClean() const
$method=|bool|isClean|

$prototype=QString redoText() const
$method=|QString|redoText|

$prototype=void removeStack(QUndoStack * stack)
$method=|void|removeStack|QUndoStack *

$prototype=QList<QUndoStack *> stacks() const
$method=|QList<QUndoStack *>|stacks|

$prototype=QString undoText() const
$method=|QString|undoText|

$prototype=void redo()
$method=|void|redo|

$prototype=void setActiveStack(QUndoStack * stack)
$method=|void|setActiveStack|QUndoStack *

$prototype=void undo()
$method=|void|undo|

%%
%% SIGNALS
%%

$prototype=void activeStackChanged( QUndoStack * stack )
$signalMethod=|void|activeStackChanged|QUndoStack *

$prototype=void canRedoChanged( bool canRedo )
$signalMethod=|void|canRedoChanged|bool

$prototype=void canUndoChanged( bool canUndo )
$signalMethod=|void|canUndoChanged|bool

$prototype=void cleanChanged( bool clean )
$signalMethod=|void|cleanChanged|bool

$prototype=void indexChanged( int idx )
$signalMethod=|void|indexChanged|int

$prototype=void redoTextChanged( const QString & redoText )
$signalMethod=|void|redoTextChanged|const QString &

$prototype=void undoTextChanged( const QString & undoText )
$signalMethod=|void|undoTextChanged|const QString &

#pragma ENDDUMP
