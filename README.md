# WorkAdventure sipgate Map

In diesem Repo soll unser neues Virtuelles Büro entstehen. Du willst mitarbeiten? Super! Alles was du dafür brauchst findest du hier

## Tools you will need

Um loszustarten brauchst du:

- the [Tiled editor](https://www.mapeditor.org/) software
- "tiles" (i.e. images) - Die wichtigsten sind bereits in diesem Projekt importiert. Wenn du neue Importierst achte darauf, dass die Lizenz eine Open Source Lizenz ist und trage die Links / Quellen bitte in die [assets.txt](assets.txt) ein.

## Was kann ich beitragen?

Jeder ist willkommen der mitmachen möchte :) schau doch einfach mal im [Slack-Channel: #sipgate-workadventure](https://sipgate.slack.com/archives/C01GJ3QQHKJ) vorbei.

Du kannst gerne deinen Teamraum füllen, neue Sprites bauen die mehr nach sipgate aussehen oder sipgate einfach hübscher machen :)

Da es zu merge-Konflikten kommen kann, wenn mehrere gleichzeitig an einer Datei arbeiten, wollen wir uns im Slack-Channel absprechen. Vielleicht nutzen wir auch einfach das 3D Token vom Hubot :)

## Cloning this repo

Um dich zu beteiligen brauchst check einfach dieses Repo aus.
Bist du noch nicht in der sipgate Orga im öffentlichen Github so sprich kurz mit Mathias, Celina oder Ben und lass dich hinzufügen, dann kannst du dieses Repo auch bearbeiten.

### Loading the map in Tiled

In Tiled kannst du einfach durch "File" -> "Open" eine der <Kartenname>.json Files öffnen und losstarten.

Falls du etwas Hilfe im Umgang mit Tilded brauchst, schau dochmal hier:

- [Tiled documentation](https://doc.mapeditor.org/en/stable/manual/introduction/)
- [Tiled video tutorials](https://www.gamefromscratch.com/post/2015/10/14/Tiled-Map-Editor-Tutorial-Series.aspx)

### About WorkAdventu.re maps

Um eine Karte zu entwerfen, die von WorkAdventure gelesen werden kann, musst du einige Einschränkungen beachten.

Insbesondere müsst du:

- eine Startposition für die Spieler festlegen
- den "floor layer" konfigurieren (so dass WorkAdventure Zeichen über dem Boden, aber unter der Decke korrekt anzeigen kann)
- schließlich kannst du auch Ausgänge platzieren, die auf andere Karten verweisen

All dies wird in der [WorkAdventure-Dokumentation] (https://github.com/thecodingmachine/workadventure/#designing-a-map) beschrieben.

Und auf der howto rc3 Seite sind auch ein paar Infos zu finden: (https://howto.rc3.world/maps.html#eigene-instanzen)

### Howto: Übersichtlichkeit

Da jede Karte nur eine Datei hat, wollen wir mit den Layern versuchen etwas Ordnung zu halten.

Aktuell gibt es folgende Layer:

- stuffFront (Dinge die über der Spielerfigur angezeigt werden sollen)
- floorLayer (Die Eben für die Chars)
- stuffTop (Dinge im Hintergrund - Layer 1)
- stuffBottom (Dinge im Hintergrund - Layer 2)
- blockingObjectsTop (Dinge im Hintergrund die blockieren - Layer 1)
- blockingObjectsBottom (Dinge im Hintergrund die blockieren - Layer 2)
- wall (Die Wand)
- link_<name> (Links zu andern Seiten)
- jitsi_<name> (Links zu Jitsi Meeting Räumen)
- map_<name> (Links zu anderen Karten)
- start (Startposition der Spieler)
- bottom (der Boden)
- clearMap (der Hintergrund)

Für manche Stuff/BlockingObject gibt es 2 Layer, weil manchmal möchte man z.B. einen Computer haben und darüber eine Pflanze positionieren. Dafür braucht man dann einfach 2 Layer.

Wir wollen versuchen die neu platzierten Objekte den Layern zuzuordnen.

### Fragen

Du brauchst Hilfe? Join: [Slack-Channel: #sipgate-workadventure](https://sipgate.slack.com/archives/C01GJ3QQHKJ) oder frag Celina oder Mathias

### Pushing the map

Wenn Deine Änderungen fertig sind, müssen du sie nur "committen" und an GitHub zurück "puschen".
Warten einfach ein paar Minuten, die sipgate Karte wird automatisch geladen.
Nach einer Minute kannst du auf unserem Workadventure Server die neue Karte erkunden.

### Änderungen an der Map lokal ausprobieren.

Du kannst Änderungen an der Map lokal ausprobieren. Dazu musst du dir vorab [Node.js](https://nodejs.org/) installieren und folgendes in einem Terminal tun:

```sh
# Change to this directory
cd path/to/workadventure-office

# Install dependencies
npm install

# Start local webserver
npm start
```

Du solltest den aktuellen Stand der Map jetzt unter https://play.workadventu.re/_/global/localhost:8080/map.json ausprobieren können.
