El ejercicio:
=============

Se tiene un molde (con forma de tablero de 3x3) y 10 unidades de distintos ingredientes (3 Dulces, 3 Frutas, 3 Confites, 1 Masita), para hacer un pastel.

Se considera que un pastel de 9 ingredientes es rico cuando tres mismos ingredientes están alineados vertical u horizontalmente en el molde. La Masita es especial, puede alinearse con cualquier ingrediente.

Calcula la cantidad máxima de pasteles ricos distintos que pueden realizarse.

El código:
==========

Todo el código fue realizado en el lenguaje de programación Ruby.
A continuación algunas traducciones utilizadas en el programa:

```ruby
  Pie => pastel,
  sweet: dulce,
  candy: confite,
  fruit: fruta,
  bisqt: masita
```

Algunas consideraciones:
========================

> "Es una propiedad conocida entre los pasteleros del mundo,
> que la posición en la que se mete un pastel en el horno 
> afecta directamente su sabor."
> > SomePieBaker.

1-  Dados dos pasteles A y B, tales que B sea igual a A rotado 90º, se considererá que A y B son pasteles diferentes. Lo mismo aplica para cualquier rotación o para matrices transpuestas.

```ruby
[:sweet, :sweet, :sweet]    [:candy, :fruit, :sweet]
[:fruit, :candy, :fruit] != [:fruit, :candy, :sweet]
[:candy, :fruit, :bisqt]    [:bisqt, :fruit, :sweet]

```

Dada esta consideración, se pueden formar con estos ingredientes un total de 16800 pasteles diferentes.
Lo que sigue es averiguar cuantos de esos 16800 pasteles son ricos.

Solución:
=========

