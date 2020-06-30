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

$prototypeV2=QAbstract3DSeries::SeriesType type() const

%%
%% Q_PROPERTY(QString itemLabelFormat READ itemLabelFormat WRITE setItemLabelFormat NOTIFY itemLabelFormatChanged)
%%

$prototypeV2=QString itemLabelFormat() const

$prototypeV2=void setItemLabelFormat( const QString & format )

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibilityChanged)
%%

$prototypeV2=bool isVisible() const

$prototypeV2=void setVisible( bool visible )

%%
%% Q_PROPERTY(Mesh mesh READ mesh WRITE setMesh NOTIFY meshChanged)
%%

$prototypeV2=QAbstract3DSeries::Mesh mesh() const

$prototypeV2=void setMesh( QAbstract3DSeries::Mesh mesh )

%%
%% Q_PROPERTY(bool meshSmooth READ isMeshSmooth WRITE setMeshSmooth NOTIFY meshSmoothChanged)
%%

$prototypeV2=bool isMeshSmooth() const

$prototypeV2=void setMeshSmooth( bool enable )

%%
%% Q_PROPERTY(QQuaternion meshRotation READ meshRotation WRITE setMeshRotation NOTIFY meshRotationChanged)
%%

$prototypeV2=QQuaternion meshRotation() const

$prototypeV2=void setMeshRotation( const QQuaternion & rotation )

%%
%% Q_PROPERTY(QString userDefinedMesh READ userDefinedMesh WRITE setUserDefinedMesh NOTIFY userDefinedMeshChanged)
%%

$prototypeV2=QString userDefinedMesh() const

$prototypeV2=void setUserDefinedMesh( const QString & fileName )

%%
%% Q_PROPERTY(QtDataVisualization::Q3DTheme::ColorStyle colorStyle READ colorStyle WRITE setColorStyle NOTIFY colorStyleChanged)
%%

$prototypeV2=Q3DTheme::ColorStyle colorStyle() const

$prototypeV2=void setColorStyle( Q3DTheme::ColorStyle style )

%%
%% Q_PROPERTY(QColor baseColor READ baseColor WRITE setBaseColor NOTIFY baseColorChanged)
%%

$prototypeV2=QColor baseColor() const

$prototypeV2=void setBaseColor( const QColor & color )

%%
%% Q_PROPERTY(QLinearGradient baseGradient READ baseGradient WRITE setBaseGradient NOTIFY baseGradientChanged)
%%

$prototypeV2=QLinearGradient baseGradient() const

$prototypeV2=void setBaseGradient( const QLinearGradient & gradient )

%%
%% Q_PROPERTY(QColor singleHighlightColor READ singleHighlightColor WRITE setSingleHighlightColor NOTIFY singleHighlightColorChanged)
%%

$prototypeV2=QColor singleHighlightColor() const

$prototypeV2=void setSingleHighlightColor( const QColor & color )

%%
%% Q_PROPERTY(QLinearGradient singleHighlightGradient READ singleHighlightGradient WRITE setSingleHighlightGradient NOTIFY singleHighlightGradientChanged)
%%

$prototypeV2=QLinearGradient singleHighlightGradient() const

$prototypeV2=void setSingleHighlightGradient( const QLinearGradient & gradient )

%%
%% Q_PROPERTY(QColor multiHighlightColor READ multiHighlightColor WRITE setMultiHighlightColor NOTIFY multiHighlightColorChanged)
%%

$prototypeV2=QColor multiHighlightColor() const

$prototypeV2=void setMultiHighlightColor( const QColor & color )

%%
%% Q_PROPERTY(QLinearGradient multiHighlightGradient READ multiHighlightGradient WRITE setMultiHighlightGradient NOTIFY multiHighlightGradientChanged)
%%

$prototypeV2=QLinearGradient multiHighlightGradient() const

$prototypeV2=void setMultiHighlightGradient( const QLinearGradient & gradient )

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

%%
%% Q_PROPERTY(QString itemLabel READ itemLabel NOTIFY itemLabelChanged REVISION 1)
%%

$prototypeV2=QString itemLabel() const

%%
%% Q_PROPERTY(bool itemLabelVisible READ isItemLabelVisible WRITE setItemLabelVisible NOTIFY itemLabelVisibilityChanged REVISION 1)
%%

$prototypeV2=bool isItemLabelVisible() const

$prototypeV2=void setItemLabelVisible( bool visible )

%%
%%
%%

$prototypeV2=Q_INVOKABLE void setMeshAxisAndAngle( const QVector3D & axis, float angle )

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
