/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HSTYLEDITEMDELEGATE_H
#define HSTYLEDITEMDELEGATE_H

#include <QtWidgets/QStyledItemDelegate>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HStyledItemDelegate : public QStyledItemDelegate
{
  Q_OBJECT
public:
  explicit HStyledItemDelegate( QObject *parent = nullptr );
  HStyledItemDelegate( PHB_ITEM paintBlock, QObject *parent = nullptr );
  HStyledItemDelegate( PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = nullptr );
  ~HStyledItemDelegate();

  void paint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const;
  void defaultPaint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const;
  QSize sizeHint( const QStyleOptionViewItem &option, const QModelIndex &index ) const;
  QString displayText( const QVariant &value, const QLocale &locale ) const;
  QWidget * createEditor( QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index ) const;
  void setEditorData( QWidget *editor, const QModelIndex &index ) const;
  void setModelData( QWidget *editor, QAbstractItemModel *model, const QModelIndex &index ) const;
  void updateEditorGeometry( QWidget *editor, const QStyleOptionViewItem &option, const QModelIndex &index ) const;
  void destroyEditor( QWidget *editor, const QModelIndex &index ) const;

private:
  PHB_ITEM m_paintBlock;
  PHB_ITEM m_sizeHintBlock;
  PHB_ITEM m_displayTextBlock;
  PHB_ITEM m_createEditorBlock;
  PHB_ITEM m_setEditorDataBlock;
  PHB_ITEM m_setModelDataBlock;
  PHB_ITEM m_updateEditorGeometryBlock;
  PHB_ITEM m_destroyEditorBlock;

public:
  void setPaintCB( PHB_ITEM block );
  void setSizeHintCB( PHB_ITEM block );
  void setDisplayTextCB( PHB_ITEM block );
  void setCreateEditorCB( PHB_ITEM block );
  void setEditorDataCB( PHB_ITEM block );
  void setModelDataCB( PHB_ITEM block );
  void setUpdateEditorGeometryCB( PHB_ITEM block );
  void setDestroyEditorCB( PHB_ITEM block );
};

#endif /* HSTYLEDITEMDELEGATE_H */
