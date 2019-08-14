%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static HBITMAP createMask(const QBitmap &bitmap)
$staticMethod=|HBITMAP|createMask|const QBitmap &

$prototype=static HBITMAP toHBITMAP(const QPixmap &p, HBitmapFormat format = HBitmapNoAlpha)
$staticMethod=|HBITMAP|toHBITMAP|const QPixmap &,QtWin::HBitmapFormat=QtWin::HBitmapNoAlpha

$prototype=static QPixmap fromHBITMAP(HBITMAP bitmap, HBitmapFormat format = HBitmapNoAlpha)
$staticMethod=|QPixmap|fromHBITMAP|HBITMAP,QtWin::HBitmapFormat=QtWin::HBitmapNoAlpha

$prototype=static HICON toHICON(const QPixmap &p)
$staticMethod=|HICON|toHICON|const QPixmap &

$prototype=static QImage imageFromHBITMAP(HDC hdc, HBITMAP bitmap, int width, int height)
$staticMethod=|QImage|imageFromHBITMAP|HDC,HBITMAP,int,int

$prototype=static QPixmap fromHICON(HICON icon)
$staticMethod=|QPixmap|fromHICON|HICON

$prototype=static HRGN toHRGN(const QRegion &region)
$staticMethod=|HRGN|toHRGN|const QRegion &

$prototype=static QRegion fromHRGN(HRGN hrgn)
$staticMethod=|QRegion|fromHRGN|HRGN

$prototype=static QString stringFromHresult(HRESULT hresult)
$staticMethod=|QString|stringFromHresult|HRESULT|#ifndef Q_OS_WIN64

$prototype=static QString errorStringFromHresult(HRESULT hresult)
$staticMethod=|QString|errorStringFromHresult|HRESULT|#ifndef Q_OS_WIN64

$prototype=static QColor colorizationColor(bool *opaqueBlend = nullptr)
$staticMethod=|QColor|colorizationColor|bool *=nullptr

$prototype=static QColor realColorizationColor()
$staticMethod=|QColor|realColorizationColor|

$prototype=static void setWindowExcludedFromPeek(QWindow *window, bool exclude)
$staticMethod=|void|setWindowExcludedFromPeek|QWindow *,bool

$prototype=static bool isWindowExcludedFromPeek(QWindow *window)
$staticMethod=|bool|isWindowExcludedFromPeek|QWindow *

$prototype=static void setWindowDisallowPeek(QWindow *window, bool disallow)
$staticMethod=|void|setWindowDisallowPeek|QWindow *,bool

$prototype=static bool isWindowPeekDisallowed(QWindow *window)
$staticMethod=|bool|isWindowPeekDisallowed|QWindow *

$prototype=static void setWindowFlip3DPolicy(QWindow *window, WindowFlip3DPolicy policy)
$staticMethod=|void|setWindowFlip3DPolicy|QWindow *,QtWin::WindowFlip3DPolicy

$prototype=static WindowFlip3DPolicy windowFlip3DPolicy(QWindow *)
$staticMethod=|QtWin::WindowFlip3DPolicy|windowFlip3DPolicy|QWindow *

$prototype=static void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
$internalStaticMethod=|void|extendFrameIntoClientArea,extendFrameIntoClientArea1|QWindow *,int,int,int,int

$prototype=static void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)
$internalStaticMethod=|void|extendFrameIntoClientArea,extendFrameIntoClientArea2|QWindow *,const QMargins &

//[1]void extendFrameIntoClientArea(QWindow *window, int left, int top, int right, int bottom)
//[2]void extendFrameIntoClientArea(QWindow *window, const QMargins &margins)

HB_FUNC_STATIC( QTWIN_EXTENDFRAMEINTOCLIENTAREA )
{
  if( ISNUMPAR(5) && ISQWINDOW(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QtWin_extendFrameIntoClientArea1();
  }
  else if( ISNUMPAR(2) && ISQWINDOW(1) && ISQMARGINS(2) )
  {
    QtWin_extendFrameIntoClientArea2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=extendFrameIntoClientArea

$prototype=static void resetExtendedFrame(QWindow *window)
$staticMethod=|void|resetExtendedFrame|QWindow *

$prototype=static void enableBlurBehindWindow(QWindow *window, const QRegion &region)
$internalStaticMethod=|void|enableBlurBehindWindow,enableBlurBehindWindow1|QWindow *,const QRegion &

$prototype=static void enableBlurBehindWindow(QWindow *window)
$internalStaticMethod=|void|enableBlurBehindWindow,enableBlurBehindWindow2|QWindow *

//[1]void enableBlurBehindWindow(QWindow *window, const QRegion &region)
//[2]void enableBlurBehindWindow(QWindow *window)

HB_FUNC_STATIC( QTWIN_ENABLEBLURBEHINDWINDOW )
{
  if( ISNUMPAR(1) && ISQWINDOW(1) && ISQREGION(2) )
  {
    QtWin_enableBlurBehindWindow1();
  }
  else if( ISNUMPAR(1) && ISQWINDOW(1) )
  {
    QtWin_enableBlurBehindWindow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=enableBlurBehindWindow

$prototype=static void disableBlurBehindWindow(QWindow *window)
$staticMethod=|void|disableBlurBehindWindow|QWindow *

$prototype=static bool isCompositionEnabled()
$staticMethod=|bool|isCompositionEnabled|

$prototype=static void setCompositionEnabled(bool enabled)
$staticMethod=|void|setCompositionEnabled|bool

$prototype=static bool isCompositionOpaque()
$staticMethod=|bool|isCompositionOpaque|

$prototype=static void setCurrentProcessExplicitAppUserModelID(const QString &id)
$staticMethod=|void|setCurrentProcessExplicitAppUserModelID|const QString &

$prototype=static void markFullscreenWindow(QWindow *, bool fullscreen = true)
$staticMethod=|void|markFullscreenWindow|QWindow *,bool=true

$prototype=static void taskbarActivateTab(QWindow *)
$staticMethod=|void|taskbarActivateTab|QWindow *

$prototype=static void taskbarActivateTabAlt(QWindow *)
$staticMethod=|void|taskbarActivateTabAlt|QWindow *

$prototype=static void taskbarAddTab(QWindow *)
$staticMethod=|void|taskbarAddTab|QWindow *

$prototype=static void taskbarDeleteTab(QWindow *)
$staticMethod=|void|taskbarDeleteTab|QWindow *

$extraMethods

#pragma ENDDUMP
