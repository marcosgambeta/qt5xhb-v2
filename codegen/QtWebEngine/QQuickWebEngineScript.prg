%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QString name() const
$method=|QString|name|

$prototype=Q_INVOKABLE void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(QUrl sourceUrl READ sourceUrl WRITE setSourceUrl NOTIFY sourceUrlChanged FINAL)
%%

$prototype=QUrl sourceUrl() const
$method=|QUrl|sourceUrl|

$prototype=Q_INVOKABLE void setSourceUrl(const QUrl &url)
$method=|void|setSourceUrl|const QUrl &

%%
%% Q_PROPERTY(QString sourceCode READ sourceCode WRITE setSourceCode NOTIFY sourceCodeChanged FINAL)
%%

$prototype=QString sourceCode() const
$method=|QString|sourceCode|

$prototype=Q_INVOKABLE void setSourceCode(const QString &code)
$method=|void|setSourceCode|const QString &

%%
%% Q_PROPERTY(InjectionPoint injectionPoint READ injectionPoint WRITE setInjectionPoint NOTIFY injectionPointChanged FINAL)
%%

$prototype=InjectionPoint injectionPoint() const
$method=|QQuickWebEngineScript::InjectionPoint|injectionPoint|

$prototype=Q_INVOKABLE void setInjectionPoint(InjectionPoint injectionPoint)
$method=|void|setInjectionPoint|QQuickWebEngineScript::InjectionPoint

%%
%% Q_PROPERTY(ScriptWorldId worldId READ worldId WRITE setWorldId NOTIFY worldIdChanged FINAL)
%%

$prototype=ScriptWorldId worldId() const
$method=|QQuickWebEngineScript::ScriptWorldId|worldId|

$prototype=Q_INVOKABLE void setWorldId(ScriptWorldId scriptWorldId)
$method=|void|setWorldId|QQuickWebEngineScript::ScriptWorldId

%%
%% Q_PROPERTY(bool runOnSubframes READ runOnSubframes WRITE setRunOnSubframes NOTIFY runOnSubframesChanged FINAL)
%%

$prototype=bool runOnSubframes() const
$method=|bool|runOnSubframes|

$prototype=Q_INVOKABLE void setRunOnSubframes(bool on)
$method=|void|setRunOnSubframes|bool

%%
%%
%%

$prototype=Q_INVOKABLE QString toString() const
$method=|QString|toString|

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
