%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPurchasing

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtPurchasing/QInAppProduct>

$prototype=explicit QInAppTransaction(TransactionStatus status, QInAppProduct *product, QObject *parent = nullptr) [protected]

$prototype=~QInAppTransaction()
$deleteMethod

%%
%% Q_PROPERTY(TransactionStatus status READ status CONSTANT)
%%

$prototypeV2=QInAppTransaction::TransactionStatus status() const

%%
%% Q_PROPERTY(QInAppProduct * product READ product CONSTANT)
%%

$prototypeV2=QInAppProduct * product() const

%%
%% Q_PROPERTY(QString orderId READ orderId CONSTANT)
%%

$prototypeV2=virtual QString orderId() const

%%
%% Q_PROPERTY(FailureReason failureReason READ failureReason CONSTANT)
%%

$prototypeV2=virtual QInAppTransaction::FailureReason failureReason() const

%%
%% Q_PROPERTY(QString errorString READ errorString CONSTANT)
%%

$prototypeV2=virtual QString errorString() const

%%
%% Q_PROPERTY(QDateTime timestamp READ timestamp CONSTANT)
%%

$prototypeV2=virtual QDateTime timestamp() const

%%
%%
%%

$prototypeV2=Q_INVOKABLE virtual void finalize() = 0

$prototype=Q_INVOKABLE virtual QString platformProperty(const QString &propertyName) const
$virtualMethod=|QString|platformProperty|const QString &

#pragma ENDDUMP
