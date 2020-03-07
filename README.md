
# Mandelbrot-Menge

## Starten des Programms
Das Programm ist in Delphi geschrieben, welches eine Unterform der Programmiersprache Pascal ist.
</br>
Um das Programm zu starten nutzen Sie bitte die "Project1.exe" Datei, im Ordner "Mandelbrot-Menge".

## Mandelbrot Menge
Um eine Mandelbrot Menge zu erzeugen, können Sie bereits die Voreinstellungen übernehmen. Wenn Sie allerdings eine Julia Menge erzeugen wollen, können Sie die Checkbox oben betätigen, dass Programm erzeugt dann automatisch, beim betätigen des Buttons, eine Julia Menge. 
</br>
#### Farben </br>
<img align="right" src="/Images/Farben.png"></img>
Bei den Farben bestimmen die Zahlen den jeweiligen Anteil im erzeugten Bild. Über den Refresh Button neben dem Textfield können neue Werte vergeben werden oder einfach im Textfield eingetragen werden.  

#### Iterationen </br>
<img align="right" src="/Images/Iteration.png"></img>
Die Iteration beschreibt in diesem Fall wie tief das Bild sein soll. Ist der Wert kleiner als -17 so wird nur ein schwarzes Bild zurückgegeben. Der Wert nach oben ist jedoch frei wählbar, kann aber zu erhöhter Rechnerleistung führen. Deswegen empfehle ich keinen Wert größer als 10.000.000, da ansonsten das Programm abstürzen könnte.
#### Zoom </br>
<img align="right" src="/Images/Zoom.png"></img>
Die Zoom-Funktion funktioniert in diesem Fall umgekehrt. Werden die Zahlen größer so wird das erzeugte Bild kleiner, werden die Zahlen kleiner, wird dementsprechend auch das Bild größer.
#### Verändern von A </br>
A steht in dem Fall für die Variable C. Die Funktion ist eigentlich nur für der Julia Menge notwendig, da dort ein festes C verwendet wird. Bei der Mandelbrot Menge verändert es allerdings die Startbedingungen und erzeugt somit eine neue Mandelbrot Menge.

## Julia Menge <br>
Um ein Julia Menge zu erzeugen nutzen Sie bitte die Checkbox und wählen den Punkt "Julia-Menge". Beim betätigen des Buttons wird dann automatisch eine Julia Menge erzeugt, mit den jeweiligen Werten, die für Real und Imaginär eingetragen sind. Weiteres im Punkt "Verändern von C".

#### Farben </br>
Ähnlicher Ablauf wie bei der Mandelbrot Menge
#### Iterationen </br>
Ähnlicher Ablauf wie bei der Mandelbrot Menge
#### Zoom </br>
Ähnlicher Ablauf wie bei der Mandelbrot Menge
#### Verändern von C </br>
<img align="right" src="/Images/a.png"></img>
Anders als die Mandelbrot Menge wird die Julia Menge über ein festes C erzeugt. Die Werte dafür können über das Feld "Verändern von a" festgelegt werden. Je nach Wert erhält man eine unterschiedliche Julia Menge. Das ganze Geschehen spielt sich ungefähr in einem Intervall von, <br> -4 < Real < 4 und -4 < Imaginär < 4. <br>
<br>
<img src="/Images/Julia.png" width="930" height="300"></img>
<br>
<p align="left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;C = 0,16 + 0,6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C = 0,6 + 0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C = -0,75 + 0,1</p>
<br>

## Bekannte Fehler
<img align="right" src="/Images/Issue.png" width="400" height="300"></img>
Ein bekannter Fehler ist, wenn das Programm bei der Hälfte kurz stehen bleibt und danach keine Bild erzeugt, sondern eine leere Oberfläche zurückgibt. Um das Problem zu lösen hilft meistens nur ein Neustart des Programms, da ich bis jetzt keine Möglichkeit gefunden habe, um diesen Fehler zu beheben. Als Beispiel sieht die Oberfläche wie folgt aus.
<br>
<br>
Dieser Fehler kann ebenfalls dann ausgelöst werden, wenn das Programm beim Entwickeln des Bildes auf der Desktop Oberfläche verschoben wird oder Sie den Fokus auf ein anderes Programm legen.

