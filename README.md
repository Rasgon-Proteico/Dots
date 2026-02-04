¡Claro que sí! Aquí tienes un README.md bien estructurado, con estilo "pro" y reflejando todo lo que hemos configurado en tu sistema. Está listo para que lo copies y lo pegues en tu repositorio de GitHub.

🚀 Proteico's Hyprland Dotfiles

Una personalización de end-4's Dots, optimizada para flujo de trabajo creativo, edición de video, Inteligencia Artificial y una estética Cyberpunk funcional. Basado en Quickshell (Illogical Impulse).

![alt text](https://img.shields.io/badge/Hyprland-v0.41.2-blue?style=for-the-badge&logo=arch-linux)


![alt text](https://img.shields.io/badge/Shell-Quickshell-ff69b4?style=for-the-badge)

✨ Características Especiales

To-Do List Fix: Configuración de foco OnDemand para poder escribir tareas directamente en la barra lateral.

Matrix Welcome Splash: Pantalla de bienvenida personalizada con unimatrix y figlet al iniciar Kitty.

Creative Suite: Configurado para grabación profesional y edición.

AI Ready: Integración con ComfyUI para generación de imágenes local.

📦 Software Incluido
🎨 Diseño y Video

Shotcut: Edición de video nativa en Wayland.

OBS Studio: Configurado con xdg-desktop-portal-hyprland para captura de pantalla mediante PipeWire.

ComfyUI: Instalado en entorno virtual (venv) con soporte para aceleración por hardware.

🛠️ Utilidades de Sistema

Compresión: Soporte completo para .zip, .rar, .7z y .tar.gz mediante file-roller y p7zip.

Fuentes: Material Symbols y JetBrainsMono Nerd Font para iconos perfectos.

💻 Terminal & Estética

Kitty: Terminal principal con soporte de transparencia.

Unimatrix: Lluvia de código Matrix con transparencia real.

Figlet & Lolcat: Mensajes de bienvenida coloridos.

🛠️ Instalación
1. Requisitos Previos (Arch Linux)

Instala las fuentes para evitar iconos rotos:

code
Bash
download
content_copy
expand_less
sudo pacman -S ttf-material-symbols-variable-git ttf-material-design-icons-desktop-git ttf-jetbrains-mono-nerd
2. Clonar y Configurar
code
Bash
download
content_copy
expand_less
git clone https://github.com/Rasgon-Proteico/Dots.git
cd Dots
setup 
/.install.sh
#!/bin/bash

# --- Actualización del sistema ---
echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

# --- 1. Fuentes e Iconos (Para que la barra y apps se vean perfectas) ---
echo "Instalando fuentes e iconos..."
sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd noto-fonts-emoji
# Fuentes específicas de los dots de end-4 (AUR)
yay -S --noconfirm ttf-material-symbols-variable-git ttf-material-design-icons-desktop-git

# --- 2. Herramientas de Compresión (Para extraer .zip, .rar, etc.) ---
echo "Instalando gestores de archivos comprimidos..."
sudo pacman -S --noconfirm unzip zip p7zip unrar tar file-roller thunar-archive-plugin

# --- 3. Grabación y Edición de Video (OBS y Shotcut) ---
echo "Instalando OBS Studio y Shotcut..."
sudo pacman -S --noconfirm shotcut obs-studio

# Portales necesarios para que OBS pueda capturar pantalla en Hyprland/Wayland
sudo pacman -S --noconfirm xdg-desktop-portal-hyprland xdg-desktop-portal-gtk qt6-wayland pipewire wireplumber

# --- 4. Inteligencia Artificial (ComfyUI y dependencias) ---
echo "Instalando dependencias para ComfyUI y Python..."
sudo pacman -S --noconfirm python python-pip git

# Nota: Si usas NVIDIA, esto es clave para ComfyUI y OBS
sudo pacman -S --noconfirm nvidia-utils cuda

# --- 5. Estética de la Terminal (Matrix y Bienvenida) ---
echo "Instalando efectos visuales para la terminal..."
sudo pacman -S --noconfirm figlet lolcat
# Unimatrix es el mejor para transparencia (AUR)
yay -S --noconfirm unimatrix

# --- 6. Utilidades Extra de los Dots ---
# Asegurarse de tener lo necesario para Quickshell
sudo pacman -S --noconfirm sqlite # A veces necesario para el historial de tareas

# --- Limpieza y refresco ---
echo "Refrescando caché de fuentes..."
fc-cache -fv

echo "--------------------------------------------------"
echo "¡Todo instalado con éxito! 🚀"
echo "Recuerda que ComfyUI se instaló manualmente en su propia carpeta con venv."
echo "--------------------------------------------------"
3. Extraer Archivos

Para manejar archivos comprimidos desde el gestor de archivos (Thunar):

code
Bash
download
content_copy
expand_less
sudo pacman -S unzip p7zip unrar file-roller thunar-archive-plugin
🔧 Ajustes Manuales Importantes
Foco del To-Do List

Si el cuadro de texto del To-Do no recibe teclado, asegúrate de que en ~/.config/quickshell/ii/modules/ii/sidebarRight/main.qml tengas:

code
Qml
download
content_copy
expand_less
keyboardFocus: WWayland.OnDemand
OBS en Wayland

Para que OBS capture pantalla, asegúrate de elegir la fuente "Screen Capture (PipeWire)". Si no aparece, reinstala los portales:

code
Bash
download
content_copy
expand_less
sudo pacman -S xdg-desktop-portal-hyprland
Ejecutar ComfyUI
code
Bash
download
content_copy
expand_less
cd ~/ComfyUI
source venv/bin/activate
python main.py

⌨️ Atajos Personalizados
Tecla	Acción
Super + N Barra Lateral
Super + Enter	Abrir Kitty
Super + Q Abrir kitty 
Super + I	Abrir Menú de Ajustes de Apariencia
Ctrl + Alt + R	Reiniciar Quickshell (Aplicar cambios)
🤝 Créditos

Base original: end-4

Wallpaper & Icons: Material Design 3 / Material You

Hecho con ❤️ by me :) Rasgon-Proteico


