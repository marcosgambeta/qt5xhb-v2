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

$prototype=bool isEnabled(QtMsgType type) const
$method=|bool|isEnabled|QtMsgType

$prototype=void setEnabled(QtMsgType type, bool enable)
$method=|void|setEnabled|QtMsgType,bool

$prototypeV2=bool isDebugEnabled() const

$prototypeV2=bool isWarningEnabled() const

$prototypeV2=bool isCriticalEnabled() const

$prototype=const char *categoryName() const
$method=|const char *|categoryName|

$prototypeV2=static QLoggingCategory * defaultCategory()

$prototype=static void setFilterRules(const QString &rules)
$staticMethod=|void|setFilterRules|const QString &

$extraMethods

#pragma ENDDUMP
