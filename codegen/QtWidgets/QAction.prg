%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

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

#include <QtWidgets/QMenu>

%% NOTE: the parent argument is optional since Qt 5.7

$prototype=QAction ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QAction ( const QString & text, QObject * parent = nullptr )
$internalConstructor=|new2|const QString &,QObject *=nullptr

$prototype=QAction ( const QIcon & icon, const QString & text, QObject * parent = nullptr )
$internalConstructor=|new3|const QIcon &,const QString &,QObject *=nullptr

/*
[1]QAction ( QObject * parent = nullptr )
[2]QAction ( const QString & text, QObject * parent = nullptr )
[3]QAction ( const QIcon & icon, const QString & text, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAction_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QAction_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QAction_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QActionGroup * actionGroup() const

$prototype=void activate ( ActionEvent event )
$method=|void|activate|QAction::ActionEvent

$prototype=QList<QGraphicsWidget *> associatedGraphicsWidgets () const
$method=|QList<QGraphicsWidget *>|associatedGraphicsWidgets|

$prototype=QList<QWidget *> associatedWidgets () const
$method=|QList<QWidget *>|associatedWidgets|

$prototypeV2=bool autoRepeat() const

$prototypeV2=QVariant data() const

$prototypeV2=QFont font() const

$prototypeV2=QIcon icon() const

$prototypeV2=QString iconText() const

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isEnabled() const

$prototypeV2=bool isIconVisibleInMenu() const

$prototypeV2=bool isSeparator() const

$prototypeV2=bool isVisible() const

$prototypeV2=QMenu * menu() const

$prototypeV2=QAction::MenuRole menuRole() const

$prototypeV2=QWidget * parentWidget() const

$prototypeV2=QAction::Priority priority() const

$prototype=void setActionGroup ( QActionGroup * group )
$method=|void|setActionGroup|QActionGroup *

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

$prototype=void setData ( const QVariant & userData )
$method=|void|setData|const QVariant &

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setIconText ( const QString & text )
$method=|void|setIconText|const QString &

$prototype=void setIconVisibleInMenu ( bool visible )
$method=|void|setIconVisibleInMenu|bool

$prototype=void setMenu ( QMenu * menu )
$method=|void|setMenu|QMenu *

$prototype=void setMenuRole ( MenuRole menuRole )
$method=|void|setMenuRole|QAction::MenuRole

$prototype=void setPriority ( Priority priority )
$method=|void|setPriority|QAction::Priority

$prototype=void setSeparator ( bool b )
$method=|void|setSeparator|bool

$prototype=void setShortcut ( const QKeySequence & shortcut )
$method=|void|setShortcut|const QKeySequence &

$prototype=void setShortcutContext ( Qt::ShortcutContext context )
$method=|void|setShortcutContext|Qt::ShortcutContext

$prototype=void setShortcuts ( const QList<QKeySequence> & shortcuts )
$internalMethod=|void|setShortcuts,setShortcuts1|const QList<QKeySequence> &

$prototype=void setShortcuts ( QKeySequence::StandardKey key )
$internalMethod=|void|setShortcuts,setShortcuts2|QKeySequence::StandardKey

/*
[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
[2]void setShortcuts ( QKeySequence::StandardKey key )
*/

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAction_setShortcuts1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QAction_setShortcuts2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setShortcuts

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setToolTip ( const QString & tip )
$method=|void|setToolTip|const QString &

$prototype=void setWhatsThis ( const QString & what )
$method=|void|setWhatsThis|const QString &

$prototypeV2=QKeySequence shortcut() const

$prototypeV2=Qt::ShortcutContext shortcutContext() const

$prototype=QList<QKeySequence> shortcuts () const
$method=|QList<QKeySequence>|shortcuts|

$prototype=bool showStatusText ( QWidget * widget = nullptr )
$method=|bool|showStatusText|QWidget *=nullptr

$prototypeV2=QString statusTip() const

$prototypeV2=QString text() const

$prototypeV2=QString toolTip() const

$prototypeV2=QString whatsThis() const

$prototypeV2=void hover()

$prototype=void setChecked ( bool )
$method=|void|setChecked|bool

$prototype=void setDisabled ( bool b )
$method=|void|setDisabled|bool

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setVisible ( bool )
$method=|void|setVisible|bool

$prototypeV2=void toggle()

$prototypeV2=void trigger()

%%
%% SIGNALS
%%

$prototype=void changed()
$signalMethod=|void|changed|

$prototype=void hovered()
$signalMethod=|void|hovered|

$prototype=void toggled( bool checked )
$signalMethod=|void|toggled|bool

$prototype=void triggered( bool checked = false )
$signalMethod=|void|triggered|bool

#pragma ENDDUMP
