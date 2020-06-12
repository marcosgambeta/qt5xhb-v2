%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

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
#include <QtSql/QSqlError>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>

$deleteMethod

$prototypeV2=virtual bool beginTransaction()

$prototypeV2=virtual void close() = 0

$prototypeV2=virtual bool commitTransaction()

$prototypeV2=virtual QSqlResult * createResult() const = 0

$prototype=virtual QString escapeIdentifier ( const QString & identifier, IdentifierType type ) const
$virtualMethod=|QString|escapeIdentifier|const QString &,QSqlDriver::IdentifierType

$prototype=virtual QString formatValue ( const QSqlField & field, bool trimStrings = false ) const
$virtualMethod=|QString|formatValue|const QSqlField &,bool=false

$prototypeV2=virtual QVariant handle() const

$prototype=virtual bool hasFeature ( DriverFeature feature ) const = 0
$virtualMethod=|bool|hasFeature|QSqlDriver::DriverFeature

$prototype=virtual bool isIdentifierEscaped ( const QString & identifier, IdentifierType type ) const
$virtualMethod=|bool|isIdentifierEscaped|const QString &,QSqlDriver::IdentifierType

$prototypeV2=virtual bool isOpen() const

$prototypeV2=bool isOpenError() const

$prototypeV2=QSqlError lastError() const

$prototypeV2=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const

$prototype=virtual bool open ( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
$virtualMethod=|bool|open|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString(),int=-1,const QString &=QString()

$prototype=virtual QSqlIndex primaryIndex ( const QString & tableName ) const
$virtualMethod=|QSqlIndex|primaryIndex|const QString &

$prototype=virtual QSqlRecord record ( const QString & tableName ) const
$virtualMethod=|QSqlRecord|record|const QString &

$prototypeV2=virtual bool rollbackTransaction()

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=virtual QString sqlStatement ( StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
$virtualMethod=|QString|sqlStatement|QSqlDriver::StatementType,const QString &,const QSqlRecord &,bool

$prototype=virtual QString stripDelimiters ( const QString & identifier, IdentifierType type ) const
$virtualMethod=|QString|stripDelimiters|const QString &,QSqlDriver::IdentifierType

$prototype=virtual bool subscribeToNotification ( const QString & name )
$virtualMethod=|bool|subscribeToNotification|const QString &

$prototypeV2=virtual QStringList subscribedToNotifications() const

$prototype=virtual QStringList tables ( QSql::TableType tableType ) const
$virtualMethod=|QStringList|tables|QSql::TableType

$prototype=virtual bool unsubscribeFromNotification ( const QString & name )
$virtualMethod=|bool|unsubscribeFromNotification|const QString &

$prototypeV2=virtual bool cancelQuery()

%%
%% SIGNALS
%%

$prototype=void notification( const QString & name )
$signalMethod=|void|notification,notification1,QOverload<const QString &>|const QString &

$prototype=void notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload )
$signalMethod=|void|notification,notification2,QOverload<const QString & COMMA QSqlDriver::NotificationSource COMMA const QVariant &>|const QString &,QSqlDriver::NotificationSource,const QVariant &

#pragma ENDDUMP
