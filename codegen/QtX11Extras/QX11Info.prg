%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=static bool isPlatformX11()
$staticMethod=|bool|isPlatformX11|

$prototype=static int appDpiX(int screen=-1)
$staticMethod=|int|appDpiX|int=-1

$prototype=static int appDpiY(int screen=-1)
$staticMethod=|int|appDpiY|int=-1

$prototype=static unsigned long appRootWindow(int screen=-1)
$staticMethod=|unsigned long|appRootWindow|int=-1

$prototype=static int appScreen()
$staticMethod=|int|appScreen|

$prototype=static unsigned long appTime()
$staticMethod=|unsigned long|appTime|

$prototype=static unsigned long appUserTime()
$staticMethod=|unsigned long|appUserTime|

$prototype=static void setAppTime(unsigned long time)
$staticMethod=|void|setAppTime|unsigned long

$prototype=static void setAppUserTime(unsigned long time)
$staticMethod=|void|setAppUserTime|unsigned long

$prototype=static unsigned long getTimestamp()
$staticMethod=|unsigned long|getTimestamp|

$prototype=static Display *display()
$staticMethod=|Display *|display|

$prototype=static xcb_connection_t *connection()
$staticMethod=|xcb_connection_t *|connection|

$prototype=static QByteArray nextStartupId()
$staticMethod=|QByteArray|nextStartupId|

$prototype=static void setNextStartupId(const QByteArray &id)
$staticMethod=|void|setNextStartupId|const QByteArray &

$extraMethods

#pragma ENDDUMP
