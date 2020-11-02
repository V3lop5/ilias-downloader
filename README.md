# Ilias (1 click) Downloader
Synchronisiert die Dateien von einem oder mehreren Ordnern/Kurse von dem FH-Ilias mit der eigenen Platte.
Sollte es zwischenzeitlich eine Änderung der Datei im Ilias gegeben haben, so wird die lokale Kopie umbenannt und die Datei erneut heruntergeladen.

Das Beste? Man braucht (nach der erstmaligen Einrichtung) nur einen Klick (& einen Kaffee).

Es können entweder Ordner oder Kurse zum Download ausgewählt werden. Aus den Kursen/Ordnern werden alle
- Dateien
- Unterordner 
- Übungsaufgaben
in einen vorher definierten Download-Ordner heruntergeladen. 

## Vorbereitungen
0. Falls Ilias in eine bestehende Verzeichnisstruktur heruntergeladen werden sollen, empfiehlt sich vorher eine Sicherungskopie anzulegen. 
1. (Git Bash)[https://git-scm.com/downloads] herunterladen 
2. Git Bash zur Ausführung von Dateien des Typs `.sh` (Shell-Skript) verwenden
3. Die beiden Skripte aus diesem Repository herunterladen

## Konfiguration
`IliasDownloadInit.sh` Skript wie folgt konfigurieren:

Im oberen Teil müssen Benutzername und Passwort für Ilias eingetragen werden. (Zeile 5)
```shell
# Enter ILIAS username and password here
# Modify here
ILIAS_USERNAME="mm1234s"
ILIAS_PASSWORD="password"
```

Im weiteren Verlauf kann das Verzeichnis festgelegt werden, in welches alle Ilias-Unterlagen heruntergeladen werden sollen. Die Skripte werden nur Änderungen in diesem (bzw. in den Unterordnern dieses Verzeichnisses durchführen).
```shell
# Preset your Homefolder
MY_STUDIES_FOLDER="/E/IliasTest"
```

Im weiteren Verlauf des Dokuments müssen alle Ilias Kurse/Ordner eingetragen werden, die heruntergeladen werden sollen. Hier kann der relative Pfad zum Homeverzeichnis.
```shell
# Copy for every course/folder you want to download
# Modify here
fetch_folder "593215" "$MY_STUDIES_FOLDER/Digitale Services für die Energie- und Mobolitätswende" 
```

Anmerkung: Die hier eingetragenen Download-Ordner müssen existieren. Falls die DownloAD-Ordner nicht existieren, wird das Skript auch nichts machen. (Eventuelle Unterordner werden beim Synchronisieren automatisch erstellt.)

Das Skript ist nun einsatzbereit.

## Ausführung
Doppelklick aufs ...Init.sh-Skript. Warten. Fertig.

## Hilfe, es klappt nicht
Bitte stelle sicher, dass dein Benutzername und dein Passwort korrekt sind. Falls das Passwort exotische Sonderzeichen wie `\"`, `\$`, `\"` oder `\\` enthält, müssen diese durch ein vorgestelltes Backslash `\\` escaped werden.

Sind die Download-Ordner korrekt angelegt? Prüfen und ggf. Ordner anlegen.

Du bist an einer anderen Uni als der FH-Aachen? Es sind weitere Konfigurationen notwendig. Bitte das `IliasDownload.sh` Skript prüfen.

Have you turned it off and on again?


## Credits
https://github.com/digitalshow/IliasDownload

(Ich habe lediglich ein paar Variablen geändert, damit das wundervolle Skript läuft. ... Und dann noch ein paar weitere Dinge.)