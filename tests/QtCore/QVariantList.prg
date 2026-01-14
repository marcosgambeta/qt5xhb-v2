//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oVariant
   LOCAL aVariantList
   LOCAL n

   oVariant := QVariant():new19({"one", "two", "three", "four", "five"})

   aVariantList := oVariant:toList()

   ? len(aVariantList)

   FOR n := 1 TO len(aVariantList)
      ? aVariantList[n]:toString()
   NEXT n

   WAIT

RETURN NIL
