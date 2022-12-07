/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTTABLEMODEL_H
#define HABSTRACTTABLEMODEL_H

#include <QtCore/QAbstractTableModel>
#include <QtCore/QDate>
#include <QtCore/QSize>
#include <QtGui/QBrush>
#include <QtGui/QColor>
#include <QtGui/QFont>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HAbstractTableModel : public QAbstractTableModel
{
  Q_OBJECT

public:
  HAbstractTableModel( QObject * parent = nullptr );
  virtual ~HAbstractTableModel();

private:
  PHB_ITEM m_rowCountCB;
  PHB_ITEM m_columnCountCB;

  PHB_ITEM m_itemDisplayCB;
  PHB_ITEM m_itemDecorationCB;
  PHB_ITEM m_itemEditCB;
  PHB_ITEM m_itemToolTipCB;
  PHB_ITEM m_itemStatusTipCB;
  PHB_ITEM m_itemWhatsThisCB;
  PHB_ITEM m_itemSizeHintCB;
  PHB_ITEM m_itemFontCB;
  PHB_ITEM m_itemTextAlignmentCB;
  PHB_ITEM m_itemBackgroundCB;
  PHB_ITEM m_itemForegroundCB;
  PHB_ITEM m_itemCheckStateCB;
  PHB_ITEM m_itemAccessibleTextCB;
  PHB_ITEM m_itemAccessibleDescriptionCB;

  PHB_ITEM m_horizontalHeaderDisplayCB;
  PHB_ITEM m_horizontalHeaderDecorationCB;
  PHB_ITEM m_horizontalHeaderToolTipCB;
  PHB_ITEM m_horizontalHeaderSizeHintCB;
  PHB_ITEM m_horizontalHeaderFontCB;
  PHB_ITEM m_horizontalHeaderTextAlignmentCB;
  PHB_ITEM m_horizontalHeaderBackgroundCB;
  PHB_ITEM m_horizontalHeaderForegroundCB;

  PHB_ITEM m_verticalHeaderDisplayCB;
  PHB_ITEM m_verticalHeaderDecorationCB;
  PHB_ITEM m_verticalHeaderToolTipCB;
  PHB_ITEM m_verticalHeaderSizeHintCB;
  PHB_ITEM m_verticalHeaderFontCB;
  PHB_ITEM m_verticalHeaderTextAlignmentCB;
  PHB_ITEM m_verticalHeaderBackgroundCB;
  PHB_ITEM m_verticalHeaderForegroundCB;

  PHB_ITEM m_flagsCB;
  PHB_ITEM m_setDataCB;

public:
  void setRowCountCB( PHB_ITEM block );
  void setColumnCountCB( PHB_ITEM block );

  void setCB( int role, PHB_ITEM block );
  void setDisplayRoleCB( PHB_ITEM block );
  void setDecorationRoleCB( PHB_ITEM block );
  void setEditRoleCB( PHB_ITEM block );
  void setToolTipRoleCB( PHB_ITEM block );
  void setStatusTipRoleCB( PHB_ITEM block );
  void setWhatsThisRoleCB( PHB_ITEM block );
  void setSizeHintRoleCB( PHB_ITEM block );
  void setFontRoleCB( PHB_ITEM block );
  void setTextAlignmentRoleCB( PHB_ITEM block );
  void setBackgroundRoleCB( PHB_ITEM block );
  void setForegroundRoleCB( PHB_ITEM block );
  void setCheckStateRoleCB( PHB_ITEM block );
  void setAccessibleTextRoleCB( PHB_ITEM block );
  void setAccessibleDescriptionRoleCB( PHB_ITEM block );

  void setHorizontalHeaderCB( int role, PHB_ITEM block );
  void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block );
  void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block );
  void setHorizontalHeaderToolTipRoleCB( PHB_ITEM block );
  void setHorizontalHeaderSizeHintRoleCB( PHB_ITEM block );
  void setHorizontalHeaderFontRoleCB( PHB_ITEM block );
  void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block );
  void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block );
  void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block );

  void setVerticalHeaderCB( int role, PHB_ITEM block );
  void setVerticalHeaderDisplayRoleCB( PHB_ITEM block );
  void setVerticalHeaderDecorationRoleCB( PHB_ITEM block );
  void setVerticalHeaderToolTipRoleCB( PHB_ITEM block );
  void setVerticalHeaderSizeHintRoleCB( PHB_ITEM block );
  void setVerticalHeaderFontRoleCB( PHB_ITEM block );
  void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block );
  void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block );
  void setVerticalHeaderForegroundRoleCB( PHB_ITEM block );

  void setFlagsCB( PHB_ITEM block );
  void setSetDataCB( PHB_ITEM block );

  QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount( const QModelIndex & parent = QModelIndex() ) const;
  int columnCount( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();
  //QModelIndex createIndex ( int row, int column );
  Qt::ItemFlags flags( const QModelIndex &index ) const;
  bool setData( const QModelIndex &index, const QVariant &value, int role = Qt::EditRole );
};

#endif /* HABSTRACTTABLEMODEL_H */
