// Listado de los 25 módulos del proyecto
const modulos = [
    { id: 1,  titulo: "Clasificación de frutas frescas vs. en mal estado", icono: "🍎" },
    { id: 2,  titulo: "Detección de dígitos escritos a mano (0–9)", icono: "🔢" },
    { id: 3,  titulo: "Reconocimiento de patrones en ropa", icono: "👕" },
    { id: 4,  titulo: "Identificación de caras con y sin lentes", icono: "👓" },
    { id: 5,  titulo: "Diferenciación entre perros y gatos", icono: "🐶" },
    { id: 6,  titulo: "Clasificación de señales de tráfico", icono: "🛑" },
    { id: 7,  titulo: "Reconocimiento de tipos de nubes", icono: "☁️" },
    { id: 8,  titulo: "Identificación de monedas colombianas", icono: "🪙" },
    { id: 9,  titulo: "Escritura a mano: cursiva vs. imprenta", icono: "✍️" },
    { id: 10, titulo: "Clasificación de superficies: asfalto, tierra, césped", icono: "🛣️" },
    { id: 11, titulo: "Reconocimiento de emojis dibujados a mano", icono: "😀" },
    { id: 12, titulo: "Imagen diurna vs. nocturna de una ciudad", icono: "🌃" },
    { id: 13, titulo: "Clasificación de formas geométricas básicas", icono: "🔺" },
    { id: 14, titulo: "Identificación de billetes colombianos", icono: "💵" },
    { id: 15, titulo: "Reconocimiento de tipos de suelo: seco vs. mojado", icono: "💧" },
    { id: 16, titulo: "Clasificación de alimentos: saludable vs. no saludable", icono: "🥗" },
    { id: 17, titulo: "Detección de grietas en paredes", icono: "🧱" },
    { id: 18, titulo: "Reconocimiento del estado del clima", icono: "🌦️" },
    { id: 19, titulo: "Clasificación de materiales: madera, metal, plástico", icono: "🪵" },
    { id: 20, titulo: "Texto impreso vs. texto manuscrito", icono: "📝" },
    { id: 21, titulo: "Plantas: hojas sanas vs. hojas enfermas", icono: "🌿" },
    { id: 22, titulo: "Radiografías: normal vs. con anomalía", icono: "🩻" },
    { id: 23, titulo: "Arte abstracto vs. arte figurativo", icono: "🎨" },
    { id: 24, titulo: "Postura humana: de pie vs. sentado", icono: "🚶" },
    { id: 25, titulo: "Fondos: interior vs. exterior", icono: "🏠" }
];

// Generar las tarjetas en el grid
function renderModulos() {
    const grid = document.getElementById("grid-modulos");
    if (!grid) return;

    modulos.forEach(m => {
        const idStr = String(m.id).padStart(2, "0");
        const card = document.createElement("a");
        card.className = "card";
        card.href = `modulos/modulo-${idStr}.html`;
        card.innerHTML = `
            <div class="card-icono">${m.icono}</div>
            <div class="card-num">Módulo ${idStr}</div>
            <h3 class="card-titulo">${m.titulo}</h3>
            <span class="card-cta">Ver proyecto →</span>
        `;
        grid.appendChild(card);
    });
}

document.addEventListener("DOMContentLoaded", renderModulos);
