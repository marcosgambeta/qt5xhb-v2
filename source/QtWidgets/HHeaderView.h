/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HHEADERVIEW_H
#define HHEADERVIEW_H

#include <QtWidgets/QHeaderView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HHeaderView : public QHeaderView
{
  Q_OBJECT
public:
  HHeaderView( Qt::Orientation orientation, QWidget *parent = nullptr );
  ~HHeaderView();

  void paintSection( QPainter *painter, const QRect &rect, int logicalIndex ) const;

private:
  PHB_ITEM m_paintSectionBlock;

public:
  void setPaintSectionCB( PHB_ITEM block );
};

#endif /* HHEADERVIEW_H */
