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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QString codeTemplate() const

$prototypeV2=virtual QWidget * createWidget( QWidget * parent ) = 0

$prototypeV2=virtual QString domXml() const

$prototypeV2=virtual QString group() const = 0

$prototypeV2=virtual QIcon icon() const = 0

$prototypeV2=virtual QString includeFile() const = 0

$prototypeV2=virtual void initialize( QDesignerFormEditorInterface * formEditor )

$prototypeV2=virtual bool isContainer() const = 0

$prototypeV2=virtual bool isInitialized() const

$prototypeV2=virtual QString name() const = 0

$prototypeV2=virtual QString toolTip() const = 0

$prototypeV2=virtual QString whatsThis() const = 0

$extraMethods

#pragma ENDDUMP
