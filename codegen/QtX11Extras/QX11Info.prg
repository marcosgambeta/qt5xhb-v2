%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtX11Extras
$added=5,1,0

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

$prototypeV2=static bool isPlatformX11()

$prototype=static int appDpiX(int screen=-1)
$staticMethod=|int|appDpiX|int=-1

$prototype=static int appDpiY(int screen=-1)
$staticMethod=|int|appDpiY|int=-1

$prototype=static unsigned long appRootWindow(int screen=-1)
$staticMethod=|unsigned long|appRootWindow|int=-1

$prototypeV2=static int appScreen()

$prototypeV2=static unsigned long appTime()

$prototypeV2=static unsigned long appUserTime()

$prototype=static void setAppTime(unsigned long time)
$staticMethod=|void|setAppTime|unsigned long

$prototype=static void setAppUserTime(unsigned long time)
$staticMethod=|void|setAppUserTime|unsigned long

$prototypeV2=static unsigned long getTimestamp()

$prototypeV2=static Display * display()

$prototypeV2=static xcb_connection_t * connection()

$prototypeV2=static QByteArray nextStartupId()

$prototype=static void setNextStartupId(const QByteArray &id)
$staticMethod=|void|setNextStartupId|const QByteArray &

$extraMethods

#pragma ENDDUMP
