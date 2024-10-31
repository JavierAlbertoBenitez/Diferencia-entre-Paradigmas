# DIFERENCIA ENTRE LOS PARADIGMAS

Veremos la diferencia entre los diferentes paradigmas con un programa sencillo, averiguar si un número es par o no.

## LÓGICO

En el paradigma lógico el programa será una **colección de hechos**, algo que sabemos que es verdad, llamada **base de conocimiento**. Y una **colección de predicados** llamadas reglas, la herramienta que utilizamos para deducir si algo es verdad. Las reglas funcionan en base a la base de conocimientos, devolviendo nuevos valores de verdad. 

En este caso debemos consultar si es verdad que el resto de un número dividido por 2 es cero. Para esto usaremos el is y el mod, el is consulta si es verdad o falso, y el mod devuelve el resto.

```Prolog

esPar(Numero):- 0 is Numero mod 2
```

Podes probar este código [Ingresando Acá](https://github.com/JavierAlbertoBenitez/Diferencia-entre-Paradigmas/blob/master/codigos/logico/esPar.pl)

vamos a probar si el 2 y el 3 son números pares.

![consola logico](/imagenes/logico.png)

Como era de esperar es verdadero que el 2 es par y es falso que el 3 es par.

## FUNCIONAL

El paradigma funcional establece relaciones entre los individuos a través del uso de funciones que cumplen el principio de unicidad y existencia, que al hacer evaluadas obtenemos un resultado, siendo todas las funciones inmutables.

En este caso deberíamos crear una función esPar que establezca la relación entre un número y el 2, si el resto de dicho número dado al ser dividido por 2 es cero (estableciendo a su vez una relación entre el resto y el cero), devolviendo si es verdadero o no.

Para eso debemos crear la función esPar que recibe un número y la función establece la relación entre el número y dos haciendo la división de dicho número con 2 y consultando si el resto es cero. Esto se realiza con el operador (y también función, pues las operadores son funciones) mod y el operador ==.

```Haskell

esPar numero = mod numero 2 == 0
```

Podes probar este código [Ingresando Acá](https://github.com/JavierAlbertoBenitez/Diferencia-entre-Paradigmas/blob/master/codigos/funcional/src/Lib.hs)

al igual que en lógico vamos a consultar si el 2 y el 3 son números pares.

![consola funcional](/imagenes/funcional.png)

como era de esperar al igual que en objeto, devolvió que el 2 es correcto que es par, mientras que el 3 es falso que es par.

## Objeto

Este paradigma considera a todo el universo como un objeto y le consulta, interactuando a través de mensajes esperando recibir un comportamiento o respuesta de dicho objeto (esto es definido por los métodos).

En este caso los números serían un objeto, por lo que le deberíamos enviarle un mensaje a dicho objeto preguntándole si es par, esperando recibir la respuesta si lo (true) o si no lo es (false).

Hay varios maneras posibles para esto. en todos debemos crear un objeto número y un método esPar.

En algunos podemos usar métodos ya definidos por en la biblioteca
de Wollok.

### Método 1

En este metodo no usaremos ningún método definido en la biblioteca de Wollok, para este método usaremos simplemente el mensaje operación
% que nos devuelve el resto y el comparador == que nos verifica si algo es igual a otra cosa, devolviendo True o False dependiendo si cumple o no con la condición.

```Wollok

object Numero{
    method esPar(num) = num % 2 == 0
}
```

Podes probar este código [Ingresando Acá](https://github.com/JavierAlbertoBenitez/Diferencia-entre-Paradigmas/blob/master/codigos/objeto/src/metodo1.wlk)

como en el resto de los paradigmas consultaremos si el 2 y 3 son números pares. Para este le manderemos el mensaje esPar al objeto número.

![consola metodo1](/imagenes/metodo1.png)

Como era de esperar nos dira que el 2 es cierto (True) que es par y
que no es cierto (False) que el 3 es par.

### Método 2

La otra es usar un método similar al primero, pero con el método definido por en la biblioteca wollok con el métod rem, este al
igual que el % nos devuelve el resto de un dividir un número por otro, por lo que también debemos usar == 0 para consultar si el resto es 0 o no para saber si es par o no.

```Wollok

object numero{
    method esPar(num) = num.rem(2) == 0
}
```

Podes probar este código [Ingresando Acá](https://github.com/JavierAlbertoBenitez/Diferencia-entre-Paradigmas/blob/master/codigos/objeto/src/metodo2.wlk)

Realizamos la misma consulta que el método 1 y obtendremos la misma respuesta.

![consola metodo2](/imagenes/metodo2.png)

### Método 3

Este método ya no usaremos el == consultaremos directamente con un método de la biblioteca wollok llamado even, que nos devuelve por si solo si un número es par o no.

```Wollok

object numero{
    esPar(num) = num.even()
}
```

Podes probar este código [Ingresando Acá](https://github.com/JavierAlbertoBenitez/Diferencia-entre-Paradigmas/blob/master/codigos/objeto/src/metodo3.wlk)

al realizar la misma consulta que los otros dos métodos obtenemos que

![consola metodo3](/imagenes/metodo3.png)
