%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

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

#include <QtDesigner/QDesignerFormEditorInterface>
#include <QtWidgets/QAction>

$deleteMethod

$prototypeV2=virtual QAction * actionAdjustSize() const

$prototypeV2=virtual QAction * actionBreakLayout() const

$prototypeV2=virtual QAction * actionCopy() const

$prototypeV2=virtual QAction * actionCut() const

$prototypeV2=virtual QAction * actionDelete() const

$prototypeV2=QAction * actionFormLayout() const

$prototypeV2=virtual QAction * actionGridLayout() const

$prototypeV2=virtual QAction * actionHorizontalLayout() const

$prototypeV2=virtual QAction * actionLower() const

$prototypeV2=virtual QAction * actionPaste() const

$prototypeV2=virtual QAction * actionRaise() const

$prototypeV2=virtual QAction * actionRedo() const

$prototypeV2=virtual QAction * actionSelectAll() const

$prototypeV2=QAction * actionSimplifyLayout() const

$prototypeV2=virtual QAction * actionSplitHorizontal() const

$prototypeV2=virtual QAction * actionSplitVertical() const

$prototypeV2=virtual QAction * actionUndo() const

$prototypeV2=virtual QAction * actionVerticalLayout() const

$prototypeV2=virtual QDesignerFormWindowInterface * activeFormWindow() const

$prototypeV2=virtual QDesignerFormEditorInterface * core() const

$prototype=virtual QDesignerFormWindowInterface * createFormWindow ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$virtualMethod=|QDesignerFormWindowInterface *|createFormWindow|QWidget *=nullptr,Qt::WindowFlags=0

$prototype=virtual QDesignerFormWindowInterface * formWindow ( int index ) const
$virtualMethod=|QDesignerFormWindowInterface *|formWindow|int

$prototypeV2=virtual int formWindowCount() const

$prototype=virtual void addFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|addFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void removeFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|removeFormWindow|QDesignerFormWindowInterface *

$prototype=virtual void setActiveFormWindow ( QDesignerFormWindowInterface * formWindow )
$virtualMethod=|void|setActiveFormWindow|QDesignerFormWindowInterface *

%%
%% SIGNALS
%%

$prototype=void activeFormWindowChanged( QDesignerFormWindowInterface * formWindow )
$signalMethod=|void|activeFormWindowChanged|QDesignerFormWindowInterface *

$prototype=void formWindowAdded( QDesignerFormWindowInterface * formWindow )
$signalMethod=|void|formWindowAdded|QDesignerFormWindowInterface *

$prototype=void formWindowRemoved( QDesignerFormWindowInterface * formWindow )
$signalMethod=|void|formWindowRemoved|QDesignerFormWindowInterface *

#pragma ENDDUMP
