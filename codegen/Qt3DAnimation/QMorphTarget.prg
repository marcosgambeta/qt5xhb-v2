%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

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

$prototype=explicit QMorphTarget(QObject *parent = nullptr)

$deleteMethod

%%
%% Q_PROPERTY(QStringList attributeNames READ attributeNames NOTIFY attributeNamesChanged)
%%

$prototypeV2=QStringList attributeNames() const

%%
%%
%%

$prototypeV2=QVector<Qt3DRender::QAttribute *> attributeList() const

$prototypeV2=void setAttributes( const QVector<Qt3DRender::QAttribute *> & attributes )

$prototypeV2=void addAttribute( Qt3DRender::QAttribute * attribute )

$prototypeV2=void removeAttribute( Qt3DRender::QAttribute * attribute )

$prototypeV2=Q_INVOKABLE static QMorphTarget * fromGeometry( Qt3DRender::QGeometry * geometry, const QStringList & attributes )

%%
%% SIGNALS
%%

$prototype=void attributeNamesChanged( const QStringList & attributeNames )
$signalMethod=|void|attributeNamesChanged|const QStringList &

#pragma ENDDUMP
