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

$prototype=bool addCustomFilter ( const QString & filterName, const QStringList & attributes )
$method=|bool|addCustomFilter|const QString &,const QStringList &

$prototypeV2=bool autoSaveFilter() const

$prototypeV2=QString collectionFile() const

$prototype=bool copyCollectionFile ( const QString & fileName )
$method=|bool|copyCollectionFile|const QString &

$prototypeV2=QString currentFilter() const

$prototypeV2=QStringList customFilters() const

$prototype=QVariant customValue ( const QString & key, const QVariant & defaultValue = QVariant() ) const
$method=|QVariant|customValue|const QString &,const QVariant &=QVariant()

$prototype=QString documentationFileName ( const QString & namespaceName )
$method=|QString|documentationFileName|const QString &

$prototypeV2=QString error() const

$prototype=QByteArray fileData ( const QUrl & url ) const
$method=|QByteArray|fileData|const QUrl &

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

$prototype=QUrl findFile ( const QUrl & url ) const
$method=|QUrl|findFile|const QUrl &

$prototype=bool registerDocumentation ( const QString & documentationFileName )
$method=|bool|registerDocumentation|const QString &

$prototypeV2=QStringList registeredDocumentations() const

$prototype=bool removeCustomFilter ( const QString & filterName )
$method=|bool|removeCustomFilter|const QString &

$prototype=bool removeCustomValue ( const QString & key )
$method=|bool|removeCustomValue|const QString &

$prototype=void setAutoSaveFilter ( bool save )
$method=|void|setAutoSaveFilter|bool

$prototype=void setCollectionFile ( const QString & fileName )
$method=|void|setCollectionFile|const QString &

$prototype=void setCurrentFilter ( const QString & filterName )
$method=|void|setCurrentFilter|const QString &

$prototype=bool setCustomValue ( const QString & key, const QVariant & value )
$method=|bool|setCustomValue|const QString &,const QVariant &

$prototypeV2=bool setupData()

$prototype=bool unregisterDocumentation ( const QString & namespaceName )
$method=|bool|unregisterDocumentation|const QString &

$prototype=static QVariant metaData ( const QString & documentationFileName, const QString & name )
$staticMethod=|QVariant|metaData|const QString &,const QString &

$prototype=static QString namespaceName ( const QString & documentationFileName )
$staticMethod=|QString|namespaceName|const QString &

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
