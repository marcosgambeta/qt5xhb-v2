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

#include <QtDesigner/QDesignerFormWindowInterface>

$deleteMethod

$prototypeV2=virtual QWidget * current() const = 0

$prototypeV2=virtual QDesignerFormWindowInterface * formWindow() const = 0

$prototypeV2=virtual bool hasSelection() const = 0

$prototypeV2=bool isWidgetSelected( QWidget * widget ) const

$prototypeV2=virtual bool movePosition( QDesignerFormWindowCursorInterface::MoveOperation operation, QDesignerFormWindowCursorInterface::MoveMode mode = QDesignerFormWindowCursorInterface::MoveAnchor ) = 0

$prototypeV2=virtual int position() const = 0

$prototypeV2=virtual QWidget * selectedWidget( int index ) const = 0

$prototypeV2=virtual int selectedWidgetCount() const = 0

$prototypeV2=virtual void setPosition( int position, QDesignerFormWindowCursorInterface::MoveMode mode = QDesignerFormWindowCursorInterface::MoveAnchor ) = 0

$prototypeV2=virtual QWidget * widget( int index ) const = 0

$prototypeV2=virtual int widgetCount() const = 0

$extraMethods

#pragma ENDDUMP
