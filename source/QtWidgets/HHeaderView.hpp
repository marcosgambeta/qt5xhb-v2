//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef HHEADERVIEW_H
#define HHEADERVIEW_H

#include <QtWidgets/QHeaderView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

class HHeaderView : public QHeaderView
{
  Q_OBJECT
public:
  HHeaderView(Qt::Orientation orientation, QWidget *parent = nullptr);
  ~HHeaderView();

  void paintSection(QPainter *painter, const QRect &rect, int logicalIndex) const;

private:
  PHB_ITEM m_paintSectionBlock;

public:
  void setPaintSectionCB(PHB_ITEM block);
};

#endif // HHEADERVIEW_H
