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

$prototype=explicit QAbstract3DSeries(QAbstract3DSeriesPrivate *d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstract3DSeries()
$deleteMethod

%%
%% Q_PROPERTY(SeriesType type READ type CONSTANT)
%%

$prototype=SeriesType type() const
$method=|QAbstract3DSeries::SeriesType|type|

%%
%% Q_PROPERTY(QString itemLabelFormat READ itemLabelFormat WRITE setItemLabelFormat NOTIFY itemLabelFormatChanged)
%%

$prototype=QString itemLabelFormat() const
$method=|QString|itemLabelFormat|

$prototype=void setItemLabelFormat(const QString &format)
$method=|void|setItemLabelFormat|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibilityChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

%%
%% Q_PROPERTY(Mesh mesh READ mesh WRITE setMesh NOTIFY meshChanged)
%%

$prototype=Mesh mesh() const
$method=|QAbstract3DSeries::Mesh|mesh|

$prototype=void setMesh(Mesh mesh)
$method=|void|setMesh|QAbstract3DSeries::Mesh

%%
%% Q_PROPERTY(bool meshSmooth READ isMeshSmooth WRITE setMeshSmooth NOTIFY meshSmoothChanged)
%%

$prototype=bool isMeshSmooth() const
$method=|bool|isMeshSmooth|

$prototype=void setMeshSmooth(bool enable)
$method=|void|setMeshSmooth|bool

%%
%% Q_PROPERTY(QQuaternion meshRotation READ meshRotation WRITE setMeshRotation NOTIFY meshRotationChanged)
%%

$prototype=QQuaternion meshRotation() const
$method=|QQuaternion|meshRotation|

$prototype=void setMeshRotation(const QQuaternion &rotation)
$method=|void|setMeshRotation|const QQuaternion &

%%
%% Q_PROPERTY(QString userDefinedMesh READ userDefinedMesh WRITE setUserDefinedMesh NOTIFY userDefinedMeshChanged)
%%

$prototype=QString userDefinedMesh() const
$method=|QString|userDefinedMesh|

$prototype=void setUserDefinedMesh(const QString &fileName)
$method=|void|setUserDefinedMesh|const QString &

%%
%% Q_PROPERTY(QtDataVisualization::Q3DTheme::ColorStyle colorStyle READ colorStyle WRITE setColorStyle NOTIFY colorStyleChanged)
%%

$prototype=Q3DTheme::ColorStyle colorStyle() const
$method=|Q3DTheme::ColorStyle|colorStyle|

$prototype=void setColorStyle(Q3DTheme::ColorStyle style)
$method=|void|setColorStyle|Q3DTheme::ColorStyle

%%
%% Q_PROPERTY(QColor baseColor READ baseColor WRITE setBaseColor NOTIFY baseColorChanged)
%%

$prototype=QColor baseColor() const
$method=|QColor|baseColor|

$prototype=void setBaseColor(const QColor &color)
$method=|void|setBaseColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient baseGradient READ baseGradient WRITE setBaseGradient NOTIFY baseGradientChanged)
%%

$prototype=QLinearGradient baseGradient() const
$method=|QLinearGradient|baseGradient|

$prototype=void setBaseGradient(const QLinearGradient &gradient)
$method=|void|setBaseGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QColor singleHighlightColor READ singleHighlightColor WRITE setSingleHighlightColor NOTIFY singleHighlightColorChanged)
%%

$prototype=QColor singleHighlightColor() const
$method=|QColor|singleHighlightColor|

$prototype=void setSingleHighlightColor(const QColor &color)
$method=|void|setSingleHighlightColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient singleHighlightGradient READ singleHighlightGradient WRITE setSingleHighlightGradient NOTIFY singleHighlightGradientChanged)
%%

$prototype=QLinearGradient singleHighlightGradient() const
$method=|QLinearGradient|singleHighlightGradient|

$prototype=void setSingleHighlightGradient(const QLinearGradient &gradient)
$method=|void|setSingleHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QColor multiHighlightColor READ multiHighlightColor WRITE setMultiHighlightColor NOTIFY multiHighlightColorChanged)
%%

$prototype=QColor multiHighlightColor() const
$method=|QColor|multiHighlightColor|

$prototype=void setMultiHighlightColor(const QColor &color)
$method=|void|setMultiHighlightColor|const QColor &

%%
%% Q_PROPERTY(QLinearGradient multiHighlightGradient READ multiHighlightGradient WRITE setMultiHighlightGradient NOTIFY multiHighlightGradientChanged)
%%

$prototype=QLinearGradient multiHighlightGradient() const
$method=|QLinearGradient|multiHighlightGradient|

$prototype=void setMultiHighlightGradient(const QLinearGradient &gradient)
$method=|void|setMultiHighlightGradient|const QLinearGradient &

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(QString itemLabel READ itemLabel NOTIFY itemLabelChanged REVISION 1)
%%

$prototype=QString itemLabel() const
$method=|QString|itemLabel|

%%
%% Q_PROPERTY(bool itemLabelVisible READ isItemLabelVisible WRITE setItemLabelVisible NOTIFY itemLabelVisibilityChanged REVISION 1)
%%

$prototype=bool isItemLabelVisible() const
$method=|bool|isItemLabelVisible|

$prototype=void setItemLabelVisible(bool visible)
$method=|void|setItemLabelVisible|bool

%%
%%
%%

$prototype=Q_INVOKABLE void setMeshAxisAndAngle(const QVector3D &axis, float angle)
$method=|void|setMeshAxisAndAngle|const QVector3D &,float

%%
%% SIGNALS
%%

$prototype=void baseColorChanged( const QColor & color )
$signalMethod=|void|baseColorChanged|const QColor &

$prototype=void baseGradientChanged( const QLinearGradient & gradient )
$signalMethod=|void|baseGradientChanged|const QLinearGradient &

$prototype=void colorStyleChanged( Q3DTheme::ColorStyle style )
$signalMethod=|void|colorStyleChanged|Q3DTheme::ColorStyle

$prototype=void itemLabelChanged( const QString & label )
$signalMethod=|void|itemLabelChanged|const QString &

$prototype=void itemLabelFormatChanged( const QString & format )
$signalMethod=|void|itemLabelFormatChanged|const QString &

$prototype=void itemLabelVisibilityChanged( bool visible )
$signalMethod=|void|itemLabelVisibilityChanged|bool

$prototype=void meshChanged( QAbstract3DSeries::Mesh mesh )
$signalMethod=|void|meshChanged|QAbstract3DSeries::Mesh

$prototype=void meshRotationChanged( const QQuaternion & rotation )
$signalMethod=|void|meshRotationChanged|const QQuaternion &

$prototype=void meshSmoothChanged( bool enabled )
$signalMethod=|void|meshSmoothChanged|bool

$prototype=void multiHighlightColorChanged( const QColor & color )
$signalMethod=|void|multiHighlightColorChanged|const QColor &

$prototype=void multiHighlightGradientChanged( const QLinearGradient & gradient )
$signalMethod=|void|multiHighlightGradientChanged|const QLinearGradient &

$prototype=void nameChanged( const QString & name )
$signalMethod=|void|nameChanged|const QString &

$prototype=void singleHighlightColorChanged( const QColor & color )
$signalMethod=|void|singleHighlightColorChanged|const QColor &

$prototype=void singleHighlightGradientChanged( const QLinearGradient & gradient )
$signalMethod=|void|singleHighlightGradientChanged|const QLinearGradient &

$prototype=void userDefinedMeshChanged( const QString & fileName )
$signalMethod=|void|userDefinedMeshChanged|const QString &

$prototype=void visibilityChanged( bool visible )
$signalMethod=|void|visibilityChanged|bool

#pragma ENDDUMP
