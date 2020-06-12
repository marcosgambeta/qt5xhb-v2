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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int compare(const QSGMaterial * other) const
$virtualMethod=|int|compare|const QSGMaterial *

$prototypeV2=virtual QSGMaterialShader * createShader() const = 0

$prototypeV2=QSGMaterial::Flags flags() const

$prototype=void setFlag(Flags flags, bool on = true)
$method=|void|setFlag|QSGMaterial::Flags,bool=true

$prototypeV2=virtual QSGMaterialType * type() const = 0

$extraMethods

#pragma ENDDUMP
