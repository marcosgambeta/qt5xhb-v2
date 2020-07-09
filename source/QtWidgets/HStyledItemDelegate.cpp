/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HStyledItemDelegate.h"

HStyledItemDelegate::HStyledItemDelegate( QObject *parent ) : QStyledItemDelegate( parent )
{
  m_paintBlock = nullptr;
  m_sizeHintBlock = nullptr;
  m_displayTextBlock = nullptr;
  m_createEditorBlock = nullptr;
  m_setEditorDataBlock = nullptr;
  m_setModelDataBlock = nullptr;
  m_updateEditorGeometryBlock = nullptr;
  m_destroyEditorBlock = nullptr;
}

HStyledItemDelegate::HStyledItemDelegate( PHB_ITEM paintCB, QObject *parent ) : QStyledItemDelegate( parent )
{
  m_paintBlock = hb_itemNew( paintCB );
  m_sizeHintBlock = nullptr;
  m_displayTextBlock = nullptr;
  m_createEditorBlock = nullptr;
  m_setEditorDataBlock = nullptr;
  m_setModelDataBlock = nullptr;
  m_updateEditorGeometryBlock = nullptr;
  m_destroyEditorBlock = nullptr;
}

HStyledItemDelegate::HStyledItemDelegate( PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent ) : QStyledItemDelegate( parent )
{
  m_paintBlock = hb_itemNew( paintCB );
  m_sizeHintBlock = hb_itemNew( sizeHintCB );
  m_displayTextBlock = nullptr;
  m_createEditorBlock = nullptr;
  m_setEditorDataBlock = nullptr;
  m_setModelDataBlock = nullptr;
  m_updateEditorGeometryBlock = nullptr;
  m_destroyEditorBlock = nullptr;
}

HStyledItemDelegate::~HStyledItemDelegate()
{
  if( m_paintBlock != nullptr )
  {
    hb_itemRelease( m_paintBlock );
    m_paintBlock = nullptr;
  }

  if( m_sizeHintBlock != nullptr )
  {
    hb_itemRelease( m_sizeHintBlock );
    m_sizeHintBlock = nullptr;
  }

  if( m_displayTextBlock != nullptr )
  {
    hb_itemRelease( m_displayTextBlock );
    m_displayTextBlock = nullptr;
  }

  if( m_createEditorBlock != nullptr )
  {
    hb_itemRelease( m_createEditorBlock );
    m_createEditorBlock = nullptr;
  }

  if( m_setEditorDataBlock != nullptr )
  {
    hb_itemRelease( m_setEditorDataBlock );
    m_setEditorDataBlock = nullptr;
  }

  if( m_setModelDataBlock != nullptr )
  {
    hb_itemRelease( m_setModelDataBlock );
    m_setEditorDataBlock = nullptr;
  }

  if( m_updateEditorGeometryBlock != nullptr )
  {
    hb_itemRelease( m_updateEditorGeometryBlock );
    m_updateEditorGeometryBlock = nullptr;
  }

  if( m_destroyEditorBlock != nullptr )
  {
    hb_itemRelease( m_destroyEditorBlock );
    m_destroyEditorBlock = nullptr;
  }
}

void HStyledItemDelegate::paint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const
{
  if( m_paintBlock != nullptr )
  {
    PHB_ITEM pPainter = Qt5xHb::returnQPainterObject( (void *) painter );
    PHB_ITEM pOption = Qt5xHb::returnQStyleOptionViewItemObject( (void *) &option );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    hb_vmEvalBlockV( m_paintBlock, 3, pPainter, pOption, pIndex );

    hb_itemRelease( pPainter );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
  }
  else
  {
    QStyledItemDelegate::paint( painter, option, index );
  }
}

void HStyledItemDelegate::defaultPaint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const
{
  QStyledItemDelegate::paint( painter, option, index );
}

QSize HStyledItemDelegate::sizeHint( const QStyleOptionViewItem &option, const QModelIndex &index ) const
{
  QSize size;

  if( m_sizeHintBlock != nullptr )
  {
    // PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pOption = Qt5xHb::returnQStyleOptionViewItemObject( (void *) &option );
    // PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( m_sizeHintBlock, 2, pOption, pIndex );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QSIZE" ) )
    {
      size = *( (QSize *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) ) );
    }
    else
    {
      size = QStyledItemDelegate::sizeHint( option, index );
    }

    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    size = QStyledItemDelegate::sizeHint( option, index );
  }

  return size;
}

QString HStyledItemDelegate::displayText( const QVariant &value, const QLocale &locale ) const
{
  QString data = value.toString();

  if( m_displayTextBlock != nullptr )
  {
    // PHB_ITEM pValue = hb_itemPutPtr( NULL, (QVariant *) &value );
    PHB_ITEM pValue = Qt5xHb::returnQVariantObject( (void *) &value );
    // PHB_ITEM pLocale = hb_itemPutPtr( NULL, (QLocale *) &locale );
    PHB_ITEM pLocale = Qt5xHb::returnQLocaleObject( (void *) &locale );

    PHB_ITEM pRet = hb_vmEvalBlockV( m_displayTextBlock, 2, pValue, pLocale );

    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }

    hb_itemRelease( pValue );
    hb_itemRelease( pLocale );
    hb_itemRelease( pRet );
  }

  return data;
}

QWidget * HStyledItemDelegate::createEditor( QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index ) const
{
  QWidget * widget = nullptr;

  if( m_createEditorBlock != nullptr )
  {
    // PHB_ITEM pParent = hb_itemPutPtr( NULL, (QWidget *) parent );
    PHB_ITEM pParent = Qt5xHb::returnQWidgetObject( parent );
    // PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pOption = Qt5xHb::returnQStyleOptionViewItemObject( (void *) &option );
    // PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( m_createEditorBlock, 3, pParent, pOption, pIndex );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QWIDGET" ) )
    {
      widget = (QWidget *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
    }
    else
    {
      widget = QStyledItemDelegate::createEditor(parent, option, index);
    }

    hb_itemRelease( pParent );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    widget = QStyledItemDelegate::createEditor( parent, option, index );
  }

  return widget;
}

void HStyledItemDelegate::setEditorData( QWidget *editor, const QModelIndex &index ) const
{
  if( m_setEditorDataBlock != nullptr )
  {
    PHB_ITEM pEditor = Qt5xHb::returnQWidgetObject( editor );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    hb_vmEvalBlockV( m_setEditorDataBlock, 2, pEditor, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pIndex );
  }
  else
  {
    QStyledItemDelegate::setEditorData( editor, index );
  }
}

void HStyledItemDelegate::setModelData( QWidget *editor, QAbstractItemModel *model, const QModelIndex &index ) const
{
  if( m_setModelDataBlock != nullptr )
  {
    PHB_ITEM pEditor = Qt5xHb::returnQWidgetObject( editor );
    PHB_ITEM pModel = Qt5xHb::returnQObjectObject( model );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    hb_vmEvalBlockV( m_setModelDataBlock, 3, pEditor, pModel, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pModel );
    hb_itemRelease( pIndex );
  }
  else
  {
    QStyledItemDelegate::setModelData( editor, model, index );
  }
}

void HStyledItemDelegate::updateEditorGeometry( QWidget *editor, const QStyleOptionViewItem &option, const QModelIndex &index ) const
{
  if( m_updateEditorGeometryBlock != nullptr )
  {
    PHB_ITEM pEditor = Qt5xHb::returnQWidgetObject( editor );
    PHB_ITEM pOption = Qt5xHb::returnQStyleOptionViewItemObject( (void *) &option );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    hb_vmEvalBlockV( m_updateEditorGeometryBlock, 3, pEditor, pOption, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
  }
  else
  {
    QStyledItemDelegate::updateEditorGeometry( editor, option, index );
  }
}

void HStyledItemDelegate::destroyEditor( QWidget *editor, const QModelIndex &index ) const
{
  if( m_destroyEditorBlock != nullptr )
  {
    PHB_ITEM pEditor = Qt5xHb::returnQWidgetObject( editor );
    PHB_ITEM pIndex = Qt5xHb::returnQModelIndexObject( (void *) &index );

    hb_vmEvalBlockV( m_destroyEditorBlock, 2, pEditor, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pIndex );
  }
  else
  {
    QStyledItemDelegate::destroyEditor( editor, index );
  }
}

void HStyledItemDelegate::setPaintCB( PHB_ITEM block )
{
  if( m_paintBlock != nullptr )
  {
    hb_itemRelease( m_paintBlock );
  }
  if( block != nullptr )
  {
    m_paintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setSizeHintCB( PHB_ITEM block )
{
  if( m_sizeHintBlock != nullptr )
  {
    hb_itemRelease( m_sizeHintBlock );
  }
  if( block != nullptr )
  {
    m_sizeHintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setDisplayTextCB( PHB_ITEM block )
{
  if( m_displayTextBlock != nullptr )
  {
    hb_itemRelease( m_displayTextBlock );
  }
  if( block != nullptr )
  {
    m_displayTextBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setCreateEditorCB( PHB_ITEM block )
{
  if( m_createEditorBlock != nullptr )
  {
    hb_itemRelease( m_createEditorBlock );
  }
  if( block != nullptr )
  {
    m_createEditorBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setEditorDataCB( PHB_ITEM block )
{
  if( m_setEditorDataBlock != nullptr )
  {
    hb_itemRelease( m_setEditorDataBlock );
  }
  if( block != nullptr )
  {
    m_setEditorDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setModelDataCB( PHB_ITEM block )
{
  if( m_setModelDataBlock != nullptr )
  {
    hb_itemRelease( m_setModelDataBlock );
  }
  if( block != nullptr )
  {
    m_setModelDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setUpdateEditorGeometryCB( PHB_ITEM block )
{
  if( m_updateEditorGeometryBlock != nullptr )
  {
    hb_itemRelease( m_updateEditorGeometryBlock );
  }
  if( block != nullptr )
  {
    m_updateEditorGeometryBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setDestroyEditorCB( PHB_ITEM block )
{
  if( m_destroyEditorBlock != nullptr )
  {
    hb_itemRelease( m_destroyEditorBlock );
  }
  if( block != nullptr )
  {
    m_destroyEditorBlock = hb_itemNew( block );
  }
}
