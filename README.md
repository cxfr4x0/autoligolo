# AUTOLIGOLO
<p align="center">
  <img src="https://img.shields.io/badge/Versión-1.0-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/Autor-Cxfr4-green?style=flat-square" />
  <img src="https://img.shields.io/badge/Root-Requerido-red?style=flat-square" />
</p>
**AUTOLIGOLO** es una herramienta en Bash para automatizar la gestión de la interfaz tun para Ligolo, facilitando el redireccionamiento de rangos de IP de manera sencilla y profesional.  
Permite crear y eliminar la interfaz de red para Ligolo con comandos fáciles, ideal para pentesters y red teamers.

---

## 🚀 Características

- Banner profesional con colores y créditos.
- Comando único: `autoligolo enable` y `autoligolo disable` para crear o eliminar la interfaz.
- Instalación sencilla y segura en `/usr/local/bin`.
- Uso de colores en los mensajes para una mejor experiencia.
- Manejo de Ctrl+C para limpiar la salida.
- Mensajes claros y amigables.
- Comprobación de permisos (requiere sudo/root).

---

## ⚡ Instalación

1. Clona el repositorio:
    ```bash
    git clone https://github.com/cxfr4x0/autoligolo.git
    cd autoligolo
    ```

2. Da permisos de ejecución:
    ```bash
    chmod +x install.sh
    ```

3. Instala el script:
    ```bash
    sudo ./install.sh
    ```

---

## 🛠️ Uso

Asegúrate de ejecutarlo **siempre como root o con sudo**.

### Crear la interfaz Ligolo

```bash
sudo autoligolo enable
```

Se te pedirá el rango de IP a enrutar (ejemplo: `10.0.0.0/24`).

### Eliminar la interfaz Ligolo

```bash
sudo autoligolo disable
```

Se te pedirá el rango de IP a eliminar de la ruta.

---

## 💡 Ejemplo de uso

```bash
sudo autoligolo enable

# Salida:
# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃   █████╗ ██╗   ██╗████████╗ ██████╗ ██╗      ┃
# ┃  ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██║      ┃
# ┃  ███████║██║   ██║   ██║   ██║   ██║██║      ┃
# ┃  ██╔══██║██║   ██║   ██║   ██║   ██║██║      ┃
# ┃  ██║  ██║╚██████╔╝   ██║   ╚██████╔╝███████╗ ┃
# ┃  ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚══════╝ ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
#        AUTOLIGOLO  v1.0
#        by cxfr4x0
#
# [?] ¿Qué rango de IP quieres usar? (ejemplo: 10.0.0.0/24): 10.0.0.0/24
# ...
```

---

## 🖥️ Uso manual (sin instalar)

También puedes ejecutarlo directamente:
```bash
sudo ./autoligolo enable
sudo ./autoligolo disable
```

---

## 🧩 Dependencias

- Bash
- iproute2 (`ip`)
- Permisos de root/sudo

---

## 🧹 Desinstalación

Para eliminar el script instalado:
```bash
sudo rm /usr/local/bin/autoligolo
```

---

## 🤝 Créditos

- Desarrollado por [cxfr4](https://github.com/cxfr4x0)
- Inspirado en necesidades reales de pentesting/red team.

---

## 📄 Licencia

MIT

---

## ⚠️ Disclaimer

Esta herramienta es solo para fines educativos y de auditoría autorizada. El uso indebido es responsabilidad del usuario.

---

¡Pull requests y sugerencias son bienvenidas! 🎉
