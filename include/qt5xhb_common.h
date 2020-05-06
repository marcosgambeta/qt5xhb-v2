/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT5XHB_COMMON_H
#define QT5XHB_COMMON_H

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#include "hbdate.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#define ISOPTLOG(n) (ISLOG(n)||ISNIL(n))
#define ISOPTNUM(n) (ISNUM(n)||ISNIL(n))
#define ISOPTCHAR(n) (ISCHAR(n)||ISNIL(n))
#define ISOPTPOINTER(n) (ISPOINTER(n)||ISNIL(n))
#define ISOPTOBJECT(n) (ISOBJECT(n)||ISNIL(n))
#define ISOPTARRAY(n) (ISARRAY(n)||ISNIL(n))

// TOCHECK: for xHarbour compatibility
#ifdef __XHARBOUR__
#define hb_objGetClass(x) HB_OBJ_CLASS(x)
#endif

#endif /* QT5XHB_COMMON_H */
