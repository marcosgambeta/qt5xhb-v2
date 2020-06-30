%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

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

/*
[1]explicit Q3DTheme(QObject *parent = nullptr)
[2]explicit Q3DTheme(Theme themeType, QObject *parent = nullptr)
[3]explicit Q3DTheme(Q3DThemePrivate *d, Theme themeType, QObject *parent = nullptr) [protected]
*/

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
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~Q3DTheme()
$deleteMethod

%%
%% Q_PROPERTY(Theme type READ type WRITE setType NOTIFY typeChanged)
%%

$prototypeV2=Q3DTheme::Theme type() const

$prototypeV2=void setType( Q3DTheme::Theme themeType )

%%
%% Q_PROPERTY(QList<QColor> baseColors READ baseColors WRITE setBaseColors NOTIFY baseColorsChanged)
%%

$prototypeV2=QList<QColor> baseColors() const

$prototypeV2=void setBaseColors( const QList<QColor> & colors )

%%
%% Q_PROPERTY(QColor backgroundColor READ backgroundColor WRITE setBackgroundColor NOTIFY backgroundColorChanged)
%%

$prototypeV2=QColor backgroundColor() const

$prototypeV2=void setBackgroundColor( const QColor & color )

%%
%% Q_PROPERTY(QColor windowColor READ windowColor WRITE setWindowColor NOTIFY windowColorChanged)
%%

$prototypeV2=QColor windowColor() const

$prototypeV2=void setWindowColor( const QColor & color )

%%
%% Q_PROPERTY(QColor labelTextColor READ labelTextColor WRITE setLabelTextColor NOTIFY labelTextColorChanged)
%%

$prototypeV2=QColor labelTextColor() const

$prototypeV2=void setLabelTextColor( const QColor & color )

%%
%% Q_PROPERTY(QColor labelBackgroundColor READ labelBackgroundColor WRITE setLabelBackgroundColor NOTIFY labelBackgroundColorChanged)
%%

$prototypeV2=QColor labelBackgroundColor() const

$prototypeV2=void setLabelBackgroundColor( const QColor & color )

%%
%% Q_PROPERTY(QColor gridLineColor READ gridLineColor WRITE setGridLineColor NOTIFY gridLineColorChanged)
%%

$prototypeV2=QColor gridLineColor() const

$prototypeV2=void setGridLineColor( const QColor & color )

%%
%% Q_PROPERTY(QColor singleHighlightColor READ singleHighlightColor WRITE setSingleHighlightColor NOTIFY singleHighlightColorChanged)
%%

$prototypeV2=QColor singleHighlightColor() const

$prototypeV2=void setSingleHighlightColor( const QColor & color )

%%
%% Q_PROPERTY(QColor multiHighlightColor READ multiHighlightColor WRITE setMultiHighlightColor NOTIFY multiHighlightColorChanged)
%%

$prototypeV2=QColor multiHighlightColor() const

$prototypeV2=void setMultiHighlightColor( const QColor & color )

%%
%% Q_PROPERTY(QColor lightColor READ lightColor WRITE setLightColor NOTIFY lightColorChanged)
%%

$prototypeV2=QColor lightColor() const

$prototypeV2=void setLightColor( const QColor & color )

%%
%% Q_PROPERTY(QList<QLinearGradient> baseGradients READ baseGradients WRITE setBaseGradients NOTIFY baseGradientsChanged)
%%

$prototypeV2=QList<QLinearGradient> baseGradients() const

$prototypeV2=void setBaseGradients( const QList<QLinearGradient> & gradients )

%%
%% Q_PROPERTY(QLinearGradient singleHighlightGradient READ singleHighlightGradient WRITE setSingleHighlightGradient NOTIFY singleHighlightGradientChanged)
%%

$prototypeV2=QLinearGradient singleHighlightGradient() const

$prototypeV2=void setSingleHighlightGradient( const QLinearGradient & gradient )

%%
%% Q_PROPERTY(QLinearGradient multiHighlightGradient READ multiHighlightGradient WRITE setMultiHighlightGradient NOTIFY multiHighlightGradientChanged)
%%

$prototypeV2=QLinearGradient multiHighlightGradient() const

$prototypeV2=void setMultiHighlightGradient( const QLinearGradient & gradient )

%%
%% Q_PROPERTY(float lightStrength READ lightStrength WRITE setLightStrength NOTIFY lightStrengthChanged)
%%

$prototypeV2=float lightStrength() const

$prototypeV2=void setLightStrength( float strength )

%%
%% Q_PROPERTY(float ambientLightStrength READ ambientLightStrength WRITE setAmbientLightStrength NOTIFY ambientLightStrengthChanged)
%%

$prototypeV2=float ambientLightStrength() const

$prototypeV2=void setAmbientLightStrength( float strength )

%%
%% Q_PROPERTY(float highlightLightStrength READ highlightLightStrength WRITE setHighlightLightStrength NOTIFY highlightLightStrengthChanged)
%%

$prototypeV2=float highlightLightStrength() const

$prototypeV2=void setHighlightLightStrength( float strength )

%%
%% Q_PROPERTY(bool labelBorderEnabled READ isLabelBorderEnabled WRITE setLabelBorderEnabled NOTIFY labelBorderEnabledChanged)
%%

$prototypeV2=bool isLabelBorderEnabled() const

$prototypeV2=void setLabelBorderEnabled( bool enabled )

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

%%
%% Q_PROPERTY(bool backgroundEnabled READ isBackgroundEnabled WRITE setBackgroundEnabled NOTIFY backgroundEnabledChanged)
%%

$prototypeV2=bool isBackgroundEnabled() const

$prototypeV2=void setBackgroundEnabled( bool enabled )

%%
%% Q_PROPERTY(bool gridEnabled READ isGridEnabled WRITE setGridEnabled NOTIFY gridEnabledChanged)
%%

$prototypeV2=bool isGridEnabled() const

$prototypeV2=void setGridEnabled( bool enabled )

%%
%% Q_PROPERTY(bool labelBackgroundEnabled READ isLabelBackgroundEnabled WRITE setLabelBackgroundEnabled NOTIFY labelBackgroundEnabledChanged)
%%

$prototypeV2=bool isLabelBackgroundEnabled() const

$prototypeV2=void setLabelBackgroundEnabled( bool enabled )

%%
%% Q_PROPERTY(ColorStyle colorStyle READ colorStyle WRITE setColorStyle NOTIFY colorStyleChanged)
%%

$prototypeV2=Q3DTheme::ColorStyle colorStyle() const

$prototypeV2=void setColorStyle( Q3DTheme::ColorStyle style )

%%
%%
%%

%%
%% SIGNALS
%%

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
