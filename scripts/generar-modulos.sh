#!/bin/bash
# Generador de páginas HTML para los 25 módulos del proyecto.

set -e

source "$(dirname "$0")/modulos-data.sh"

DEST_DIR="modulos"
mkdir -p "$DEST_DIR"

generar_modulo() {
    local num="$1"
    local datos="$2"

    local num_str
    num_str=$(printf "%02d" "$num")

    local icono titulo objetivo pasos_raw
    icono=$(echo "$datos" | awk -F '\\|\\|\\|' '{print $1}')
    titulo=$(echo "$datos" | awk -F '\\|\\|\\|' '{print $2}')
    objetivo=$(echo "$datos" | awk -F '\\|\\|\\|' '{print $3}')
    pasos_raw=$(echo "$datos" | awk -F '\\|\\|\\|' '{print $4}')

    local prev_link next_link
    if [ "$num" -eq 1 ]; then
        prev_link='<a href="../index.html" class="btn-nav">← Inicio</a>'
    else
        local prev_str
        prev_str=$(printf "%02d" $((num - 1)))
        prev_link="<a href=\"modulo-${prev_str}.html\" class=\"btn-nav\">← Módulo anterior</a>"
    fi

    if [ "$num" -eq 25 ]; then
        next_link='<a href="../index.html" class="btn-nav btn-nav-next">Volver al inicio →</a>'
    else
        local next_str
        next_str=$(printf "%02d" $((num + 1)))
        next_link="<a href=\"modulo-${next_str}.html\" class=\"btn-nav btn-nav-next\">Módulo siguiente →</a>"
    fi

    local pasos_html=""
    local IFS_OLD="$IFS"
    IFS=$'\n'
    local pasos_lineas
    pasos_lineas=$(echo "$pasos_raw" | sed 's/###/\n/g')
    while IFS= read -r paso; do
        [ -z "$paso" ] && continue
        pasos_html+="                <li>${paso}</li>"$'\n'
    done <<< "$pasos_lineas"
    IFS="$IFS_OLD"

    cat > "${DEST_DIR}/modulo-${num_str}.html" << HTMLEOF
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Módulo ${num_str} · ${titulo}</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/modulo.css">
</head>
<body>
    <header class="modulo-header">
        <div class="container">
            <a href="../index.html" class="back-link">← Volver al inicio</a>
            <div class="modulo-meta">
                <span class="modulo-num">Módulo ${num_str}</span>
                <span class="modulo-icon">${icono}</span>
            </div>
            <h1>${titulo}</h1>
        </div>
    </header>

    <main class="container modulo-body">

        <section class="card-section">
            <h2>🎯 Objetivo</h2>
            <p>${objetivo}</p>
        </section>

        <section class="card-section">
            <h2>🧪 Herramienta interactiva (CNN Explainer)</h2>
            <p class="ayuda">
                Usa la herramienta de abajo para explorar la red neuronal. Si prefieres más espacio,
                <a href="../cnn-app/" target="_blank" rel="noopener">ábrela en una pestaña nueva</a>.
            </p>
            <div class="iframe-wrapper">
                <iframe src="../cnn-app/" title="CNN Explainer" loading="lazy"></iframe>
            </div>
        </section>

        <section class="card-section">
            <h2>📋 Pasos detallados</h2>
            <ol class="pasos">
${pasos_html}            </ol>
        </section>

        <section class="card-section">
            <h2>🔍 Observaciones por capa</h2>
            <p class="ayuda">Aquí van las capturas de pantalla y notas tomadas durante la exploración.</p>

            <div class="observacion">
                <h3>Capa convolucional 1 (conv_1_1)</h3>
                <img src="../img/modulo-${num_str}/conv1.png" alt="Activaciones conv_1_1" onerror="this.style.display='none'">
                <p><em>(Pendiente añadir captura y observaciones.)</em></p>
            </div>

            <div class="observacion">
                <h3>Capa ReLU 1</h3>
                <img src="../img/modulo-${num_str}/relu1.png" alt="Activaciones ReLU" onerror="this.style.display='none'">
                <p><em>(Pendiente añadir captura y observaciones.)</em></p>
            </div>

            <div class="observacion">
                <h3>Capa MaxPooling</h3>
                <img src="../img/modulo-${num_str}/maxpool.png" alt="Activaciones MaxPooling" onerror="this.style.display='none'">
                <p><em>(Pendiente añadir captura y observaciones.)</em></p>
            </div>

            <div class="observacion">
                <h3>Capa de salida (output)</h3>
                <img src="../img/modulo-${num_str}/output.png" alt="Probabilidades de salida" onerror="this.style.display='none'">
                <p><em>(Pendiente añadir captura y observaciones.)</em></p>
            </div>
        </section>

        <section class="card-section">
            <h2>📊 Tabla comparativa de activaciones</h2>
            <div class="tabla-wrapper">
                <table>
                    <thead>
                        <tr>
                            <th>Capa</th>
                            <th>Clase A</th>
                            <th>Clase B</th>
                            <th>Diferencia observada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>conv_1_1</td><td>—</td><td>—</td><td>—</td></tr>
                        <tr><td>relu_1_1</td><td>—</td><td>—</td><td>—</td></tr>
                        <tr><td>max_pool_1</td><td>—</td><td>—</td><td>—</td></tr>
                        <tr><td>conv_2_1</td><td>—</td><td>—</td><td>—</td></tr>
                        <tr><td>output (softmax)</td><td>—</td><td>—</td><td>—</td></tr>
                    </tbody>
                </table>
            </div>
        </section>

        <section class="card-section">
            <h2>📝 Conclusiones</h2>
            <p><em>(Pendiente redactar las conclusiones tras realizar la exploración.)</em></p>
        </section>

        <nav class="modulo-nav">
            ${prev_link}
            ${next_link}
        </nav>

    </main>

    <footer>
        <div class="container">
            <p>Proyecto académico · 2026 · Duvan</p>
        </div>
    </footer>
</body>
</html>
HTMLEOF

    echo "✓ Módulo ${num_str} generado"
}

for i in $(seq 1 25); do
    num_str=$(printf "%02d" "$i")
    datos=$(modulo_${num_str})
    generar_modulo "$i" "$datos"
done

echo ""
echo "=========================================="
echo "  ✓ 25 módulos generados correctamente"
echo "=========================================="
