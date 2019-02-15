%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

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

$prototype=explicit QScxmlStateMachine(const QMetaObject *metaObject, QObject *parent = nullptr) [protected]

$prototype=QScxmlStateMachine(QScxmlStateMachinePrivate &dd, QObject *parent = nullptr) [protected]

$deleteMethod

%%
%% Q_PROPERTY(bool running READ isRunning WRITE setRunning NOTIFY runningChanged)
%%

$prototype=bool isRunning() const

$prototype=void setRunning(bool running)

%%
%% Q_PROPERTY(bool initialized READ isInitialized NOTIFY initializedChanged)
%%

$prototype=bool isInitialized() const

%%
%% Q_PROPERTY(QScxmlDataModel *dataModel READ dataModel WRITE setDataModel NOTIFY dataModelChanged)
%%

$prototype=QScxmlDataModel *dataModel() const

$prototype=void setDataModel(QScxmlDataModel *model)

%%
%% Q_PROPERTY(QVariantMap initialValues READ initialValues WRITE setInitialValues NOTIFY initialValuesChanged)
%%

$prototype=QVariantMap initialValues()

$prototype=void setInitialValues(const QVariantMap &initialValues)

%%
%% Q_PROPERTY(QVector<QScxmlInvokableService*> invokedServices READ invokedServices NOTIFY invokedServicesChanged)
%%

$prototype=QVector<QScxmlInvokableService *> invokedServices() const

%%
%% Q_PROPERTY(QString sessionId READ sessionId CONSTANT)
%%

$prototype=QString sessionId() const

%%
%% Q_PROPERTY(QString name READ name CONSTANT)
%%

$prototype=QString name() const

%%
%% Q_PROPERTY(bool invoked READ isInvoked CONSTANT)
%%

$prototype=bool isInvoked() const

%%
%% Q_PROPERTY(QVector<QScxmlError> parseErrors READ parseErrors CONSTANT)
%%

$prototype=QVector<QScxmlError> parseErrors() const

%%
%% Q_PROPERTY(QScxmlCompiler::Loader *loader READ loader WRITE setLoader NOTIFY loaderChanged)
%%

$prototype=QScxmlCompiler::Loader *loader() const

$prototype=void setLoader(QScxmlCompiler::Loader *loader)

%%
%% Q_PROPERTY(QScxmlTableData *tableData READ tableData WRITE setTableData NOTIFY tableDataChanged)
%%

$prototype=QScxmlTableData *tableData() const

$prototype=void setTableData(QScxmlTableData *tableData)

%%
%%
%%

$prototype=static QScxmlStateMachine *fromFile(const QString &fileName)

$prototype=static QScxmlStateMachine *fromData(QIODevice *data, const QString &fileName = QString())

$prototype=Q_INVOKABLE QStringList stateNames(bool compress = true) const

$prototype=Q_INVOKABLE QStringList activeStateNames(bool compress = true) const

$prototype=Q_INVOKABLE bool isActive(const QString &scxmlStateName) const

$prototype=QMetaObject::Connection connectToState(const QString &scxmlStateName, const QObject *receiver, const char *method, Qt::ConnectionType type = Qt::AutoConnection)

$prototype=QMetaObject::Connection connectToEvent(const QString &scxmlEventSpec, const QObject *receiver, const char *method, Qt::ConnectionType type = Qt::AutoConnection)

$prototype=Q_INVOKABLE void submitEvent(QScxmlEvent *event)

$prototype=Q_INVOKABLE void submitEvent(const QString &eventName)

$prototype=Q_INVOKABLE void submitEvent(const QString &eventName, const QVariant &data)

$prototype=Q_INVOKABLE void cancelDelayedEvent(const QString &sendId)

$prototype=Q_INVOKABLE bool isDispatchableTarget(const QString &target) const

$prototype=void start() [slot]

$prototype=void stop() [slot]

$prototype=bool init() [slot]

$prototype=bool isActive(int stateIndex) const [protected]

$prototype=QMetaObject::Connection connectToStateImpl(const QString &scxmlStateName, const QObject *receiver, void **slot, QtPrivate::QSlotObjectBase *slotObj, Qt::ConnectionType type = Qt::AutoConnection) [private]

$prototype=QMetaObject::Connection connectToEventImpl(const QString &scxmlEventSpec, const QObject *receiver, void **slot, QtPrivate::QSlotObjectBase *slotObj, Qt::ConnectionType type = Qt::AutoConnection) [private]

%%
%% SIGNALS
%%

$prototype=void runningChanged(bool running)
$prototype=void invokedServicesChanged(const QVector<QScxmlInvokableService *> &invokedServices)
$prototype=void log(const QString &label, const QString &msg)
$prototype=void reachedStableState()
$prototype=void finished()
$prototype=void dataModelChanged(QScxmlDataModel *model)
$prototype=void initialValuesChanged(const QVariantMap &initialValues)
$prototype=void initializedChanged(bool initialized)
$prototype=void loaderChanged(QScxmlCompiler::Loader *loader)
$prototype=void tableDataChanged(QScxmlTableData *tableData)

#pragma ENDDUMP
