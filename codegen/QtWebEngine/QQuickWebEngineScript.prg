%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine
$added=5,9,0

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

$prototype=explicit QQuickWebEngineScript(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QQuickWebEngineScript()
$deleteMethod

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged FINAL)
%%

$prototypeV2=QString name() const

$prototype=Q_INVOKABLE void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(QUrl sourceUrl READ sourceUrl WRITE setSourceUrl NOTIFY sourceUrlChanged FINAL)
%%

$prototypeV2=QUrl sourceUrl() const

$prototype=Q_INVOKABLE void setSourceUrl(const QUrl &url)
$method=|void|setSourceUrl|const QUrl &

%%
%% Q_PROPERTY(QString sourceCode READ sourceCode WRITE setSourceCode NOTIFY sourceCodeChanged FINAL)
%%

$prototypeV2=QString sourceCode() const

$prototype=Q_INVOKABLE void setSourceCode(const QString &code)
$method=|void|setSourceCode|const QString &

%%
%% Q_PROPERTY(InjectionPoint injectionPoint READ injectionPoint WRITE setInjectionPoint NOTIFY injectionPointChanged FINAL)
%%

$prototypeV2=QQuickWebEngineScript::InjectionPoint injectionPoint() const

$prototype=Q_INVOKABLE void setInjectionPoint(InjectionPoint injectionPoint)
$method=|void|setInjectionPoint|QQuickWebEngineScript::InjectionPoint

%%
%% Q_PROPERTY(ScriptWorldId worldId READ worldId WRITE setWorldId NOTIFY worldIdChanged FINAL)
%%

$prototypeV2=QQuickWebEngineScript::ScriptWorldId worldId() const

$prototype=Q_INVOKABLE void setWorldId(ScriptWorldId scriptWorldId)
$method=|void|setWorldId|QQuickWebEngineScript::ScriptWorldId

%%
%% Q_PROPERTY(bool runOnSubframes READ runOnSubframes WRITE setRunOnSubframes NOTIFY runOnSubframesChanged FINAL)
%%

$prototypeV2=bool runOnSubframes() const

$prototype=Q_INVOKABLE void setRunOnSubframes(bool on)
$method=|void|setRunOnSubframes|bool

%%
%%
%%

$prototypeV2=Q_INVOKABLE QString toString() const

%%
%% SIGNALS
%%

$prototype=void injectionPointChanged( QQuickWebEngineScript::InjectionPoint injectionPoint )
$signalMethod=|void|injectionPointChanged|QQuickWebEngineScript::InjectionPoint

$prototype=void nameChanged( const QString & name )
$signalMethod=|void|nameChanged|const QString &

$prototype=void runOnSubframesChanged( bool on )
$signalMethod=|void|runOnSubframesChanged|bool

$prototype=void sourceCodeChanged( const QString & code )
$signalMethod=|void|sourceCodeChanged|const QString &

$prototype=void sourceUrlChanged( const QUrl & url )
$signalMethod=|void|sourceUrlChanged|const QUrl &

$prototype=void worldIdChanged( QQuickWebEngineScript::ScriptWorldId scriptWorldId )
$signalMethod=|void|worldIdChanged|QQuickWebEngineScript::ScriptWorldId

#pragma ENDDUMP
