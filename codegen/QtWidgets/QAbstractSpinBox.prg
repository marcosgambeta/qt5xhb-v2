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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
$virtualMethod=|void|fixup|QString &

$prototypeV2=bool hasAcceptableInput() const

$prototypeV2=void interpretText()

$prototypeV2=bool isAccelerated() const

$prototype=void setAccelerated ( bool on )
$method=|void|setAccelerated|bool

$prototypeV2=Qt::Alignment alignment() const

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototypeV2=QAbstractSpinBox::ButtonSymbols buttonSymbols() const

$prototype=void setButtonSymbols ( ButtonSymbols bs )
$method=|void|setButtonSymbols|QAbstractSpinBox::ButtonSymbols

$prototypeV2=QAbstractSpinBox::CorrectionMode correctionMode() const

$prototype=void setCorrectionMode ( CorrectionMode cm )
$method=|void|setCorrectionMode|QAbstractSpinBox::CorrectionMode

$prototypeV2=bool hasFrame() const

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototypeV2=bool keyboardTracking() const

$prototype=void setKeyboardTracking ( bool kt )
$method=|void|setKeyboardTracking|bool

$prototypeV2=bool isReadOnly() const

$prototype=void setReadOnly ( bool r )
$method=|void|setReadOnly|bool

$prototypeV2=QString specialValueText() const

$prototype=void setSpecialValueText ( const QString & txt )
$method=|void|setSpecialValueText|const QString &

$prototypeV2=bool wrapping() const

$prototype=void setWrapping ( bool w )
$method=|void|setWrapping|bool

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototypeV2=QString text() const

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

$prototype=bool event ( QEvent * event )
$method=|bool|event|QEvent *

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=QSize minimumSizeHint() const

$prototypeV2=QSize sizeHint() const

$prototypeV2=virtual void clear()

$prototypeV2=void selectAll()

$prototypeV2=void stepDown()

$prototypeV2=void stepUp()

$prototype=bool isGroupSeparatorShown() const
$method=5,3,0|bool|isGroupSeparatorShown|

$prototype=void setGroupSeparatorShown(bool shown)
$method=5,3,0|void|setGroupSeparatorShown|bool

%%
%% SIGNALS
%%

$prototype=void editingFinished()
$signalMethod=|void|editingFinished|

#pragma ENDDUMP
