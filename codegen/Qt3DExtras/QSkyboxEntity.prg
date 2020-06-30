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

$prototypeV2=QString baseName() const

$prototypeV2=void setBaseName( const QString & path ) [slot]

%%
%% Q_PROPERTY(QString extension READ extension WRITE setExtension NOTIFY extensionChanged)
%%

$prototypeV2=QString extension() const

$prototypeV2=void setExtension( const QString & extension ) [slot]

%%
%% Q_PROPERTY(bool gammaCorrect READ isGammaCorrectEnabled WRITE setGammaCorrectEnabled NOTIFY gammaCorrectEnabledChanged REVISION 9)
%%

$prototypeV2=bool isGammaCorrectEnabled() const

$prototypeV2=void setGammaCorrectEnabled( bool enabled ) [slot]

%%
%% SIGNALS
%%

$prototype=void baseNameChanged(const QString &path)
$prototype=void extensionChanged(const QString &extension)
$prototype=void gammaCorrectEnabledChanged(bool enabled)

#pragma ENDDUMP
