%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DTheme(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit Q3DTheme(Theme themeType, QObject *parent = nullptr)
$internalConstructor=|new2|Q3DTheme::Theme,QObject *=nullptr

$prototype=explicit Q3DTheme(Q3DThemePrivate *d, Theme themeType, QObject *parent = nullptr) [protected]

//[1]explicit Q3DTheme(QObject *parent = nullptr)
//[2]explicit Q3DTheme(Theme themeType, QObject *parent = nullptr)
//[3]explicit Q3DTheme(Q3DThemePrivate *d, Theme themeType, QObject *parent = nullptr) [protected]

HB_FUNC_STATIC( Q3DTHEME_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DTheme_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    Q3DTheme_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~Q3DTheme()
$deleteMethod

%%
%% Q_PROPERTY(Theme type READ type WRITE setType NOTIFY typeChanged)
%%

$prototype=Theme type() const
$method=|Q3DTheme::Theme|type|

$prototype=void setType(Theme themeType)
$method=|void|setType|Q3DTheme::Theme

%%
%% Q_PROPERTY(QList<QColor> baseColors READ baseColors WRITE setBaseColors NOTIFY baseColorsChanged)
%%

$prototype=QList<QColor> baseColors() const
$method=|QList<QColor>|baseColors|

$prototype=void setBaseColors(const QList<QColor> &colors)
$method=|void|setBaseColors|const QList<QColor> &

%%
%% Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged)
%%

$prototype=QColor backgroundColor() const
$method=|QColor|backgroundColor|

$prototype=void setBackgroundColor(const QColor &color)
$method=|void|setBackgroundColor|const QColor &

%%
%% Q_PROPERTY(QColor windowColor READ windowColor WRITE setWindowColor NOTIFY windowColorChanged)
%%

$prototype=QColor windowColor() const
$method=|QColor|windowColor|

$prototype=void setWindowColor(const QColor &color)
$method=|void|setWindowColor|const QColor &

%%
%% Q_PROPERTY(QColor labelTextColor READ labelTextColor WRITE setLabelTextColor NOTIFY labelTextColorChanged)
%%

$prototype=QColor labelTextColor() const
$method=|QColor|labelTextColor|

$prototype=void setLabelTextColor(const QColor &color)
$method=|void|setLabelTextColor|const QColor &

%%
%% Q_PROPERTY(QColor labelBackgroundColor READ labelBackgroundColor WRITE setLabelBackgroundColor NOTIFY labelBackgroundColorChanged)
%%

$prototype=QColor labelBackgroundColor() const
$method=|QColor|labelBackgroundColor|

$prototype=void setLabelBackgroundColor(const QColor &color)
$method=|void|setLabelBackgroundColor|const QColor &

%%
%% Q_PROPERTY(QColor gridLineColor READ gridLineColor WRITE setGridLineColor NOTIFY gridLineColorChanged)
%%

$prototype=QColor gridLineColor() const
$method=|QColor|gridLineColor|

$prototype=void setGridLineColor(const QColor &color)
$method=|void|setGridLineColor|const QColor &

%%
%% Q_PROPERTY(QColor singleHighlightColor READ singleHighlightColor WRITE setSingleHighlightColor NOTIFY singleHighlightColorChanged)
%%

$prototype=QColor singleHighlightColor() const
$method=|QColor|singleHighlightColor|

$prototype=void setSingleHighlightColor(const QColor &color)
$method=|void|setSingleHighlightColor|const QColor &

%%
%% Q_PROPERTY(QColor multiHighlightColor READ multiHighlightColor WRITE setMultiHighlightColor NOTIFY multiHighlightColorChanged)
%%

$prototype=QColor multiHighlightColor() const
$method=|QColor|multiHighlightColor|

$prototype=void setMultiHighlightColor(const QColor &color)
$method=|void|setMultiHighlightColor|const QColor &

%%
%% Q_PROPERTY(QColor lightColor READ lightColor WRITE setLightColor NOTIFY lightColorChanged)
%%

$prototype=QColor lightColor() const
$method=|QColor|lightColor|

$prototype=void setLightColor(const QColor &color)
$method=|void|setLightColor|const QColor &

%%
%% Q_PROPERTY(QList<QLinearGradient> baseGradients READ baseGradients WRITE setBaseGradients NOTIFY baseGradientsChanged)
%%

$prototype=QList<QLinearGradient> baseGradients() const
$method=|QList<QLinearGradient>|baseGradients|

$prototype=void setBaseGradients(const QList<QLinearGradient> &gradients)
$method=|void|setBaseGradients|const QList<QLinearGradient> &

%%
%% Q_PROPERTY(QLinearGradient singleHighlightGradient READ singleHighlightGradient WRITE setSingleHighlightGradient NOTIFY singleHighlightGradientChanged)
%%

$prototype=QLinearGradient singleHighlightGradient() const
$method=|QLinearGradient|singleHighlightGradient|

$prototype=void setSingleHighlightGradient(const QLinearGradient &gradient)
$method=|void|setSingleHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QLinearGradient multiHighlightGradient READ multiHighlightGradient WRITE setMultiHighlightGradient NOTIFY multiHighlightGradientChanged)
%%

$prototype=QLinearGradient multiHighlightGradient() const
$method=|QLinearGradient|multiHighlightGradient|

$prototype=void setMultiHighlightGradient(const QLinearGradient &gradient)
$method=|void|setMultiHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(float lightStrength READ lightStrength WRITE setLightStrength NOTIFY lightStrengthChanged)
%%

$prototype=float lightStrength() const
$method=|float|lightStrength|

$prototype=void setLightStrength(float strength)
$method=|void|setLightStrength|float

%%
%% Q_PROPERTY(float ambientLightStrength READ ambientLightStrength WRITE setAmbientLightStrength NOTIFY ambientLightStrengthChanged)
%%

$prototype=float ambientLightStrength() const
$method=|float|ambientLightStrength|

$prototype=void setAmbientLightStrength(float strength)
$method=|void|setAmbientLightStrength|float

%%
%% Q_PROPERTY(float highlightLightStrength READ highlightLightStrength WRITE setHighlightLightStrength NOTIFY highlightLightStrengthChanged)
%%

$prototype=float highlightLightStrength() const
$method=|float|highlightLightStrength|

$prototype=void setHighlightLightStrength(float strength)
$method=|void|setHighlightLightStrength|float

%%
%% Q_PROPERTY(bool labelBorderEnabled READ isLabelBorderEnabled WRITE setLabelBorderEnabled NOTIFY labelBorderEnabledChanged)
%%

$prototype=bool isLabelBorderEnabled() const
$method=|bool|isLabelBorderEnabled|

$prototype=void setLabelBorderEnabled(bool enabled)
$method=|void|setLabelBorderEnabled|bool

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

%%
%% Q_PROPERTY(bool backgroundEnabled READ isBackgroundEnabled WRITE setBackgroundEnabled NOTIFY backgroundEnabledChanged)
%%

$prototype=bool isBackgroundEnabled() const
$method=|bool|isBackgroundEnabled|

$prototype=void setBackgroundEnabled(bool enabled)
$method=|void|setBackgroundEnabled|bool

%%
%% Q_PROPERTY(bool gridEnabled READ isGridEnabled WRITE setGridEnabled NOTIFY gridEnabledChanged)
%%

$prototype=bool isGridEnabled() const
$method=|bool|isGridEnabled|

$prototype=void setGridEnabled(bool enabled)
$method=|void|setGridEnabled|bool

%%
%% Q_PROPERTY(bool labelBackgroundEnabled READ isLabelBackgroundEnabled WRITE setLabelBackgroundEnabled NOTIFY labelBackgroundEnabledChanged)
%%

$prototype=bool isLabelBackgroundEnabled() const
$method=|bool|isLabelBackgroundEnabled|

$prototype=void setLabelBackgroundEnabled(bool enabled)
$method=|void|setLabelBackgroundEnabled|bool

%%
%% Q_PROPERTY(ColorStyle colorStyle READ colorStyle WRITE setColorStyle NOTIFY colorStyleChanged)
%%

$prototype=ColorStyle colorStyle() const
$method=|Q3DTheme::ColorStyle|colorStyle|

$prototype=void setColorStyle(ColorStyle style)
$method=|void|setColorStyle|Q3DTheme::ColorStyle

%%
%%
%%

%%
%% SIGNALS
%%

using namespace QtDataVisualization;

$prototype=void ambientLightStrengthChanged( float strength )
$signalMethod=|void|ambientLightStrengthChanged|float

$prototype=void backgroundColorChanged( const QColor & color )
$signalMethod=|void|backgroundColorChanged|const QColor &

$prototype=void backgroundEnabledChanged( bool enabled )
$signalMethod=|void|backgroundEnabledChanged|bool

$prototype=void baseColorsChanged( const QList<QColor> & colors )
$signalMethod=|void|baseColorsChanged|const QList<QColor> &

$prototype=void baseGradientsChanged( const QList<QLinearGradient> & gradients )
$signalMethod=|void|baseGradientsChanged|const QList<QLinearGradient> &

$prototype=void colorStyleChanged( Q3DTheme::ColorStyle style )
$signalMethod=|void|colorStyleChanged|Q3DTheme::ColorStyle

$prototype=void fontChanged( const QFont & font )
$signalMethod=|void|fontChanged|const QFont &

$prototype=void gridEnabledChanged( bool enabled )
$signalMethod=|void|gridEnabledChanged|bool

$prototype=void gridLineColorChanged( const QColor & color )
$signalMethod=|void|gridLineColorChanged|const QColor &

$prototype=void highlightLightStrengthChanged( float strength )
$signalMethod=|void|highlightLightStrengthChanged|float

$prototype=void labelBackgroundColorChanged( const QColor & color )
$signalMethod=|void|labelBackgroundColorChanged|const QColor &

$prototype=void labelBackgroundEnabledChanged( bool enabled )
$signalMethod=|void|labelBackgroundEnabledChanged|bool

$prototype=void labelBorderEnabledChanged( bool enabled )
$signalMethod=|void|labelBorderEnabledChanged|bool

$prototype=void labelTextColorChanged( const QColor & color )
$signalMethod=|void|labelTextColorChanged|const QColor &

$prototype=void lightColorChanged( const QColor & color )
$signalMethod=|void|lightColorChanged|const QColor &

$prototype=void lightStrengthChanged( float strength )
$signalMethod=|void|lightStrengthChanged|float

$prototype=void multiHighlightColorChanged( const QColor & color )
$signalMethod=|void|multiHighlightColorChanged|const QColor &

$prototype=void multiHighlightGradientChanged( const QLinearGradient & gradient )
$signalMethod=|void|multiHighlightGradientChanged|const QLinearGradient &

$prototype=void singleHighlightColorChanged( const QColor & color )
$signalMethod=|void|singleHighlightColorChanged|const QColor &

$prototype=void singleHighlightGradientChanged( const QLinearGradient & gradient )
$signalMethod=|void|singleHighlightGradientChanged|const QLinearGradient &

$prototype=void typeChanged( Q3DTheme::Theme themeType )
$signalMethod=|void|typeChanged|Q3DTheme::Theme

$prototype=void windowColorChanged( const QColor & color )
$signalMethod=|void|windowColorChanged|const QColor &

#pragma ENDDUMP
