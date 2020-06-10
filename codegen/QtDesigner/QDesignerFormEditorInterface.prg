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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QDesignerActionEditorInterface>
#include <QtDesigner/QDesignerFormWindowManagerInterface>
#include <QtDesigner/QDesignerObjectInspectorInterface>
#include <QtDesigner/QDesignerPropertyEditorInterface>
#include <QtDesigner/QDesignerWidgetBoxInterface>
#include <QtDesigner/QExtensionManager>

$prototype=QDesignerFormEditorInterface ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QDesignerActionEditorInterface * actionEditor() const

$prototypeV2=QExtensionManager * extensionManager() const

$prototypeV2=QDesignerFormWindowManagerInterface * formWindowManager() const

$prototypeV2=QDesignerObjectInspectorInterface * objectInspector() const

$prototypeV2=QDesignerPropertyEditorInterface * propertyEditor() const

$prototype=void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
$method=|void|setActionEditor|QDesignerActionEditorInterface *

$prototype=void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
$method=|void|setObjectInspector|QDesignerObjectInspectorInterface *

$prototype=void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
$method=|void|setPropertyEditor|QDesignerPropertyEditorInterface *

$prototype=void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
$method=|void|setWidgetBox|QDesignerWidgetBoxInterface *

$prototypeV2=QWidget * topLevel() const

$prototypeV2=QDesignerWidgetBoxInterface * widgetBox() const

#pragma ENDDUMP
