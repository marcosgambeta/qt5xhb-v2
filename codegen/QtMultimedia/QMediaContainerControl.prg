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

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=explicit QMediaContainerControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaContainerControl()
$deleteMethod

$prototypeV2=virtual QString containerDescription( const QString & formatMimeType ) const = 0

$prototypeV2=virtual QString containerFormat() const = 0

$prototypeV2=virtual void setContainerFormat( const QString & format ) = 0

$prototypeV2=virtual QStringList supportedContainers() const = 0

#pragma ENDDUMP
