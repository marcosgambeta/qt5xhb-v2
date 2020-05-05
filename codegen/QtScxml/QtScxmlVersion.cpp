%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtScxml/QtScxmlVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtScxml/QtScxmlVersion>
#endif
#endif

HB_FUNC( QTSCXML_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  hb_retc( (const char *) QTSCXML_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTSCXML_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  hb_retni( QTSCXML_VERSION );
#else
  hb_retni( 0 );
#endif
}
