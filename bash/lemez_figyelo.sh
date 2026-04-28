#!/bin/bash
# Lemez használat figyelő szkript

# Beállítás - hány százaléknál riasszon?
HATAR=80

echo "============================="
echo "    LEMEZ FIGYELŐ"
echo "============================="
echo ""

# Lemez használat lekérése
HASZNALAT=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Jelenlegi lemez használat: $HASZNALAT%"
echo ""

# Ellenőrzés
if [ "$HASZNALAT" -gt "$HATAR" ]; then
    echo "⚠️  FIGYELEM! A lemez $HASZNALAT% tele van!"
    echo "Hamarosan megtelik - takarítás szükséges!"
else
    echo "✓ Rendben van - $HASZNALAT% használt, határ: $HATAR%"
fi

echo ""
echo "============================="
