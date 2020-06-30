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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QNode(QNode *parent = nullptr)
$constructor=|new|QNode *=nullptr

$prototype=explicit QNode(QNodePrivate &dd, QNode *parent = nullptr) [protected]

$prototype=virtual ~QNode()
$deleteMethod

%%
%% Q_PROPERTY(Qt3DCore::QNode *parent READ parentNode WRITE setParent NOTIFY parentChanged)
%%

$prototypeV2=QNode * parentNode() const

$prototypeV2=void setParent( QNode * parent ) (slot)

%%
%% Q_PROPERTY(bool enabled READ isEnabled WRITE setEnabled NOTIFY enabledChanged)
%%

$prototypeV2=bool isEnabled() const

$prototypeV2=void setEnabled( bool isEnabled ) (slot)

%%
%% Q_PROPERTY(PropertyTrackingMode defaultPropertyTrackingMode READ defaultPropertyTrackingMode WRITE setDefaultPropertyTrackingMode NOTIFY defaultPropertyTrackingModeChanged REVISION 9)
%%

$prototypeV2=QNode::PropertyTrackingMode defaultPropertyTrackingMode() const

$prototypeV2=void setDefaultPropertyTrackingMode( QNode::PropertyTrackingMode mode ) (slot)

%%
%%
%%

$prototypeV2=QNodeId id() const

$prototypeV2=bool notificationsBlocked() const

$prototypeV2=bool blockNotifications( bool block )

$prototypeV2=QNodeVector childNodes() const

$prototypeV2=void setPropertyTracking( const QString & propertyName, QNode::PropertyTrackingMode trackMode )

$prototypeV2=QNode::PropertyTrackingMode propertyTracking( const QString & propertyName ) const

$prototypeV2=void clearPropertyTracking( const QString & propertyName )

$prototypeV2=void clearPropertyTrackings()

$prototypeV2=QNodeCommand::CommandId sendCommand( const QString & name, const QVariant & data = QVariant(), QNodeCommand::CommandId replyTo = QNodeCommand::CommandId() )

$prototypeV2=void sendReply( const QNodeCommandPtr & command )

$prototype=void notifyObservers(const QSceneChangePtr &change) [protected]

$prototype=virtual void sceneChangeEvent(const QSceneChangePtr &change) [protected]

$prototype=virtual QNodeCreatedChangeBasePtr createNodeCreationChange() const [private]

$prototype=void setParent(QObject *) Q_DECL_EQ_DELETE [private]

$prototype=QNodeId qIdForNode(QNode *node) [private]

%%
%% SIGNALS
%%

$prototype=void parentChanged( QObject * parent )
$signalMethod=|void|parentChanged|QObject *

$prototype=void enabledChanged( bool enabled )
$signalMethod=|void|enabledChanged|bool

$prototype=void defaultPropertyTrackingModeChanged( QNode::PropertyTrackingMode mode )
$signalMethod=|void|defaultPropertyTrackingModeChanged|QNode::PropertyTrackingMode

$prototype=void nodeDestroyed()
$signalMethod=|void|nodeDestroyed|

#pragma ENDDUMP
