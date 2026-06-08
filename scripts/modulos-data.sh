#!/bin/bash
# Datos de los 25 módulos del proyecto.
# Cada módulo se define como una función que imprime sus campos separados por el delimitador |||

modulo_01() {
cat << 'EOF'
🍎|||Clasificación de frutas frescas vs. en mal estado|||Comprender cómo una CNN distingue texturas y colores característicos de frutas sanas frente a frutas deterioradas, identificando qué filtros capturan bordes, manchas y variaciones de tono relevantes para la clasificación.|||Abrir CNN Explainer en el navegador y observar la arquitectura completa (capas conv, relu, maxpool, flatten, dense).###Seleccionar imágenes de frutas sanas (manzana roja brillante) y cargarlas usando el botón de subida de imagen.###Activar la visualización de la primera capa convolucional y observar qué filtros resaltan bordes y colores.###Repetir con una imagen de fruta deteriorada (manzana con manchas) y comparar qué mapas de activación cambian.###Revisar la capa ReLU justo después de la convolución para ver cómo se eliminan las activaciones negativas.###Avanzar a la capa MaxPooling y notar cómo se reduce la resolución conservando las características dominantes.###Observar las activaciones en capas más profundas y anotar cuáles se "encienden" diferente entre ambas frutas.###Llegar a la capa densa final y verificar la probabilidad de salida asignada a cada clase.###Registrar en una tabla las diferencias de activación entre la fruta sana y la deteriorada por cada capa.###Concluir qué características visuales fueron más determinantes para la decisión del modelo.
EOF
}

modulo_02() {
cat << 'EOF'
🔢|||Detección de dígitos escritos a mano (0–9)|||Explorar cómo la CNN procesa imágenes de dígitos dibujados a mano, rastreando la progresión de características simples (trazos) hasta representaciones abstractas que permiten identificar cada número.|||Abrir CNN Explainer y familiarizarse con el panel de entrada (28×28 px predeterminado).###Dibujar el dígito "0" con la herramienta de dibujo incluida en la herramienta.###Observar en la primera capa convolucional cómo los filtros detectan la curva circular del cero.###Cambiar al dígito "1" y comparar qué filtros se activan ahora con el trazo vertical.###Avanzar capa a capa presionando los nodos intermedios y notar cómo las formas se vuelven más abstractas.###Usar el dígito "7" y comparar sus activaciones con las del "1" en capas profundas.###Revisar el vector de salida (softmax) y verificar que la clase predicha corresponde al dígito dibujado.###Modificar ligeramente el dígito (inclinarlo) y observar si la predicción cambia.###Anotar para cada dígito probado cuál capa convolucional mostró la mayor diferencia de activación.###Elaborar una comparación visual describiendo el recorrido de cada dígito a través de la red.
EOF
}

modulo_03() {
cat << 'EOF'
👕|||Reconocimiento de patrones en ropa (camiseta vs. pantalón)|||Analizar cómo los filtros convolucionales capturan formas geométricas asociadas a prendas de vestir y cómo estas representaciones guían la clasificación entre categorías similares.|||Buscar imágenes simples de una camiseta y un pantalón en fondo blanco.###Cargar la imagen de la camiseta en CNN Explainer mediante el botón de carga.###Activar la vista de la primera capa y observar qué filtros capturan la silueta de la prenda.###Anotar visualmente qué filtros detectan mangas, cuello o dobladillos.###Cargar la imagen del pantalón y comparar las activaciones en la misma capa.###Avanzar a la segunda capa convolucional y observar cómo se combinan los bordes detectados.###Revisar la capa flatten y entender cómo se convierte el mapa 2D en un vector.###Observar la capa densa y las conexiones hacia las probabilidades de salida.###Modificar la imagen (rotar 90°) y verificar si la red sigue clasificando correctamente.###Documentar qué filtros fueron exclusivos de cada prenda y cuáles compartieron activación.
EOF
}

modulo_04() {
cat << 'EOF'
👓|||Identificación de caras con y sin lentes|||Estudiar qué características faciales capta la CNN al distinguir rostros con lentes de aquellos sin ellos, centrándose en los filtros que detectan formas circulares o rectangulares asociadas a los lentes.|||Conseguir dos imágenes de rostros frontales: uno con lentes y uno sin ellos.###Cargar la imagen sin lentes y observar la activación de la primera capa conv.###Identificar qué filtros resaltan los ojos, cejas y contorno del rostro.###Cargar la imagen con lentes y comparar las mismas posiciones de filtro.###Buscar en la segunda capa convolucional filtros que respondan específicamente al marco de los lentes.###Avanzar a la capa ReLU y observar cómo se suprimen regiones de fondo sin importancia.###Revisar la capa MaxPooling y verificar que los rasgos distintivos persisten tras la reducción.###Llegar a la capa densa y anotar la distribución de probabilidades para ambas clases.###Intentar con una imagen de lentes de sol y observar si la activación cambia respecto a lentes ópticos.###Concluir qué capa fue la más "decisiva" para distinguir entre ambas categorías.
EOF
}

modulo_05() {
cat << 'EOF'
🐶|||Diferenciación entre perros y gatos|||Comprender cómo una CNN aprende rasgos discriminativos entre especies visualmente similares (hocico, orejas, textura del pelaje), rastreando las activaciones desde bordes simples hasta patrones complejos.|||Obtener una imagen clara de un perro y una de un gato, ambas en posición frontal.###Cargar la imagen del perro y activar la visualización de todas las capas convolucionales.###Identificar en la primera capa qué filtros capturan el contorno de las orejas.###Avanzar a la segunda capa y observar cómo se combinan los detectores de borde.###Cargar la imagen del gato y comparar capa a capa con el perro.###Prestar atención a la forma de las orejas y el hocico en las activaciones intermedias.###Revisar qué neuronas de la capa flatten tienen valores más altos para cada animal.###Observar la capa de salida y anotar la confianza del modelo en la clasificación.###Probar con una imagen de ambos animales juntos y analizar qué clase "domina".###Documentar las diferencias de activación por capa en una tabla comparativa.
EOF
}

modulo_06() {
cat << 'EOF'
🛑|||Clasificación de señales de tráfico (pare vs. ceda)|||Analizar cómo la red neuronal distingue señales de tráfico con base en forma, color y texto, comprendiendo qué capas son responsables de cada tipo de característica visual.|||Obtener imágenes limpias de una señal de "PARE" (octágono rojo) y una de "CEDA EL PASO" (triángulo).###Cargar la señal de PARE y observar las activaciones en la primera capa convolucional.###Identificar qué filtros detectan la forma octagonal y el color rojo intenso.###Cargar la señal de CEDA y comparar las activaciones con las de PARE.###Avanzar a capas más profundas y verificar si la forma geométrica se vuelve más abstracta.###Revisar la capa ReLU para identificar zonas inactivas (fondo blanco o gris).###Observar la capa MaxPooling y confirmar que los bordes de la forma persisten.###Llegar a la capa de salida y verificar la probabilidad para cada clase.###Probar con una imagen de señal parcialmente obstruida (cubierta al 30%) y observar el cambio.###Concluir qué característica (forma o color) tuvo mayor peso en la decisión.
EOF
}

modulo_07() {
cat << 'EOF'
☁️|||Reconocimiento de tipos de nubes (cúmulo vs. estrato)|||Explorar cómo los filtros convolucionales capturan texturas difusas y volúmenes propios de diferentes tipos de nubes, y cómo estas texturas se transforman en representaciones clasificables.|||Obtener fotografías de nubes cúmulo (abultadas) y nubes estrato (capas planas).###Cargar la imagen de nube cúmulo y activar la primera capa convolucional.###Observar qué filtros responden a los bordes redondeados y la textura esponjosa.###Cargar la nube estrato y comparar: buscar filtros que detecten líneas horizontales.###Avanzar a la segunda capa y observar cómo se combinan los detectores de textura.###Revisar las activaciones en ReLU para ver qué regiones del cielo se ignoran.###Observar la reducción de tamaño en MaxPooling y verificar que las texturas clave persisten.###Llegar a la capa densa y analizar la distribución de probabilidades de salida.###Probar con una imagen de cielo despejado y observar qué clase asigna el modelo.###Documentar las diferencias texturales capturadas por cada capa en ambos tipos de nube.
EOF
}

modulo_08() {
cat << 'EOF'
🪙|||Identificación de monedas colombianas por denominación|||Estudiar cómo una CNN distingue monedas de diferente denominación a partir de características como tamaño relativo, bordes y patrones grabados en su superficie.|||Fotografiar (o buscar imágenes digitales) monedas de $50, $200 y $500 colombianas sobre fondo uniforme.###Cargar la imagen de la moneda de $50 y observar las activaciones de la primera capa.###Identificar qué filtros responden al borde circular y los relieves del grabado.###Cargar la moneda de $500 y comparar: notar diferencias en tamaño y detalle de activación.###Avanzar a la segunda capa y observar cómo se combinan los detectores de bordes curvos.###Revisar la capa ReLU y verificar qué partes del fondo quedan silenciadas.###Observar la capa MaxPooling y notar cómo se conservan los detalles centrales de la moneda.###Llegar a la capa de salida y verificar la probabilidad asignada a cada denominación.###Probar con la moneda inclinada 45° y observar si la predicción varía.###Concluir qué características visuales son más determinantes para diferenciar denominaciones.
EOF
}

modulo_09() {
cat << 'EOF'
✍️|||Detección de escritura a mano: letra cursiva vs. imprenta|||Comprender cómo la CNN procesa diferentes estilos caligráficos, identificando qué filtros responden a la continuidad de trazos (cursiva) versus la separación de caracteres (imprenta).|||Escribir la misma palabra (p. ej. "casa") en cursiva y en imprenta en papel y fotografiarlas.###Cargar la imagen en cursiva y observar las activaciones de la primera capa convolucional.###Identificar filtros que respondan a trazos curvos y continuos.###Cargar la imagen en imprenta y comparar: buscar filtros que detecten trazos rectos y separados.###Avanzar a la segunda capa y observar cómo cambian las combinaciones de características.###Revisar la capa ReLU y notar qué regiones entre letras quedan inactivas en cursiva.###Observar la capa MaxPooling y comparar la pérdida de detalle entre ambos estilos.###Llegar a la capa densa y anotar la confianza del modelo para cada estilo.###Probar con una muestra mixta (algunas letras cursivas, otras en imprenta) y analizar el resultado.###Documentar cuál capa mostró mayor diferencia de activación entre los dos estilos.
EOF
}

modulo_10() {
cat << 'EOF'
🛣️|||Clasificación de superficies: asfalto vs. tierra vs. césped|||Analizar cómo los filtros texturales de la CNN distinguen diferentes tipos de superficies del suelo, rastreando cómo las texturas granulares, rugosas y orgánicas se procesan en cada capa.|||Obtener fotografías de asfalto, tierra y césped tomadas desde el mismo ángulo y distancia.###Cargar la imagen de asfalto y activar la visualización de la primera capa convolucional.###Observar qué filtros capturan la textura uniforme y oscura del asfalto.###Cargar la imagen de tierra y comparar: buscar filtros que respondan a la irregularidad de la textura.###Cargar la imagen de césped y buscar filtros que detecten líneas finas verticales (hojas de pasto).###Avanzar a la segunda capa y observar cómo se combinan los patrones de textura.###Revisar la activación en ReLU y verificar qué regiones de cada textura quedan suprimidas.###Observar la capa MaxPooling y confirmar qué rasgos de textura sobreviven la reducción.###Llegar a la capa de salida y verificar las probabilidades para cada tipo de superficie.###Concluir cuál textura fue más "fácil" de clasificar y explicar por qué basándose en las activaciones.
EOF
}

modulo_11() {
cat << 'EOF'
😀|||Reconocimiento de emojis dibujados a mano|||Explorar cómo la CNN procesa representaciones simplificadas de expresiones faciales, identificando qué filtros responden a círculos, puntos (ojos) y curvas (sonrisa/tristeza).|||Dibujar en papel tres emojis simples: cara feliz, cara triste y cara neutra.###Fotografiar cada dibujo con fondo blanco y buena iluminación.###Cargar el emoji feliz y observar la primera capa convolucional.###Identificar filtros que detecten la curva ascendente de la sonrisa.###Cargar el emoji triste y comparar la activación de los mismos filtros.###Avanzar a la segunda capa y observar la combinación de detectores de forma.###Revisar ReLU para ver qué zonas del fondo blanco quedan inactivas.###Comparar las activaciones del emoji neutro con las de los otros dos.###Llegar a la capa de salida y verificar la confianza del modelo para cada expresión.###Documentar qué diferencia visual (curvatura de la boca) tuvo más peso en la clasificación.
EOF
}

modulo_12() {
cat << 'EOF'
🌃|||Diferenciación entre imagen diurna y nocturna de una ciudad|||Estudiar cómo la CNN procesa diferencias de luminosidad y contraste entre escenas diurnas y nocturnas, analizando qué filtros responden a luces artificiales versus luz solar.|||Obtener dos fotografías de la misma calle o edificio: una diurna y una nocturna.###Cargar la imagen diurna y observar las activaciones de la primera capa convolucional.###Identificar qué filtros capturan gradientes de luz natural y sombras.###Cargar la imagen nocturna y buscar filtros que respondan a puntos brillantes (luces).###Comparar capa a capa las diferencias de activación entre ambas imágenes.###Revisar la capa ReLU y observar cómo las zonas oscuras quedan silenciadas en la imagen nocturna.###Avanzar a MaxPooling y verificar qué información se preserva de cada escena.###Observar las activaciones en la capa densa y la distribución de probabilidades de salida.###Probar con una imagen al atardecer (luminosidad intermedia) y analizar la predicción.###Concluir qué característica (brillo, contraste o distribución de luces) fue más relevante.
EOF
}

modulo_13() {
cat << 'EOF'
🔺|||Clasificación de formas geométricas básicas|||Comprender los mecanismos fundamentales de detección de bordes y esquinas en una CNN usando formas simples (círculo, cuadrado, triángulo), ideal para entender las bases de la visión computacional.|||Dibujar en papel (o crear digitalmente) un círculo, un cuadrado y un triángulo en fondo blanco.###Cargar la imagen del círculo y observar la primera capa convolucional.###Identificar filtros orientados a bordes curvos (0°, 45°, 90°, 135°).###Cargar el cuadrado y comparar: buscar filtros que respondan a esquinas y líneas rectas.###Cargar el triángulo y observar filtros que detecten líneas diagonales.###Avanzar a la segunda capa y observar cómo se combinan los detectores de borde.###Revisar la capa ReLU y confirmar que el interior blanco de las figuras queda inactivo.###Observar MaxPooling y verificar que los bordes principales sobreviven la reducción.###Llegar a la capa de salida y verificar la probabilidad para cada figura.###Documentar la relación entre la orientación de los filtros y los bordes de cada figura.
EOF
}

modulo_14() {
cat << 'EOF'
💵|||Identificación de billetes colombianos (20.000 vs. 50.000 pesos)|||Analizar cómo la CNN captura patrones de color, textura y diseño gráfico para distinguir entre billetes de diferente denominación, simulando un sistema de verificación de autenticidad básico.|||Fotografiar el frente del billete de $20.000 y del billete de $50.000 con buena iluminación.###Cargar la imagen del billete de $20.000 y observar la primera capa convolucional.###Identificar qué filtros capturan las tonalidades rojizas/naranjas características.###Cargar el billete de $50.000 y buscar filtros que respondan a los tonos azul-violeta.###Comparar en la segunda capa cómo se combinan los detectores de color y textura.###Revisar la capa ReLU y observar qué regiones del billete quedan activas (figura central, número).###Avanzar a MaxPooling y verificar qué patrones gráficos sobreviven la reducción.###Llegar a la capa densa y anotar la distribución de probabilidades de salida.###Probar con una fotocopia en escala de grises y observar cómo cambia la predicción.###Concluir cuál característica (color, figura central o número) fue más determinante.
EOF
}

modulo_15() {
cat << 'EOF'
💧|||Reconocimiento de tipos de suelo: seco vs. mojado|||Explorar cómo la CNN detecta diferencias de brillo y saturación causadas por la presencia de agua en superficies sólidas, analizando qué filtros responden a reflexiones y cambios de textura.|||Fotografiar el mismo piso (concreto o baldosa) en estado seco y después de regarlo.###Cargar la imagen del suelo seco y observar la primera capa convolucional.###Identificar qué filtros capturan la textura mate y uniforme.###Cargar la imagen del suelo mojado y buscar filtros que respondan a reflexiones y brillos.###Comparar en la segunda capa cómo cambian los combinadores de textura.###Revisar ReLU y observar cómo los reflejos de luz generan más activaciones en el suelo mojado.###Avanzar a MaxPooling y verificar qué información de brillo se conserva.###Llegar a la capa de salida y anotar la confianza del modelo para cada estado.###Probar con suelo parcialmente mojado y observar si el modelo se inclina hacia alguna clase.###Documentar la relación entre brillo superficial y la activación de filtros específicos.
EOF
}

modulo_16() {
cat << 'EOF'
🥗|||Clasificación de alimentos: saludable vs. no saludable|||Analizar cómo la CNN distingue platillos saludables (ensalada, fruta) de alimentos no saludables (hamburguesa, pizza) basándose en color, textura y composición visual.|||Obtener imágenes de un plato de ensalada y una hamburguesa con fondo neutro.###Cargar la imagen de la ensalada y observar la primera capa convolucional.###Identificar filtros que respondan a tonos verdes y texturas finas.###Cargar la hamburguesa y buscar filtros que capturen tonos marrones y texturas más gruesas.###Avanzar a la segunda capa y comparar cómo se construyen los detectores compuestos.###Revisar ReLU y observar qué zonas del plato quedan más activas en cada caso.###Observar MaxPooling y verificar si los colores dominantes persisten tras la reducción.###Llegar a la capa de salida y anotar las probabilidades para cada clase.###Probar con una imagen de frutas (limítrofe entre saludable y dulce) y analizar el resultado.###Concluir qué características visuales (color o textura) son más relevantes para la clasificación.
EOF
}

modulo_17() {
cat << 'EOF'
🧱|||Detección de grietas en paredes|||Estudiar cómo los filtros de bordes de una CNN detectan discontinuidades superficiales en estructuras, explorando el uso potencial en inspección estructural automatizada básica.|||Fotografiar una pared con grietas visibles y otra pared en buen estado.###Cargar la imagen de pared sin grietas y observar la primera capa convolucional.###Identificar qué filtros detectan la textura homogénea del repello.###Cargar la pared con grietas y buscar filtros que respondan a líneas irregulares.###Avanzar a la segunda capa y observar cómo se combinan los detectores de líneas.###Revisar ReLU y verificar cómo las grietas generan activaciones específicas en filtros orientados.###Observar MaxPooling y confirmar que los trazos de grietas persisten a pesar de la reducción.###Llegar a la capa densa y anotar la probabilidad de clasificación "con grieta".###Probar con una imagen de grieta pintada sobre la pared (no estructural) y comparar resultados.###Documentar la orientación de los filtros que mejor detectaron las grietas (horizontal, vertical, diagonal).
EOF
}

modulo_18() {
cat << 'EOF'
🌦️|||Reconocimiento del estado del clima por fotografía|||Comprender cómo una CNN infiere condiciones climáticas (soleado, nublado, lluvioso) a partir de características como brillo del cielo, presencia de nubes y saturación general de la imagen.|||Obtener tres fotografías de exteriores: día soleado, día nublado y día lluvioso.###Cargar la imagen soleada y observar la primera capa convolucional.###Identificar filtros que respondan a gradientes de azul claro y alto brillo.###Cargar la imagen nublada y buscar filtros que capturen tonos grises difusos.###Cargar la imagen lluviosa y observar filtros que respondan a reflejos en superficies mojadas.###Comparar las activaciones en la segunda capa para las tres condiciones.###Revisar ReLU y observar qué zonas del cielo quedan activas en cada clima.###Avanzar a MaxPooling y verificar qué información global de luminosidad se conserva.###Llegar a la capa de salida y anotar la distribución de probabilidades para cada clima.###Concluir qué característica visual (brillo, tono o textura de nubes) fue más informativa.
EOF
}

modulo_19() {
cat << 'EOF'
🪵|||Clasificación de materiales: madera vs. metal vs. plástico|||Analizar cómo la CNN diferencia materiales con propiedades visuales distintas (reflexión especular del metal, vetas de la madera, uniformidad del plástico) usando los filtros de textura en cada capa.|||Fotografiar superficies de madera, metal y plástico desde la misma distancia y con igual iluminación.###Cargar la imagen de madera y observar la primera capa convolucional.###Identificar filtros que respondan a las vetas lineales características de la madera.###Cargar el metal y buscar filtros que capturen reflexiones y brillos especulares.###Cargar el plástico y observar filtros que detecten uniformidad y ausencia de textura profunda.###Comparar en la segunda capa cómo se combinan los detectores de material.###Revisar ReLU y observar qué zonas de cada material quedan silenciadas.###Avanzar a MaxPooling y verificar qué características de superficie persisten.###Llegar a la capa de salida y anotar la distribución de probabilidades para cada material.###Documentar qué filtro fue exclusivo de cada material y cuál compartieron.
EOF
}

modulo_20() {
cat << 'EOF'
📝|||Diferenciación entre texto impreso y texto manuscrito|||Explorar cómo la CNN distingue caracteres uniformes del texto impreso frente a la variabilidad de trazos del texto manuscrito, analizando el papel de los filtros de regularidad y espaciado.|||Imprimir un párrafo corto y escribir el mismo párrafo a mano en papel.###Fotografiar ambos con iluminación uniforme y fondo blanco.###Cargar la imagen del texto impreso y observar la primera capa convolucional.###Identificar filtros que respondan a la regularidad y uniformidad de los caracteres.###Cargar el texto manuscrito y buscar filtros que capturen la variabilidad de trazos.###Avanzar a la segunda capa y comparar los detectores compuestos para ambos tipos.###Revisar ReLU y observar cómo los espacios entre palabras quedan silenciados.###Observar MaxPooling y verificar qué patrones de regularidad sobreviven la reducción.###Llegar a la capa densa y anotar la confianza del modelo en la clasificación.###Probar con texto impreso en una fuente manuscrita digital y observar si el modelo se confunde.
EOF
}

modulo_21() {
cat << 'EOF'
🌿|||Reconocimiento de plantas: hojas sanas vs. hojas enfermas|||Estudiar cómo la CNN detecta indicadores visuales de enfermedad en hojas (manchas, decoloración, bordes dañados) comparando con hojas sanas, simulando un sistema de diagnóstico agrícola visual básico.|||Fotografiar una hoja sana (verde uniforme) y una hoja enferma (con manchas o amarillamiento).###Cargar la imagen de hoja sana y observar la primera capa convolucional.###Identificar filtros que respondan al color verde uniforme y la textura lisa.###Cargar la hoja enferma y buscar filtros que capturen manchas o variaciones de color.###Avanzar a la segunda capa y comparar cómo cambian los detectores de textura.###Revisar ReLU y observar qué zonas de la hoja enferma generan más activación.###Observar MaxPooling y verificar si las manchas persisten como característica dominante.###Llegar a la capa densa y anotar la probabilidad asignada a cada clase.###Probar con una hoja levemente enferma y observar si el modelo la clasifica como sana o enferma.###Documentar qué tipo de daño visual (mancha, borde dañado, decoloración) generó más activación.
EOF
}

modulo_22() {
cat << 'EOF'
🩻|||Clasificación de imágenes de radiografías: normal vs. con anomalía|||Analizar conceptualmente cómo una CNN podría ayudar a identificar regiones anómalas en imágenes médicas simplificadas, explorando qué filtros responden a diferencias de densidad y sombras.|||Usar imágenes de radiografías de dominio público (sin datos de pacientes).###Cargar una radiografía de tórax normal y observar las activaciones de la primera capa.###Identificar filtros que respondan a los gradientes de densidad (pulmones vs. costillas).###Cargar una radiografía con una zona de mayor densidad (posible anomalía) y comparar.###Avanzar a la segunda capa y observar cómo se combinan los detectores de densidad.###Revisar ReLU y notar qué zonas de la radiografía quedan más activas en el caso anómalo.###Observar MaxPooling y verificar qué regiones de interés persisten tras la reducción.###Llegar a la capa de salida y anotar la distribución de probabilidades.###Reflexionar sobre las limitaciones éticas del uso de CNN en diagnóstico sin supervisión médica.###Documentar qué capas fueron más sensibles a las diferencias de densidad entre las imágenes.
EOF
}

modulo_23() {
cat << 'EOF'
🎨|||Diferenciación entre arte abstracto y arte figurativo|||Explorar cómo la CNN procesa composiciones artísticas con y sin referencias al mundo real, analizando qué filtros responden a formas reconocibles versus patrones aleatorios de color y trazo.|||Obtener una imagen de una pintura figurativa (retrato o paisaje reconocible) y una abstracta.###Cargar la imagen figurativa y observar la primera capa convolucional.###Identificar filtros que detecten bordes definidos y formas reconocibles.###Cargar la imagen abstracta y buscar filtros que respondan a manchas de color sin forma definida.###Avanzar a la segunda capa y comparar cómo cambian los combinadores de características.###Revisar ReLU y observar la distribución de activaciones en cada tipo de obra.###Observar MaxPooling y verificar qué elementos se conservan tras la reducción.###Llegar a la capa de salida y anotar las probabilidades para cada categoría artística.###Probar con una obra en el límite (arte semi-abstracto con formas reconocibles) y analizar.###Concluir qué diferencias de activación explican mejor la distinción entre ambos estilos.
EOF
}

modulo_24() {
cat << 'EOF'
🚶|||Reconocimiento de postura humana: de pie vs. sentado|||Comprender cómo la CNN captura la distribución espacial del cuerpo humano para distinguir posturas básicas, analizando qué filtros detectan la silueta vertical (de pie) versus la silueta compacta (sentado).|||Fotografiar a una persona de pie con fondo neutro y luego sentada en la misma ubicación.###Cargar la imagen de la persona de pie y observar la primera capa convolucional.###Identificar filtros que respondan a líneas verticales y la silueta elongada.###Cargar la imagen de la persona sentada y buscar filtros que capten la distribución horizontal.###Avanzar a la segunda capa y comparar cómo se combinan los detectores de forma corporal.###Revisar ReLU y observar qué partes del fondo quedan inactivas.###Observar MaxPooling y verificar qué aspectos de la silueta se preservan.###Llegar a la capa de salida y anotar las probabilidades para cada postura.###Probar con una imagen de persona agachada y analizar hacia qué clase se inclina el modelo.###Documentar qué orientación de filtros (vertical vs. horizontal) fue dominante en cada postura.
EOF
}

modulo_25() {
cat << 'EOF'
🏠|||Clasificación de fondos: interior vs. exterior|||Analizar cómo la CNN usa pistas contextuales globales (paredes, ventanas, cielo, vegetación) para clasificar escenas según si ocurren en interiores o exteriores, rastreando cómo el contexto emerge en capas profundas.|||Obtener fotografías de ambientes interiores (sala, oficina) y exteriores (parque, calle).###Cargar la imagen de interior y observar las activaciones de la primera capa convolucional.###Identificar filtros que respondan a líneas rectas (paredes, muebles, esquinas).###Cargar la imagen de exterior y buscar filtros que capturen gradientes de cielo y vegetación.###Avanzar a la segunda capa y comparar cómo se construyen detectores de contexto.###Revisar ReLU y observar qué zonas de cada escena quedan más activas.###Observar MaxPooling y verificar qué elementos del escenario persisten.###Llegar a la capa densa y anotar la distribución de probabilidades para cada tipo de escena.###Probar con una imagen tomada desde una ventana (interior con vista al exterior) y analizar.###Concluir qué pistas visuales globales son más determinantes para la clasificación de escena.
EOF
}
