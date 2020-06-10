%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QBarDataProxy

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QItemModelBarDataProxy(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = nullptr)
$internalConstructor=|new2|QAbstractItemModel *,QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = nullptr)
$internalConstructor=|new3|QAbstractItemModel *,const QString &,QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = nullptr)
$internalConstructor=|new4|QAbstractItemModel *,const QString &,const QString &,const QString &,QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = nullptr)
$internalConstructor=|new5|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = nullptr)
$internalConstructor=|new6|QAbstractItemModel *,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=nullptr

$prototype=explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = nullptr)
$internalConstructor=|new7|QAbstractItemModel *,const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &,QObject *=nullptr

/*
[1]explicit QItemModelBarDataProxy(QObject *parent = nullptr)
[2]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, QObject *parent = nullptr)
[3]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &valueRole, QObject *parent = nullptr)
[4]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent = nullptr)
[5]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent = nullptr)
[6]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = nullptr)
[7]explicit QItemModelBarDataProxy(QAbstractItemModel *itemModel, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QITEMMODELBARDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QItemModelBarDataProxy_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QItemModelBarDataProxy_new2();
  }
  else if( ISBETWEEN(2,3) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QItemModelBarDataProxy_new3();
  }
  else if( ISBETWEEN(4,5) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QItemModelBarDataProxy_new4();
  }
  else if( ISBETWEEN(5,6) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && (ISQOBJECT(6)||ISNIL(6)) )
  {
    QItemModelBarDataProxy_new5();
  }
  else if( ISBETWEEN(6,7) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISARRAY(5) && ISARRAY(6) && (ISQOBJECT(7)||ISNIL(7)) )
  {
    QItemModelBarDataProxy_new6();
  }
  else if( ISBETWEEN(7,8) && ISQABSTRACTITEMMODEL(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) && ISARRAY(6) && ISARRAY(7) && (ISQOBJECT(8)||ISNIL(8)) )
  {
    QItemModelBarDataProxy_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QItemModelBarDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel* itemModel READ itemModel WRITE setItemModel NOTIFY itemModelChanged)
%%

$prototypeV2=QAbstractItemModel * itemModel() const

$prototype=void setItemModel(QAbstractItemModel *itemModel)
$method=|void|setItemModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QString rowRole READ rowRole WRITE setRowRole NOTIFY rowRoleChanged)
%%

$prototypeV2=QString rowRole() const

$prototype=void setRowRole(const QString &role)
$method=|void|setRowRole|const QString &

%%
%% Q_PROPERTY(QString columnRole READ columnRole WRITE setColumnRole NOTIFY columnRoleChanged)
%%

$prototypeV2=QString columnRole() const

$prototype=void setColumnRole(const QString &role)
$method=|void|setColumnRole|const QString &

%%
%% Q_PROPERTY(QString valueRole READ valueRole WRITE setValueRole NOTIFY valueRoleChanged)
%%

$prototypeV2=QString valueRole() const

$prototype=void setValueRole(const QString &role)
$method=|void|setValueRole|const QString &

%%
%% Q_PROPERTY(QString rotationRole READ rotationRole WRITE setRotationRole NOTIFY rotationRoleChanged)
%%

$prototypeV2=QString rotationRole() const

$prototype=void setRotationRole(const QString &role)
$method=|void|setRotationRole|const QString &

%%
%% Q_PROPERTY(QStringList rowCategories READ rowCategories WRITE setRowCategories NOTIFY rowCategoriesChanged)
%%

$prototypeV2=QStringList rowCategories() const

$prototype=void setRowCategories(const QStringList &categories)
$method=|void|setRowCategories|const QStringList &

%%
%% Q_PROPERTY(QStringList columnCategories READ columnCategories WRITE setColumnCategories NOTIFY columnCategoriesChanged)
%%

$prototypeV2=QStringList columnCategories() const

$prototype=void setColumnCategories(const QStringList &categories)
$method=|void|setColumnCategories|const QStringList &

%%
%% Q_PROPERTY(bool useModelCategories READ useModelCategories WRITE setUseModelCategories NOTIFY useModelCategoriesChanged)
%%

$prototypeV2=bool useModelCategories() const

$prototype=void setUseModelCategories(bool enable)
$method=|void|setUseModelCategories|bool

%%
%% Q_PROPERTY(bool autoRowCategories READ autoRowCategories WRITE setAutoRowCategories NOTIFY autoRowCategoriesChanged)
%%

$prototypeV2=bool autoRowCategories() const

$prototype=void setAutoRowCategories(bool enable)
$method=|void|setAutoRowCategories|bool

%%
%% Q_PROPERTY(bool autoColumnCategories READ autoColumnCategories WRITE setAutoColumnCategories NOTIFY autoColumnCategoriesChanged)
%%

$prototypeV2=bool autoColumnCategories() const

$prototype=void setAutoColumnCategories(bool enable)
$method=|void|setAutoColumnCategories|bool

%%
%% Q_PROPERTY(QRegExp rowRolePattern READ rowRolePattern WRITE setRowRolePattern NOTIFY rowRolePatternChanged REVISION 1)
%%

$prototypeV2=QRegExp rowRolePattern() const

$prototype=void setRowRolePattern(const QRegExp &pattern)
$method=|void|setRowRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp columnRolePattern READ columnRolePattern WRITE setColumnRolePattern NOTIFY columnRolePatternChanged REVISION 1)
%%

$prototypeV2=QRegExp columnRolePattern() const

$prototype=void setColumnRolePattern(const QRegExp &pattern)
$method=|void|setColumnRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp valueRolePattern READ valueRolePattern WRITE setValueRolePattern NOTIFY valueRolePatternChanged REVISION 1)
%%

$prototypeV2=QRegExp valueRolePattern() const

$prototype=void setValueRolePattern(const QRegExp &pattern)
$method=|void|setValueRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QRegExp rotationRolePattern READ rotationRolePattern WRITE setRotationRolePattern NOTIFY rotationRolePatternChanged REVISION 1)
%%

$prototypeV2=QRegExp rotationRolePattern() const

$prototype=void setRotationRolePattern(const QRegExp &pattern)
$method=|void|setRotationRolePattern|const QRegExp &

%%
%% Q_PROPERTY(QString rowRoleReplace READ rowRoleReplace WRITE setRowRoleReplace NOTIFY rowRoleReplaceChanged REVISION 1)
%%

$prototypeV2=QString rowRoleReplace() const

$prototype=void setRowRoleReplace(const QString &replace)
$method=|void|setRowRoleReplace|const QString &

%%
%% Q_PROPERTY(QString columnRoleReplace READ columnRoleReplace WRITE setColumnRoleReplace NOTIFY columnRoleReplaceChanged REVISION 1)
%%

$prototypeV2=QString columnRoleReplace() const

$prototype=void setColumnRoleReplace(const QString &replace)
$method=|void|setColumnRoleReplace|const QString &

%%
%% Q_PROPERTY(QString valueRoleReplace READ valueRoleReplace WRITE setValueRoleReplace NOTIFY valueRoleReplaceChanged REVISION 1)
%%

$prototypeV2=QString valueRoleReplace() const

$prototype=void setValueRoleReplace(const QString &replace)
$method=|void|setValueRoleReplace|const QString &

%%
%% Q_PROPERTY(QString rotationRoleReplace READ rotationRoleReplace WRITE setRotationRoleReplace NOTIFY rotationRoleReplaceChanged REVISION 1)
%%

$prototypeV2=QString rotationRoleReplace() const

$prototype=void setRotationRoleReplace(const QString &replace)
$method=|void|setRotationRoleReplace|const QString &

%%
%% Q_PROPERTY(MultiMatchBehavior multiMatchBehavior READ multiMatchBehavior WRITE setMultiMatchBehavior NOTIFY multiMatchBehaviorChanged REVISION 1)
%%

$prototypeV2=QItemModelBarDataProxy::MultiMatchBehavior multiMatchBehavior() const

$prototype=void setMultiMatchBehavior(MultiMatchBehavior behavior)
$method=|void|setMultiMatchBehavior|QItemModelBarDataProxy::MultiMatchBehavior

%%
%%
%%

$prototype=void remap(const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories)
$method=|void|remap|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QStringList &

$prototype=Q_INVOKABLE int rowCategoryIndex(const QString& category)
$method=|int|rowCategoryIndex|const QString &

$prototype=Q_INVOKABLE int columnCategoryIndex(const QString& category)
$method=|int|columnCategoryIndex|const QString &

%%
%% SIGNALS
%%

$prototype=void autoColumnCategoriesChanged( bool enable )
$signalMethod=|void|autoColumnCategoriesChanged|bool

$prototype=void autoRowCategoriesChanged( bool enable )
$signalMethod=|void|autoRowCategoriesChanged|bool

$prototype=void columnCategoriesChanged()
$signalMethod=|void|columnCategoriesChanged|

$prototype=void columnRoleChanged( const QString & role )
$signalMethod=|void|columnRoleChanged|const QString &

$prototype=void columnRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|columnRolePatternChanged|const QRegExp &

$prototype=void columnRoleReplaceChanged( const QString & replace )
$signalMethod=|void|columnRoleReplaceChanged|const QString &

$prototype=void itemModelChanged( const QAbstractItemModel * itemModel )
$signalMethod=|void|itemModelChanged|const QAbstractItemModel *

$prototype=void multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior )
$signalMethod=|void|multiMatchBehaviorChanged|QItemModelBarDataProxy::MultiMatchBehavior

$prototype=void rotationRoleChanged( const QString & role )
$signalMethod=|void|rotationRoleChanged|const QString &

$prototype=void rotationRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|rotationRolePatternChanged|const QRegExp &

$prototype=void rotationRoleReplaceChanged( const QString & replace )
$signalMethod=|void|rotationRoleReplaceChanged|const QString &

$prototype=void rowCategoriesChanged()
$signalMethod=|void|rowCategoriesChanged|

$prototype=void rowRoleChanged( const QString & role )
$signalMethod=|void|rowRoleChanged|const QString &

$prototype=void rowRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|rowRolePatternChanged|const QRegExp &

$prototype=void rowRoleReplaceChanged( const QString & replace )
$signalMethod=|void|rowRoleReplaceChanged|const QString &

$prototype=void useModelCategoriesChanged( bool enable )
$signalMethod=|void|useModelCategoriesChanged|bool

$prototype=void valueRoleChanged( const QString & role )
$signalMethod=|void|valueRoleChanged|const QString &

$prototype=void valueRolePatternChanged( const QRegExp & pattern )
$signalMethod=|void|valueRolePatternChanged|const QRegExp &

$prototype=void valueRoleReplaceChanged( const QString & replace )
$signalMethod=|void|valueRoleReplaceChanged|const QString &

#pragma ENDDUMP
