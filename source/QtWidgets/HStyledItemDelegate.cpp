/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HStyledItemDelegate.h"

HStyledItemDelegate::HStyledItemDelegate(QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = nullptr;
  sizeHintBlock = nullptr;
  displayTextBlock = nullptr;
  createEditorBlock = nullptr;
  setEditorDataBlock = nullptr;
  setModelDataBlock = nullptr;
  updateEditorGeometryBlock = nullptr;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = nullptr;
  displayTextBlock = nullptr;
  createEditorBlock = nullptr;
  setEditorDataBlock = nullptr;
  setModelDataBlock = nullptr;
  updateEditorGeometryBlock = nullptr;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = hb_itemNew( sizeHintCB );
  displayTextBlock = nullptr;
  createEditorBlock = nullptr;
  setEditorDataBlock = nullptr;
  setModelDataBlock = nullptr;
  updateEditorGeometryBlock = nullptr;
}

HStyledItemDelegate::~HStyledItemDelegate ()
{
  if( paintBlock != nullptr )
  {
    hb_itemRelease( paintBlock );
    paintBlock = nullptr;
  }

  if( sizeHintBlock != nullptr )
  {
    hb_itemRelease( sizeHintBlock );
    sizeHintBlock = nullptr;
  }

  if( displayTextBlock != nullptr )
  {
    hb_itemRelease( displayTextBlock );
    displayTextBlock = nullptr;
  }

  if( createEditorBlock != nullptr )
  {
    hb_itemRelease( createEditorBlock );
    createEditorBlock = nullptr;
  }

  if( setEditorDataBlock != nullptr )
  {
    hb_itemRelease( setEditorDataBlock );
    setEditorDataBlock = nullptr;
  }

  if( setModelDataBlock != nullptr )
  {
    hb_itemRelease( setModelDataBlock );
    setEditorDataBlock = nullptr;
  }

  if( updateEditorGeometryBlock != nullptr )
  {
    hb_itemRelease( updateEditorGeometryBlock );
    updateEditorGeometryBlock = nullptr;
  }
}

void HStyledItemDelegate::paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  if( paintBlock != nullptr )
  {
    PHB_ITEM pPainter = hb_itemPutPtr( NULL, (QPainter *) painter );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( paintBlock, 3, pPainter, pOption, pIndex );

    hb_itemRelease( pPainter );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::paint(painter, option, index);
  }
}

void HStyledItemDelegate::defaultPaint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QStyledItemDelegate::paint(painter, option, index);
}

QSize HStyledItemDelegate::sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QSize size;

  if( sizeHintBlock != nullptr )
  {
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( sizeHintBlock, 2, pOption, pIndex );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QSIZE" ) )
    {
      size = *( (QSize *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) ) );
    }
    else
    {
      size = QStyledItemDelegate::sizeHint(option, index);
    }

    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    size = QStyledItemDelegate::sizeHint(option, index);
  }

  return size;
}

QString HStyledItemDelegate::displayText(const QVariant &value, const QLocale &locale) const
{
  QString data = value.toString();

  if( displayTextBlock != nullptr )
  {
    PHB_ITEM pValue = hb_itemPutPtr( NULL, (QVariant *) &value );
    PHB_ITEM pLocale = hb_itemPutPtr( NULL, (QLocale *) &locale );

    PHB_ITEM pRet = hb_vmEvalBlockV( displayTextBlock, 2, pValue, pLocale );

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

QWidget * HStyledItemDelegate::createEditor(QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QWidget * widget = nullptr;

  if( createEditorBlock != nullptr )
  {
    PHB_ITEM pParent = hb_itemPutPtr( NULL, (QWidget *) parent );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( createEditorBlock, 3, pParent, pOption, pIndex );

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
    widget = QStyledItemDelegate::createEditor(parent, option, index);
  }

  return widget;
}

void HStyledItemDelegate::setEditorData(QWidget *editor, const QModelIndex &index) const
{
  if( setEditorDataBlock != nullptr )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( setEditorDataBlock, 2, pEditor, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::setEditorData(editor, index);
  }
}

void HStyledItemDelegate::setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
{
  if( setModelDataBlock != nullptr )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pModel = hb_itemPutPtr( NULL, (QAbstractItemModel *) model );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( setModelDataBlock, 3, pEditor, pModel, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pModel );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::setModelData(editor, model, index);
  }
}

void HStyledItemDelegate::updateEditorGeometry(QWidget *editor, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  if( updateEditorGeometryBlock != nullptr )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( updateEditorGeometryBlock, 3, pEditor, pOption, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::updateEditorGeometry(editor, option, index);
  }
}

void HStyledItemDelegate::setPaintCB ( PHB_ITEM block )
{
  if( paintBlock != nullptr )
  {
    hb_itemRelease( paintBlock );
  }
  if( block != nullptr )
  {
    paintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setSizeHintCB ( PHB_ITEM block )
{
  if( sizeHintBlock != nullptr )
  {
    hb_itemRelease( sizeHintBlock );
  }
  if( block != nullptr )
  {
    sizeHintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setDisplayTextCB ( PHB_ITEM block )
{
  if( displayTextBlock != nullptr )
  {
    hb_itemRelease( displayTextBlock );
  }
  if( block != nullptr )
  {
    displayTextBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setCreateEditorCB ( PHB_ITEM block )
{
  if( createEditorBlock != nullptr )
  {
    hb_itemRelease( createEditorBlock );
  }
  if( block != nullptr )
  {
    createEditorBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setEditorDataCB ( PHB_ITEM block )
{
  if( setEditorDataBlock != nullptr )
  {
    hb_itemRelease( setEditorDataBlock );
  }
  if( block != nullptr )
  {
    setEditorDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setModelDataCB ( PHB_ITEM block )
{
  if( setModelDataBlock != nullptr )
  {
    hb_itemRelease( setModelDataBlock );
  }
  if( block != nullptr )
  {
    setModelDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setUpdateEditorGeometryCB ( PHB_ITEM block )
{
  if( updateEditorGeometryBlock != nullptr )
  {
    hb_itemRelease( updateEditorGeometryBlock );
  }
  if( block != nullptr )
  {
    updateEditorGeometryBlock = hb_itemNew( block );
  }
}
