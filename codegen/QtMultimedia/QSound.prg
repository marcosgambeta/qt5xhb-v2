%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSound(const QString& filename, QObject* parent = nullptr)
$constructor=|new|const QString &,QObject *=nullptr

$prototype=~QSound()
$deleteMethod

$prototypeV2=int loops() const

$prototypeV2=int loopsRemaining() const

$prototype=void setLoops(int)
$method=|void|setLoops|int

$prototypeV2=QString fileName() const

$prototypeV2=bool isFinished() const

$prototypeV2=void stop()

$prototype=void play()
$internalSlotMethod=|void|play,play1|

$prototype=static void play(const QString& filename)
$internalStaticMethod=|void|play,play2|const QString &

/*
[1]void play()
[2]static void play(const QString& filename)
*/

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    QSound_play1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSound_play2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=play

$prototype=void deleteOnComplete() (slot) [private]

#pragma ENDDUMP
