# Logo-Platzierer (nl-header)

Setzt Logos automatisch in ein **200 × 80 px** Feld (z. B. für den Newsletter-Header):
linksbündig, mit natürlichem Abstand links, oben und unten – egal ob das Logo quadratisch
oder sehr breit ist.

Läuft komplett lokal im Browser, ohne Installation und ohne Upload ins Internet.

## Einrichtung (einmalig)

1. [Git for Windows](https://git-scm.com/download/win) installieren (falls noch nicht vorhanden).
2. Repository herunterladen (in einem beliebigen Ordner, z. B. per Rechtsklick → „Open Git Bash here“):

   ```bash
   git clone -b main https://github.com/Dinosbs/nl-header.git
   ```

## Benutzung

1. `logo-platzierer.html` doppelklicken – öffnet sich im Browser.
2. Logo(s) ins Fenster ziehen, per Klick auswählen oder mit **Strg+V** einfügen.
3. **JPG herunterladen** (oder **Alle herunterladen**). Dateiname: `<logo>_200x80.jpg` (bzw. `.png`, wenn PNG gewählt ist).

Unterstützt: PNG, JPG, SVG, WebP, GIF. Am besten SVG oder große PNGs verwenden.

## Aktualisieren

`update.bat` doppelklicken – holt die neueste Version vom Branch `main` (`git pull`).

## So wird platziert

1. **Zuschneiden:** Transparenter Leerraum und weiße Ränder um das Logo werden entfernt.
   Farbige, vollflächige Logos (z. B. ein rotes Quadrat mit Schrift) bleiben unverändert.
2. **Größe:** Quadratische Logos nutzen die volle Höhe (80 px − 2 × Abstand). Je breiter ein
   Logo, desto flacher wird es – aber gedämpft, damit breite Schriftzüge nicht winzig werden
   und quadratische Logos nicht übermächtig wirken. Formel: `Höhe = maxHöhe / Seitenverhältnis^0,3`.
3. **Position:** Linksbündig mit Abstand, vertikal mittig. Rechts bleibt mindestens derselbe
   Abstand wie links.

Ergebnis mit den Standardwerten (Abstand 5 px):

| Seitenverhältnis  | Logogröße    |
|-------------------|--------------|
| 1 : 1             | 70 × 70 px   |
| 2 : 1             | 114 × 57 px  |
| 3 : 1             | 151 × 50 px  |
| 4 : 1             | 185 × 46 px  |
| 5 : 1 und breiter | 190 px breit |

## Einstellungen

- **Abstand** – Abstand links/oben/unten (Standard 5 px).
- **Hintergrund** – Standard *Weiß*. Alternativ *Automatisch* (transparent bzw. Hintergrundfarbe
  des Logos), *Transparent* oder eigene Farbe. JPG hat keine Transparenz – dort wird weiß gefüllt.
- **Format** – JPG (Standard) oder PNG.
- **Export** – 200 × 80 px oder 400 × 160 px (@2x, für scharfe Darstellung auf Retina-Displays).
- **Feinjustierung Größe** – pro Logo 70–130 %, falls eins optisch zu groß/klein wirkt
  (Doppelklick auf den Regler setzt auf 100 % zurück).
- **Erweitert** – Feldgröße, Stärke des Ausgleichs für breite Logos, automatisches Zuschneiden an/aus.

Die Einstellungen merkt sich der Browser.
