%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGBasicGeometryNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGGeometryNode()
$constructor=|new|

$deleteMethod

$prototypeV2=QSGMaterial * material() const

$prototypeV2=QSGMaterial * opaqueMaterial() const

$prototype=void setMaterial(QSGMaterial * material)
$method=|void|setMaterial|QSGMaterial *

$prototype=void setOpaqueMaterial(QSGMaterial * material)
$method=|void|setOpaqueMaterial|QSGMaterial *

#pragma ENDDUMP
