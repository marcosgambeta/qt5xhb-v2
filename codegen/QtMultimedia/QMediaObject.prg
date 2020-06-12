%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

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

#include <QtCore/QVariant>
#include <QtMultimedia/QMediaService>

$prototype=QMediaObject(QObject *parent, QMediaService *service) [protected]

$prototype=QMediaObject(QMediaObjectPrivate &dd, QObject *parent, QMediaService *service) [protected]

$prototype=~QMediaObject()
$deleteMethod

%%
%% Q_PROPERTY(int notifyInterval READ notifyInterval WRITE setNotifyInterval NOTIFY notifyIntervalChanged)
%%

$prototypeV2=int notifyInterval() const

$prototype=void setNotifyInterval(int milliSeconds)
$method=|void|setNotifyInterval|int

%%
%%
%%

$prototypeV2=virtual QMultimedia::AvailabilityStatus availability() const

$prototypeV2=QStringList availableMetaData() const

$prototype=virtual bool bind(QObject * object)
$virtualMethod=|bool|bind|QObject *

$prototypeV2=virtual bool isAvailable() const

$prototypeV2=bool isMetaDataAvailable() const

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototypeV2=virtual QMediaService * service() const

$prototype=virtual void unbind(QObject * object)
$virtualMethod=|void|unbind|QObject *

$prototype=void addPropertyWatch(QByteArray const &name) [protected]

$prototype=void removePropertyWatch(QByteArray const &name) [protected]

$prototype=void setupControls() [private]

%%
%% SIGNALS
%%

$prototype=void availabilityChanged( bool available )
$signalMethod=|void|availabilityChanged,availabilityChanged1,QOverload<bool>|bool

$prototype=void availabilityChanged( QMultimedia::AvailabilityStatus availability )
$signalMethod=|void|availabilityChanged,availabilityChanged2,QOverload<QMultimedia::AvailabilityStatus>|QMultimedia::AvailabilityStatus

$prototype=void metaDataAvailableChanged( bool available )
$signalMethod=|void|metaDataAvailableChanged|bool

$prototype=void metaDataChanged()
$signalMethod=|void|metaDataChanged,metaDataChanged1,QOverload<>|

$prototype=void metaDataChanged( const QString & key, const QVariant & value )
$signalMethod=|void|metaDataChanged,metaDataChanged2,QOverload<const QString & COMMA const QVariant &>|const QString &,const QVariant &

$prototype=void notifyIntervalChanged( int milliseconds )
$signalMethod=|void|notifyIntervalChanged|int

#pragma ENDDUMP
