%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DRender::QGeometryRenderer

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QExtrudedTextMesh(Qt3DCore::QNode *parent = nullptr)

$prototype=~QExtrudedTextMesh()
$deleteMethod

%%
%% Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
%%

$prototype=QString text() const

$prototype=void setText(const QString &text) [slot]

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const

$prototype=void setFont(const QFont &font) [slot]

%%
%% Q_PROPERTY(float depth READ depth WRITE setDepth NOTIFY depthChanged)
%%

$prototype=float depth() const

$prototype=void setDepth(float depth) [slot]

%%
%%
%%

%%
%% SIGNALS
%%

$prototype=void textChanged(const QString &text)

$prototype=void fontChanged(const QFont &font)

$prototype=void depthChanged(float depth)

#pragma ENDDUMP
