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


```bash

sudo pacman -S ttf-material-symbols-variable-git ttf-material-design-icons-desktop-git ttf-jetbrains-mono-nerd

```

2. Clonar y Configurar
```bash
git clone https://github.com/Rasgon-Proteico/Dots.git
cd Dots
setup 
/.install.sh
```
3. El comando setup y /.install, se ejecutan en ese orden
```bash
sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd noto-fonts-emoji
yay -S --noconfirm ttf-material-symbols-variable-git ttf-material-design-icons-desktop-git
sudo pacman -S --noconfirm unzip zip p7zip unrar tar file-roller thunar-archive-plugin
sudo pacman -S --noconfirm shotcut obs-studio
sudo pacman -S --noconfirm xdg-desktop-portal-hyprland xdg-desktop-portal-gtk qt6-wayland pipewire wireplumber
sudo pacman -S --noconfirm python python-pip git
```

# Nota: Si usas NVIDIA, esto es clave para ComfyUI y OBS
```bash
sudo pacman -S --noconfirm nvidia-utils cuda
```
```bash
sudo pacman -S --noconfirm figlet lolcat
```
fc-cache -fv

echo "--------------------------------------------------"
echo "¡Todo instalado con éxito! 🚀"
echo "Recuerda que ComfyUI se instaló manualmente en su propia carpeta con venv."
echo "--------------------------------------------------"

3. Extraer Archivos

Para manejar archivos comprimidos desde el gestor de archivos (Thunar):

```bash
sudo pacman -S unzip p7zip unrar file-roller thunar-archive-plugin
```

🔧 Ajustes Manuales Importantes
Foco del To-Do List

Si el cuadro de texto del To-Do no recibe teclado, asegúrate de que en ~/.config/quickshell/ii/modules/ii/sidebarRight/main.qml tengas:
```bash
keyboardFocus: WWayland.OnDemand
```


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


