%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,3,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAndroidActivityResultReceiver()

$prototype=virtual ~QAndroidActivityResultReceiver()
$deleteMethod

$prototype=virtual void handleActivityResult(int receiverRequestCode, int resultCode, const QAndroidJniObject &data) = 0
$virtualMethod=|void|handleActivityResult|int,int,const QAndroidJniObject &

$extraMethods

#pragma ENDDUMP
