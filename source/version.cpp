/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <QtCore/QtGlobal>

#include "hbapi.h"

HB_FUNC( QT5XHB_VERSION )
{
  hb_retc( (const char *) "2020.09" );
}

HB_FUNC( QT5XHB_VERSION_DATE )
{
  hb_retc( (const char *) "07/09/2020 21:55:00" );
}

HB_FUNC( QT5XHB_ISCPP11 )
{
  hb_retl( 1 );
}

/*
  a função abaixo existe para compatibilidade com o Qt4xHb
*/

HB_FUNC( QT4XHB_VERSION )
{
  hb_retc( (const char *) "2020.09" );
}

HB_FUNC( QT4XHB_VERSION_DATE )
{
  hb_retc( (const char *) "07/09/2020 21:55:00" );
}

/*
  Funções do Qt Framework (inclui funções, constantes e macros)
*/

HB_FUNC( QVERSION )
{
  hb_retc( (const char *) qVersion() );
}

HB_FUNC( QSHAREDBUILD )
{
  hb_retl( qSharedBuild() );
}

HB_FUNC( QT_VERSION_STR )
{
  hb_retc( (const char *) QT_VERSION_STR );
}

HB_FUNC( QT_VERSION )
{
  hb_retni( QT_VERSION );
}

HB_FUNC( QT_VERSION_CHECK )
{
  hb_retni( QT_VERSION_CHECK( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}
