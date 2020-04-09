%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCommonStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QProxyStyle(QStyle *style = nullptr)
$internalConstructor=|new1|QStyle *=nullptr

$prototype=QProxyStyle(const QString &key)
$internalConstructor=|new2|const QString &

/*
[1]QProxyStyle(QStyle *style = nullptr)
[2]QProxyStyle(const QString &key)
*/

HB_FUNC_STATIC( QPROXYSTYLE_NEW )
{
  if( ISBETWEEN(0,1) && (ISOBJECT(1)||ISNIL(1)) )
  {
    QProxyStyle_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProxyStyle_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStyle *baseStyle() const
$method=|QStyle *|baseStyle|

$prototype=void setBaseStyle(QStyle *style)
$method=|void|setBaseStyle|QStyle *

$prototype=void drawPrimitive(PrimitiveElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = nullptr) const
$method=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=nullptr

$prototype=void drawControl(ControlElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = nullptr) const
$method=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=nullptr

$prototype=void drawComplexControl(ComplexControl control, const QStyleOptionComplex *option, QPainter *painter, const QWidget *widget = nullptr) const
$method=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=nullptr

$prototype=void drawItemText(QPainter *painter, const QRect &rect, int flags, const QPalette &pal, bool enabled,const QString &text, QPalette::ColorRole textRole = QPalette::NoRole) const
$method=|void|drawItemText|QPainter *,const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

$prototype=virtual void drawItemPixmap(QPainter *painter, const QRect &rect, int alignment, const QPixmap &pixmap) const
$virtualMethod=|void|drawItemPixmap|QPainter *,const QRect &,int,const QPixmap &

$prototype=QSize sizeFromContents(ContentsType type, const QStyleOption *option, const QSize &size, const QWidget *widget) const
$method=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *

$prototype=QRect subElementRect(SubElement element, const QStyleOption *option, const QWidget *widget) const
$method=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *

$prototype=QRect subControlRect(ComplexControl cc, const QStyleOptionComplex *opt, SubControl sc, const QWidget *widget) const
$method=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *

$prototype=QRect itemTextRect(const QFontMetrics &fm, const QRect &r, int flags, bool enabled, const QString &text) const
$method=|QRect|itemTextRect|const QFontMetrics &,const QRect &,int,bool,const QString &

$prototype=QRect itemPixmapRect(const QRect &r, int flags, const QPixmap &pixmap) const
$method=|QRect|itemPixmapRect|const QRect &,int,const QPixmap &

$prototype=SubControl hitTestComplexControl(ComplexControl control, const QStyleOptionComplex *option, const QPoint &pos, const QWidget *widget = nullptr) const
$method=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=nullptr

$prototype=int styleHint(StyleHint hint, const QStyleOption *option = nullptr, const QWidget *widget = nullptr, QStyleHintReturn *returnData = nullptr) const
$method=|int|styleHint|QStyle::StyleHint,const QStyleOption *=nullptr,const QWidget *=nullptr,QStyleHintReturn *=nullptr

$prototype=int pixelMetric(PixelMetric metric, const QStyleOption *option = nullptr, const QWidget *widget = nullptr) const
$method=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=nullptr,const QWidget *=nullptr

$prototype=int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2,Qt::Orientation orientation, const QStyleOption *option = nullptr, const QWidget *widget = nullptr) const
$method=|int|layoutSpacing|QSizePolicy::ControlType,QSizePolicy::ControlType,Qt::Orientation,const QStyleOption *=nullptr,const QWidget *=nullptr

$prototype=QIcon standardIcon(StandardPixmap standardIcon, const QStyleOption *option = nullptr, const QWidget *widget = nullptr) const
$method=|QIcon|standardIcon|QStyle::StandardPixmap,const QStyleOption *=nullptr,const QWidget *=nullptr

$prototype=QPixmap standardPixmap(StandardPixmap standardPixmap, const QStyleOption *opt, const QWidget *widget = nullptr) const
$method=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=nullptr

$prototype=QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap &pixmap, const QStyleOption *opt) const
$method=|QPixmap|generatedIconPixmap|QIcon::Mode,const QPixmap &,const QStyleOption *

$prototype=QPalette standardPalette() const
$method=|QPalette|standardPalette|

$prototype=void polish(QWidget *widget)
$internalMethod=|void|polish,polish1|QWidget *

$prototype=void polish(QPalette &pal)
$internalMethod=|void|polish,polish2|QPalette &

$prototype=void polish(QApplication *app)
$internalMethod=|void|polish,polish3|QApplication *

/*
[1]void polish(QWidget *widget)
[2]void polish(QPalette &pal)
[3]void polish(QApplication *app)
*/

HB_FUNC_STATIC( QPROXYSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QProxyStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QProxyStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QProxyStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=polish

$prototype=void unpolish(QWidget *widget)
$internalMethod=|void|unpolish,unpolish1|QWidget *

$prototype=void unpolish(QApplication *app)
$internalMethod=|void|unpolish,unpolish2|QApplication *

/*
[1]void unpolish(QWidget *widget)
[2]void unpolish(QApplication *app)
*/

HB_FUNC_STATIC( QPROXYSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QProxyStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QProxyStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unpolish

#pragma ENDDUMP
