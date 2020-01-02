%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,5,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QVideoFilterRunnable()
$deleteMethod

$prototype=virtual QVideoFrame run(QVideoFrame *input, const QVideoSurfaceFormat &surfaceFormat, RunFlags flags) = 0
$virtualMethod=|QVideoFrame|run|QVideoFrame *,const QVideoSurfaceFormat &,QVideoFilterRunnable::RunFlags

#pragma ENDDUMP
