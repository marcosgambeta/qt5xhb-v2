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

$prototype=explicit QInAppProduct(const QString &price, const QString &title, const QString &description, ProductType productType, const QString &identifier, QObject *parent = nullptr) [protected]

$prototype=~QInAppProduct()
$deleteMethod

%%
%% Q_PROPERTY(QString identifier READ identifier CONSTANT)
%%

$prototypeV2=QString identifier() const

%%
%% Q_PROPERTY(ProductType productType READ productType CONSTANT)
%%

$prototypeV2=QInAppProduct::ProductType productType() const

%%
%% Q_PROPERTY(QString price READ price CONSTANT)
%%

$prototypeV2=QString price() const

%%
%% Q_PROPERTY(QString title READ title CONSTANT)
%%

$prototypeV2=QString title() const

%%
%% Q_PROPERTY(QString description READ description CONSTANT)
%%

$prototypeV2=QString description() const

%%
%%
%%

$prototypeV2=Q_INVOKABLE virtual void purchase() = 0

#pragma ENDDUMP
