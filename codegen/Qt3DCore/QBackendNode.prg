%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBackendNode(Mode mode = ReadOnly)
$constructor=|new|QBackendNode::Mode=QBackendNode::ReadOnly

$prototype=explicit QBackendNode(QBackendNodePrivate &dd) [protected]

$prototype=virtual ~QBackendNode()
$deleteMethod

$prototypeV2=QNodeId peerId() const Q_DECL_NOEXCEPT

$prototypeV2=void setEnabled( bool enabled ) Q_DECL_NOEXCEPT

$prototypeV2=bool isEnabled() const Q_DECL_NOEXCEPT

$prototypeV2=QBackendNode::Mode mode() const Q_DECL_NOEXCEPT

$prototype=void notifyObservers(const QSceneChangePtr &e) [protected]

$prototype=QNodeCommand::CommandId sendCommand(const QString &name, const QVariant &data, QNodeCommand::CommandId replyTo = QNodeCommand::CommandId()) [protected]

$prototype=void sendReply(const QNodeCommandPtr &command) [protected]

$prototype=virtual void sceneChangeEvent(const QSceneChangePtr &e) [protected]

$prototype=void setPeerId(QNodeId id) Q_DECL_NOEXCEPT [private]

$prototype=virtual void initializeFromPeer(const QNodeCreatedChangeBasePtr &change) [private]

$extraMethods

#pragma ENDDUMP
