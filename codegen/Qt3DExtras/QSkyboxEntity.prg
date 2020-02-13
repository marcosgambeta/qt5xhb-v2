%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QEntity

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSkyboxEntity(Qt3DCore::QNode *parent = nullptr)

$prototype=~QSkyboxEntity()
$deleteMethod

%%
%% Q_PROPERTY(QString baseName READ baseName WRITE setBaseName NOTIFY baseNameChanged)
%%

$prototype=QString baseName() const
$prototype=void setBaseName(const QString &path) [slot]

%%
%% Q_PROPERTY(QString extension READ extension WRITE setExtension NOTIFY extensionChanged)
%%

$prototype=QString extension() const
$prototype=void setExtension(const QString &extension) [slot]

%%
%% Q_PROPERTY(bool gammaCorrect READ isGammaCorrectEnabled WRITE setGammaCorrectEnabled NOTIFY gammaCorrectEnabledChanged REVISION 9)
%%

$prototype=bool isGammaCorrectEnabled() const
$prototype=void setGammaCorrectEnabled(bool enabled) [slot]

%%
%% SIGNALS
%%

$prototype=void baseNameChanged(const QString &path)
$prototype=void extensionChanged(const QString &extension)
$prototype=void gammaCorrectEnabledChanged(bool enabled)

#pragma ENDDUMP
