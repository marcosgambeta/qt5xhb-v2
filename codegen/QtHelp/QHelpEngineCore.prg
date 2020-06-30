%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

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

#include <QtCore/QStringList>

$prototype=QHelpEngineCore ( const QString & collectionFile, QObject * parent = nullptr )
$constructor=|new|const QString &,QObject *=nullptr

$deleteMethod

$prototypeV2=bool addCustomFilter( const QString & filterName, const QStringList & attributes )

$prototypeV2=bool autoSaveFilter() const

$prototypeV2=QString collectionFile() const

$prototypeV2=bool copyCollectionFile( const QString & fileName )

$prototypeV2=QString currentFilter() const

$prototypeV2=QStringList customFilters() const

$prototypeV2=QVariant customValue( const QString & key, const QVariant & defaultValue = QVariant() ) const

$prototypeV2=QString documentationFileName( const QString & namespaceName )

$prototypeV2=QString error() const

$prototypeV2=QByteArray fileData( const QUrl & url ) const

$prototype=QStringList filterAttributes () const
$internalMethod=|QStringList|filterAttributes,filterAttributes1|

$prototype=QStringList filterAttributes ( const QString & filterName ) const
$internalMethod=|QStringList|filterAttributes,filterAttributes2|const QString &

/*
[1]QStringList filterAttributes () const
[2]QStringList filterAttributes ( const QString & filterName ) const
*/

HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES )
{
  if( ISNUMPAR(0) )
  {
    QHelpEngineCore_filterAttributes1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QHelpEngineCore_filterAttributes2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=filterAttributes

$prototypeV2=QUrl findFile( const QUrl & url ) const

$prototypeV2=bool registerDocumentation( const QString & documentationFileName )

$prototypeV2=QStringList registeredDocumentations() const

$prototypeV2=bool removeCustomFilter( const QString & filterName )

$prototypeV2=bool removeCustomValue( const QString & key )

$prototypeV2=void setAutoSaveFilter( bool save )

$prototypeV2=void setCollectionFile( const QString & fileName )

$prototypeV2=void setCurrentFilter( const QString & filterName )

$prototypeV2=bool setCustomValue( const QString & key, const QVariant & value )

$prototypeV2=bool setupData()

$prototypeV2=bool unregisterDocumentation( const QString & namespaceName )

$prototypeV2=static QVariant metaData( const QString & documentationFileName, const QString & name )

$prototypeV2=static QString namespaceName( const QString & documentationFileName )

%%
%% SIGNALS
%%

$prototype=void currentFilterChanged( const QString & newFilter )
$signalMethod=|void|currentFilterChanged|const QString &

$prototype=void setupFinished()
$signalMethod=|void|setupFinished|

$prototype=void setupStarted()
$signalMethod=|void|setupStarted|

$prototype=void warning( const QString & msg )
$signalMethod=|void|warning|const QString &

#pragma ENDDUMP
