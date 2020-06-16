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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void setSizePolicy(QSizePolicy::Policy policy)
$method=|void|setSizePolicy|QSizePolicy::Policy

$prototype=void setSpacing(qreal spacing)
$method=|void|setSpacing|qreal

$prototypeV2=QSizePolicy::Policy sizePolicy() const

$prototypeV2=qreal spacing() const

$prototypeV2=void unsetSpacing()

#pragma ENDDUMP
