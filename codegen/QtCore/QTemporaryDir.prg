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

$prototype=QTemporaryDir()
$internalConstructor=|new1|

$prototype=QTemporaryDir(const QString & templateName)
$internalConstructor=|new2|const QString &

/*
[1]QTemporaryDir()
[2]QTemporaryDir(const QString & templateName)
*/

HB_FUNC_STATIC( QTEMPORARYDIR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryDir_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryDir_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool autoRemove() const

$prototypeV2=bool isValid() const

$prototypeV2=QString path() const

$prototypeV2=bool remove()

$prototypeV2=void setAutoRemove( bool b )

$extraMethods

#pragma ENDDUMP
