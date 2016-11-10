## Todo List Exercise
----
**install**
```
npm install
```
Dependency module install

**build**
```
npm run build
```
Do some magic with ES6 to create ES5 code.

**Run develop Server**
```
npm start
```

**clean**
```
rm -f dist/*
```

Delete existing dist files
You can see result in

OS X : http://0.0.0.0:8080

Linux : http://localhost:8080

Windows : http://localhost:8080

**Explicacion**

Que tal muchachos? lo prometido es deuda. Acá les dejo el ejercicio del TodoList que yo implemente.
obviamente puede ser mejorado en muchos aspectos pero solo quería reforzar un poco los conceptos que
los muchachos les han venido enseñando.

El ejercicio es bien sencillo. Los requerimientos son los siguientes:

1. Cargar una lista de todo items en el index.html que existe en memoria (Como una mejora, en un futuro podemos implementar la obtención de esos todo items desde el servidor).
2. Cada todo item debe tener un label y un checkbox.
3. Cuando se haga click en el checkbox del todo item, se debe marcar como 'checked' y ademas debe aparecer una linea sobre el label (como si estuviese tachado).
4. Debe existir un campo de texto y un boton para agregar nuevos todo items. Al presionar el boton, se crea un todo item con el texto del input
5. Si no hay texto en el input, se debe colocar un mensaje de error indicando que el campo es obligatorio, y obviamente no se puede agregar ese nuevo todo item.

Eso es toda la funcionalidad, cualquier cosa me escriben por el slack ya que romer me agregó.

**Cosas para mejorar**

1. Traer los todo items del servidor
2. Al crear un todo item, guardarlo en el servidor
3. Agregar bootstrap para darle estilos a la lista de items
4. Verificar de que manera se puede mejorar la implementación del mensaje de error en el componente AddTodoItem

**Jquery**

Para poder utulizar jquery de manera global, tuve que hacer una configuración en el web.config:

plugins: [
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery"
    })
]

busquen ese pedazo de código en ese archivo. Además tuve que hacer un require de webpack al principio para poder agregar la configuración. De resto, nada del otro mundo!


