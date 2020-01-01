%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QNormalDiffuseMapMaterial

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNormalDiffuseMapAlphaMaterial(Qt3DCore::QNode *parent = nullptr)

$prototype=~QNormalDiffuseMapAlphaMaterial()
$deleteMethod

#pragma ENDDUMP
