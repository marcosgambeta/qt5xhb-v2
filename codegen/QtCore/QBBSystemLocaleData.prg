%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBBSystemLocaleData()
$constructor=|new|

$deleteMethod

$prototypeV2=uint measurementSystem()

$prototypeV2=QVariant timeFormat( QLocale::FormatType )

$prototypeV2=QVariant dateTimeFormat( QLocale::FormatType )

$prototypeV2=QLocale languageLocale()

$prototypeV2=QLocale regionLocale()

$prototypeV2=void installSocketNotifiers()

$prototypeV2=void readLanguageLocale()

$prototypeV2=void readRegionLocale()

$prototypeV2=void readMeasurementSystem()

$prototypeV2=void readHourFormat()

#pragma ENDDUMP
