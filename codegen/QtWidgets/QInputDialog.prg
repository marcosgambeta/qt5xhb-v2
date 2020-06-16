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

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputDialog ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=QString cancelButtonText() const

$prototype=void setCancelButtonText ( const QString & text )
$method=|void|setCancelButtonText|const QString &

$prototypeV2=QStringList comboBoxItems() const

$prototype=void setComboBoxItems ( const QStringList & items )
$method=|void|setComboBoxItems|const QStringList &

$prototypeV2=int doubleDecimals() const

$prototype=void setDoubleDecimals ( int decimals )
$method=|void|setDoubleDecimals|int

$prototypeV2=double doubleMaximum() const

$prototype=void setDoubleMaximum ( double max )
$method=|void|setDoubleMaximum|double

$prototypeV2=double doubleMinimum() const

$prototype=void setDoubleMinimum ( double min )
$method=|void|setDoubleMinimum|double

$prototypeV2=double doubleValue() const

$prototype=void setDoubleValue ( double value )
$method=|void|setDoubleValue|double

$prototypeV2=QInputDialog::InputMode inputMode() const

$prototype=void setInputMode ( InputMode mode )
$method=|void|setInputMode|QInputDialog::InputMode

$prototypeV2=int intMaximum() const

$prototype=void setIntMaximum ( int max )
$method=|void|setIntMaximum|int

$prototypeV2=int intMinimum() const

$prototype=void setIntMinimum ( int min )
$method=|void|setIntMinimum|int

$prototypeV2=int intStep() const

$prototype=void setIntStep ( int step )
$method=|void|setIntStep|int

$prototypeV2=int intValue() const

$prototype=void setIntValue ( int value )
$method=|void|setIntValue|int

$prototypeV2=bool isComboBoxEditable() const

$prototype=void setComboBoxEditable ( bool editable )
$method=|void|setComboBoxEditable|bool

$prototypeV2=QString labelText() const

$prototype=void setLabelText ( const QString & text )
$method=|void|setLabelText|const QString &

$prototypeV2=QString okButtonText() const

$prototype=void setOkButtonText ( const QString & text )
$method=|void|setOkButtonText|const QString &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototypeV2=QInputDialog::InputDialogOptions options() const

$prototype=void setOptions ( InputDialogOptions options )
$method=|void|setOptions|QInputDialog::InputDialogOptions

$prototype=void setDoubleRange ( double min, double max )
$method=|void|setDoubleRange|double,double

$prototype=void setIntRange ( int min, int max )
$method=|void|setIntRange|int,int

$prototype=void setOption ( InputDialogOption option, bool on = true )
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

$prototype=bool testOption ( InputDialogOption option ) const
$method=|bool|testOption|QInputDialog::InputDialogOption

$prototypeV2=QLineEdit::EchoMode textEchoMode() const

$prototype=void setTextEchoMode ( QLineEdit::EchoMode mode )
$method=|void|setTextEchoMode|QLineEdit::EchoMode

$prototypeV2=QString textValue() const

$prototype=void setTextValue ( const QString & text )
$method=|void|setTextValue|const QString &

$prototype=void done ( int result )
$method=|void|done|int

$prototypeV2=QSize minimumSizeHint() const

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototypeV2=QSize sizeHint() const

$prototype=static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double minValue = -2147483647, double maxValue = 2147483647, int decimals = 1, bool * ok = nullptr, Qt::WindowFlags flags = 0)
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=nullptr,Qt::WindowFlags=0

$prototype=static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int minValue = -2147483647, int maxValue = 2147483647, int step = 1, bool * ok = nullptr, Qt::WindowFlags flags = 0)
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=nullptr,Qt::WindowFlags=0

$prototype=static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = nullptr, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=nullptr,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

$prototype=static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode echo = QLineEdit::Normal, const QString & text = QString(), bool * ok = nullptr, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=nullptr,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

$prototype=static QString getMultiLineText(QWidget *parent, const QString &title, const QString &label, const QString &text = QString(), bool *ok = nullptr, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getMultiLineText|QWidget *,const QString &,const QString &,const QString &=QString(),bool *=nullptr,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

%%
%% SIGNALS
%%

$prototype=void doubleValueChanged( double value )
$signalMethod=|void|doubleValueChanged|double

$prototype=void doubleValueSelected( double value )
$signalMethod=|void|doubleValueSelected|double

$prototype=void intValueChanged( int value )
$signalMethod=|void|intValueChanged|int

$prototype=void intValueSelected( int value )
$signalMethod=|void|intValueSelected|int

$prototype=void textValueChanged( const QString & text )
$signalMethod=|void|textValueChanged|const QString &

$prototype=void textValueSelected( const QString & text )
$signalMethod=|void|textValueSelected|const QString &

#pragma ENDDUMP
