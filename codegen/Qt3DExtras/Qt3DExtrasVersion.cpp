%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <Qt3DExtrasVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <Qt3DExtrasVersion>
#endif
#endif

HB_FUNC( QT3DEXTRAS_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  hb_retc( (const char *) QT3DEXTRAS_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QT3DEXTRAS_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  hb_retni( QT3DEXTRAS_VERSION );
#else
  hb_retni( 0 );
#endif
}
