//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QT5XHB_COMMON_H
#define QT5XHB_COMMON_H

#include <hbapi.h>
#include <hbapiitm.h>
#include <hbapierr.h>
#include <hbvm.h>
#include <hbstack.h>
#include <hbdate.h>
#ifndef __XHARBOUR__
#include <hbapicls.h>
#endif

#define ISOPTLOG(n) (HB_ISLOG(n)||HB_ISNIL(n))
#define ISOPTNUM(n) (HB_ISNUM(n)||HB_ISNIL(n))
#define ISOPTCHAR(n) (HB_ISCHAR(n)||HB_ISNIL(n))
#define ISOPTPOINTER(n) (HB_ISPOINTER(n)||HB_ISNIL(n))
#define ISOPTOBJECT(n) (HB_ISOBJECT(n)||HB_ISNIL(n))
#define ISOPTARRAY(n) (HB_ISARRAY(n)||HB_ISNIL(n))

#define ISNUMORNIL(n) (HB_ISNUM(n)||HB_ISNIL(n))
#define ISLOGORNIL(n) (HB_ISLOG(n)||HB_ISNIL(n))

// TOCHECK: for xHarbour compatibility
#ifdef __XHARBOUR__
#define hb_objGetClass(x) HB_OBJ_CLASS(x)
#endif

#endif // QT5XHB_COMMON_H
