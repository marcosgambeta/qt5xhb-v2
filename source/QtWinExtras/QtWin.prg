/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QREGION
#endif

CLASS QtWin

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD createMask
   METHOD toHBITMAP
   METHOD fromHBITMAP
   METHOD toHICON
   METHOD imageFromHBITMAP
   METHOD fromHICON
   METHOD toHRGN
   METHOD fromHRGN
   METHOD stringFromHresult
   METHOD errorStringFromHresult
   METHOD colorizationColor
   METHOD realColorizationColor
   METHOD setWindowExcludedFromPeek
   METHOD isWindowExcludedFromPeek
   METHOD setWindowDisallowPeek
   METHOD isWindowPeekDisallowed
   METHOD setWindowFlip3DPolicy
   METHOD windowFlip3DPolicy
   METHOD extendFrameIntoClientArea
   METHOD resetExtendedFrame
   METHOD enableBlurBehindWindow
   METHOD disableBlurBehindWindow
   METHOD isCompositionEnabled
   METHOD setCompositionEnabled
   METHOD isCompositionOpaque
   METHOD setCurrentProcessExplicitAppUserModelID
   METHOD markFullscreenWindow
   METHOD taskbarActivateTab
   METHOD taskbarActivateTabAlt
   METHOD taskbarAddTab
   METHOD taskbarDeleteTab

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QtWin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QtWin>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QtWin>
#endif
#endif

/*
static HBITMAP createMask( const QBitmap & bitmap )
*/
HB_FUNC_STATIC( QTWIN_CREATEMASK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
#endif
    hb_retptr( static_cast< HBITMAP >( QtWin::createMask( *PQBITMAP(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static HBITMAP toHBITMAP( const QPixmap & p, QtWin::HBitmapFormat format = QtWin::HBitmapNoAlpha )
*/
HB_FUNC_STATIC( QTWIN_TOHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && ISQPIXMAP(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
#endif
    hb_retptr( static_cast< HBITMAP >( QtWin::toHBITMAP( *PQPIXMAP(1), HB_ISNIL(2) ? static_cast<QtWin::HBitmapFormat >( QtWin::HBitmapNoAlpha ) : static_cast<QtWin::HBitmapFormat >( hb_parni(2) ) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QPixmap fromHBITMAP( HBITMAP bitmap, QtWin::HBitmapFormat format = QtWin::HBitmapNoAlpha )
*/
HB_FUNC_STATIC( QTWIN_FROMHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && HB_ISPOINTER(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
#endif
    auto ptr = new QPixmap( QtWin::fromHBITMAP( (HBITMAP) hb_parptr(1), HB_ISNIL(2) ? static_cast<QtWin::HBitmapFormat >( QtWin::HBitmapNoAlpha ) : static_cast<QtWin::HBitmapFormat >( hb_parni(2) ) ) );
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static HICON toHICON( const QPixmap & p )
*/
HB_FUNC_STATIC( QTWIN_TOHICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
#endif
    hb_retptr( static_cast< HICON >( QtWin::toHICON( *PQPIXMAP(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QImage imageFromHBITMAP( HDC hdc, HBITMAP bitmap, int width, int height )
*/
HB_FUNC_STATIC( QTWIN_IMAGEFROMHBITMAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(4) && HB_ISPOINTER(1) && HB_ISPOINTER(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
#endif
    auto ptr = new QImage( QtWin::imageFromHBITMAP( (HDC) hb_parptr(1), (HBITMAP) hb_parptr(2), PINT(3), PINT(4) ) );
    Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QPixmap fromHICON( HICON icon )
*/
HB_FUNC_STATIC( QTWIN_FROMHICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISPOINTER(1) )
  {
#endif
    auto ptr = new QPixmap( QtWin::fromHICON( (HICON) hb_parptr(1) ) );
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static HRGN toHRGN( const QRegion & region )
*/
HB_FUNC_STATIC( QTWIN_TOHRGN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
#endif
    hb_retptr( static_cast< HRGN >( QtWin::toHRGN( *PQREGION(1) ) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QRegion fromHRGN( HRGN hrgn )
*/
HB_FUNC_STATIC( QTWIN_FROMHRGN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISPOINTER(1) )
  {
#endif
    auto ptr = new QRegion( QtWin::fromHRGN( (HRGN) hb_parptr(1) ) );
    Qt5xHb::createReturnClass(ptr, "QREGION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QString stringFromHresult( HRESULT hresult )
*/
HB_FUNC_STATIC( QTWIN_STRINGFROMHRESULT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef Q_OS_WIN64
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISPOINTER(1) )
  {
#endif
    RQSTRING( QtWin::stringFromHresult( (HRESULT) hb_parptr(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
#endif
}

/*
static QString errorStringFromHresult( HRESULT hresult )
*/
HB_FUNC_STATIC( QTWIN_ERRORSTRINGFROMHRESULT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef Q_OS_WIN64
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISPOINTER(1) )
  {
#endif
    RQSTRING( QtWin::errorStringFromHresult( (HRESULT) hb_parptr(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
#endif
}

/*
static QColor colorizationColor( bool * opaqueBlend = nullptr )
*/
HB_FUNC_STATIC( QTWIN_COLORIZATIONCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 1) && ( HB_ISLOG(1) || HB_ISNIL(1) ) )
  {
#endif
    bool par1;
    auto ptr = new QColor( QtWin::colorizationColor( &par1 ) );
    Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
    hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QColor realColorizationColor()
*/
HB_FUNC_STATIC( QTWIN_REALCOLORIZATIONCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    auto ptr = new QColor( QtWin::realColorizationColor() );
    Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setWindowExcludedFromPeek( QWindow * window, bool exclude )
*/
HB_FUNC_STATIC( QTWIN_SETWINDOWEXCLUDEDFROMPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQWINDOW(1) && HB_ISLOG(2) )
  {
#endif
    QtWin::setWindowExcludedFromPeek( PQWINDOW(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static bool isWindowExcludedFromPeek( QWindow * window )
*/
HB_FUNC_STATIC( QTWIN_ISWINDOWEXCLUDEDFROMPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    RBOOL( QtWin::isWindowExcludedFromPeek( PQWINDOW(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setWindowDisallowPeek( QWindow * window, bool disallow )
*/
HB_FUNC_STATIC( QTWIN_SETWINDOWDISALLOWPEEK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQWINDOW(1) && HB_ISLOG(2) )
  {
#endif
    QtWin::setWindowDisallowPeek( PQWINDOW(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static bool isWindowPeekDisallowed( QWindow * window )
*/
HB_FUNC_STATIC( QTWIN_ISWINDOWPEEKDISALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    RBOOL( QtWin::isWindowPeekDisallowed( PQWINDOW(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setWindowFlip3DPolicy( QWindow * window, QtWin::WindowFlip3DPolicy policy )
*/
HB_FUNC_STATIC( QTWIN_SETWINDOWFLIP3DPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQWINDOW(1) && HB_ISNUM(2) )
  {
#endif
    QtWin::setWindowFlip3DPolicy( PQWINDOW(1), static_cast<QtWin::WindowFlip3DPolicy>( hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static QtWin::WindowFlip3DPolicy windowFlip3DPolicy( QWindow * )
*/
HB_FUNC_STATIC( QTWIN_WINDOWFLIP3DPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    RENUM( QtWin::windowFlip3DPolicy( PQWINDOW(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA )
{
  if( ISNUMPAR(5) && ISQWINDOW(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
  {
    /*
    static void extendFrameIntoClientArea( QWindow * window, int left, int top, int right, int bottom )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))

    QtWin::extendFrameIntoClientArea( PQWINDOW(1), PINT(2), PINT(3), PINT(4), PINT(5) );

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(2) && ISQWINDOW(1) && ISQMARGINS(2) )
  {
    /*
    static void extendFrameIntoClientArea( QWindow * window, const QMargins & margins )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))

    QtWin::extendFrameIntoClientArea( PQWINDOW(1), *PQMARGINS(2) );

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static void resetExtendedFrame( QWindow * window )
*/
HB_FUNC_STATIC( QTWIN_RESETEXTENDEDFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::resetExtendedFrame( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW )
{
  if( ISNUMPAR(1) && ISQWINDOW(1) && ISQREGION(2) )
  {
    /*
    static void enableBlurBehindWindow( QWindow * window, const QRegion & region )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))

    QtWin::enableBlurBehindWindow( PQWINDOW(1), *PQREGION(2) );

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    /*
    static void enableBlurBehindWindow( QWindow * window )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))

    QtWin::enableBlurBehindWindow( PQWINDOW(1) );

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static void disableBlurBehindWindow( QWindow * window )
*/
HB_FUNC_STATIC( QTWIN_DISABLEBLURBEHINDWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::disableBlurBehindWindow( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static bool isCompositionEnabled()
*/
HB_FUNC_STATIC( QTWIN_ISCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QtWin::isCompositionEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setCompositionEnabled( bool enabled )
*/
HB_FUNC_STATIC( QTWIN_SETCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
#endif
    QtWin::setCompositionEnabled( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static bool isCompositionOpaque()
*/
HB_FUNC_STATIC( QTWIN_ISCOMPOSITIONOPAQUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QtWin::isCompositionOpaque() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setCurrentProcessExplicitAppUserModelID( const QString & id )
*/
HB_FUNC_STATIC( QTWIN_SETCURRENTPROCESSEXPLICITAPPUSERMODELID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QtWin::setCurrentProcessExplicitAppUserModelID( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void markFullscreenWindow( QWindow *, bool fullscreen = true )
*/
HB_FUNC_STATIC( QTWIN_MARKFULLSCREENWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1, 2) && ISQWINDOW(1) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
  {
#endif
    QtWin::markFullscreenWindow( PQWINDOW(1), OPBOOL( 2, true ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void taskbarActivateTab( QWindow * )
*/
HB_FUNC_STATIC( QTWIN_TASKBARACTIVATETAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::taskbarActivateTab( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void taskbarActivateTabAlt( QWindow * )
*/
HB_FUNC_STATIC( QTWIN_TASKBARACTIVATETABALT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::taskbarActivateTabAlt( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void taskbarAddTab( QWindow * )
*/
HB_FUNC_STATIC( QTWIN_TASKBARADDTAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::taskbarAddTab( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void taskbarDeleteTab( QWindow * )
*/
HB_FUNC_STATIC( QTWIN_TASKBARDELETETAB )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
#endif
    QtWin::taskbarDeleteTab( PQWINDOW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC( QTWIN_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTWIN_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTWIN_NEWFROM );
}

HB_FUNC_STATIC( QTWIN_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTWIN_NEWFROM );
}

HB_FUNC_STATIC( QTWIN_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QTWIN_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
