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

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QString fileName() const = 0

$prototypeV2=virtual bool load() = 0

$prototypeV2=virtual bool save() = 0

$prototypeV2=virtual void setFileName( const QString & fileName ) = 0

#pragma ENDDUMP
