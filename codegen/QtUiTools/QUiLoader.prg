%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtUiTools

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDir>
#include <QtCore/QStringList>
#include <QtWidgets/QAction>
#include <QtWidgets/QActionGroup>
#include <QtWidgets/QLayout>

$prototype=QUiLoader ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void addPluginPath ( const QString & path )
$method=|void|addPluginPath|const QString &

$prototypeV2=QStringList availableLayouts() const

$prototypeV2=QStringList availableWidgets() const

$prototypeV2=void clearPluginPaths()

$prototype=virtual QAction * createAction ( QObject * parent = nullptr, const QString & name = QString() )
$virtualMethod=|QAction *|createAction|QObject *=nullptr,const QString &=QString()

$prototype=virtual QActionGroup * createActionGroup ( QObject * parent = nullptr, const QString & name = QString() )
$virtualMethod=|QActionGroup *|createActionGroup|QObject *=nullptr,const QString &=QString()

$prototype=virtual QLayout * createLayout ( const QString & className, QObject * parent = nullptr, const QString & name = QString() )
$virtualMethod=|QLayout *|createLayout|const QString &,QObject *=nullptr,const QString &=QString()

$prototype=virtual QWidget * createWidget ( const QString & className, QWidget * parent = nullptr, const QString & name = QString() )
$virtualMethod=|QWidget *|createWidget|const QString &,QWidget *=nullptr,const QString &=QString()

$prototypeV2=bool isLanguageChangeEnabled() const

$prototype=QWidget * load ( QIODevice * device, QWidget * parentWidget = nullptr )
$method=|QWidget *|load|QIODevice *,QWidget *=nullptr

$prototypeV2=QStringList pluginPaths() const

$prototype=void setLanguageChangeEnabled ( bool enabled )
$method=|void|setLanguageChangeEnabled|bool

$prototype=void setWorkingDirectory ( const QDir & dir )
$method=|void|setWorkingDirectory|const QDir &

$prototypeV2=QDir workingDirectory() const

#pragma ENDDUMP
