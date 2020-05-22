/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HUiLoader.h"

HUiLoader::HUiLoader( QObject *parent ) : QUiLoader( parent )
{
  m_createActionBlock = nullptr;
  m_createActionGroupBlock = nullptr;
  m_createLayoutBlock = nullptr;
  m_createWidgetBlock = nullptr;
}

HUiLoader::~HUiLoader()
{
  if( m_createActionBlock != nullptr )
  {
    hb_itemRelease( m_createActionBlock );
    m_createActionBlock = nullptr;
  }

  if( m_createActionGroupBlock != nullptr )
  {
    hb_itemRelease( m_createActionGroupBlock );
    m_createActionGroupBlock = nullptr;
  }

  if( m_createLayoutBlock != nullptr )
  {
    hb_itemRelease( m_createLayoutBlock );
    m_createLayoutBlock = nullptr;
  }

  if( m_createWidgetBlock != nullptr )
  {
    hb_itemRelease( m_createWidgetBlock );
    m_createWidgetBlock = nullptr;
  }
}

QAction * HUiLoader::createAction( QObject *parent, const QString &name )
{
  QAction * action = QUiLoader::createAction( parent, name );

  if( m_createActionBlock != nullptr )
  {
    PHB_ITEM pAction = Qt5xHb::returnQObjectObject( action );
    hb_vmEvalBlockV( m_createActionBlock, 1, pAction );
    hb_itemRelease( pAction );
  }

  return action;
}

QActionGroup * HUiLoader::createActionGroup( QObject *parent, const QString &name )
{
  QActionGroup * actionGroup = QUiLoader::createActionGroup( parent, name );

  if( m_createActionGroupBlock != nullptr )
  {
    PHB_ITEM pActionGroup = Qt5xHb::returnQObjectObject( actionGroup );
    hb_vmEvalBlockV( m_createActionGroupBlock, 1, pActionGroup );
    hb_itemRelease( pActionGroup );
  }

  return actionGroup;
}

QLayout * HUiLoader::createLayout( const QString &className, QObject *parent, const QString &name )
{
  QLayout * layout = QUiLoader::createLayout( className, parent, name );

  if( m_createLayoutBlock != nullptr )
  {
    PHB_ITEM pLayout = Qt5xHb::returnQObjectObject( layout );
    hb_vmEvalBlockV( m_createLayoutBlock, 1, pLayout );
    hb_itemRelease( pLayout );
  }

  return layout;
}

QWidget * HUiLoader::createWidget( const QString &className, QWidget *parent, const QString &name )
{
  QWidget * widget = QUiLoader::createWidget( className, parent, name );

  if( m_createWidgetBlock != nullptr )
  {
    PHB_ITEM pWidget = Qt5xHb::returnQWidgetObject( widget );
    hb_vmEvalBlockV( m_createWidgetBlock, 1, pWidget );
    hb_itemRelease( pWidget );
  }

  return widget;
}

void HUiLoader::setCreateActionCB( PHB_ITEM block )
{
  if( m_createActionBlock != nullptr )
  {
    hb_itemRelease( m_createActionBlock );
  }
  if( block != nullptr )
  {
    m_createActionBlock = hb_itemNew( block );
  }
}

void HUiLoader::setCreateActionGroupCB( PHB_ITEM block )
{
  if( m_createActionGroupBlock != nullptr )
  {
    hb_itemRelease( m_createActionGroupBlock );
  }
  if( block != nullptr )
  {
    m_createActionGroupBlock = hb_itemNew( block );
  }
}

void HUiLoader::setCreateLayoutCB( PHB_ITEM block )
{
  if( m_createLayoutBlock != nullptr )
  {
    hb_itemRelease( m_createLayoutBlock );
  }
  if( block != nullptr )
  {
    m_createLayoutBlock = hb_itemNew( block );
  }
}

void HUiLoader::setCreateWidgetCB( PHB_ITEM block )
{
  if( m_createWidgetBlock != nullptr )
  {
    hb_itemRelease( m_createWidgetBlock );
  }
  if( block != nullptr )
  {
    m_createWidgetBlock = hb_itemNew( block );
  }
}
