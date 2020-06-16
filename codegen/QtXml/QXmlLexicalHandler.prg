%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

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

$prototype=virtual bool comment ( const QString & ch ) = 0
$virtualMethod=|bool|comment|const QString &

$prototypeV2=virtual bool endCDATA() = 0

$prototypeV2=virtual bool endDTD() = 0

$prototype=virtual bool endEntity ( const QString & name ) = 0
$virtualMethod=|bool|endEntity|const QString &

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool startCDATA() = 0

$prototype=virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
$virtualMethod=|bool|startDTD|const QString &,const QString &,const QString &

$prototype=virtual bool startEntity ( const QString & name ) = 0
$virtualMethod=|bool|startEntity|const QString &

$extraMethods

#pragma ENDDUMP
