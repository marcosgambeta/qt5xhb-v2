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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLoggingCategory(const char *category)
$constructor=|new|const char *

$deleteMethod

$prototypeV2=bool isEnabled( QtMsgType type ) const

$prototypeV2=void setEnabled( QtMsgType type, bool enable )

$prototypeV2=bool isDebugEnabled() const

$prototypeV2=bool isWarningEnabled() const

$prototypeV2=bool isCriticalEnabled() const

$prototypeV2=const char * categoryName() const

$prototypeV2=static QLoggingCategory * defaultCategory()

$prototypeV2=static void setFilterRules( const QString & rules )

$extraMethods

#pragma ENDDUMP
