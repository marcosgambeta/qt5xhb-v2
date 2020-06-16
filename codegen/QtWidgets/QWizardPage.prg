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

$prototype=explicit QWizardPage ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=QString buttonText ( QWizard::WizardButton which ) const
$method=|QString|buttonText|QWizard::WizardButton

$prototype=void setButtonText ( QWizard::WizardButton which, const QString & text )
$method=|void|setButtonText|QWizard::WizardButton,const QString &

$prototypeV2=virtual void cleanupPage()

$prototypeV2=virtual void initializePage()

$prototypeV2=bool isCommitPage() const

$prototype=void setCommitPage ( bool commitPage )
$method=|void|setCommitPage|bool

$prototypeV2=virtual bool isComplete() const

$prototypeV2=bool isFinalPage() const

$prototype=void setFinalPage ( bool finalPage )
$method=|void|setFinalPage|bool

$prototypeV2=virtual int nextId() const

$prototype=QPixmap pixmap ( QWizard::WizardPixmap which ) const
$method=|QPixmap|pixmap|QWizard::WizardPixmap

$prototype=void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

$prototypeV2=QString subTitle() const

$prototype=void setSubTitle ( const QString & subTitle )
$method=|void|setSubTitle|const QString &

$prototypeV2=QString title() const

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototypeV2=virtual bool validatePage()

%%
%% SIGNALS
%%

$prototype=void completeChanged()
$signalMethod=|void|completeChanged|

#pragma ENDDUMP
