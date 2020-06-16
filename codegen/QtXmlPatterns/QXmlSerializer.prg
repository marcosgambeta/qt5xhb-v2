%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractXmlReceiver

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$deleteMethod

$prototypeV2=const QTextCodec * codec() const

$prototypeV2=QIODevice * outputDevice() const

$prototype=void setCodec ( const QTextCodec * outputCodec )
$method=|void|setCodec|const QTextCodec *

$prototype=virtual void atomicValue ( const QVariant & value )
$virtualMethod=|void|atomicValue|const QVariant &

$prototype=virtual void attribute ( const QXmlName & name, const QStringRef & value )
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

$prototype=virtual void characters ( const QStringRef & value )
$virtualMethod=|void|characters|const QStringRef &

$prototype=virtual void comment ( const QString & value )
$virtualMethod=|void|comment|const QString &

$prototypeV2=virtual void endDocument()

$prototypeV2=virtual void endElement()

$prototypeV2=virtual void endOfSequence()

$prototype=virtual void namespaceBinding ( const QXmlName & nb )
$virtualMethod=|void|namespaceBinding|const QXmlName &

$prototype=virtual void processingInstruction ( const QXmlName & name, const QString & value )
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

$prototypeV2=virtual void startDocument()

$prototype=virtual void startElement ( const QXmlName & name )
$virtualMethod=|void|startElement|const QXmlName &

$prototypeV2=virtual void startOfSequence()

#pragma ENDDUMP
