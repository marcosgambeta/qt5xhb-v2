/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QtCoreVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QtCoreVersion>
#endif

HB_FUNC( QTCORE_VERSION_STR )
{
  hb_retc( (const char *) QTCORE_VERSION_STR );
}

HB_FUNC( QTCORE_VERSION )
{
  hb_retni( QTCORE_VERSION );
}
