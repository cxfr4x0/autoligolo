#!/bin/bash

set -e

SCRIPT_NAME="autoligolo"
INSTALL_PATH="/usr/local/bin"
AUTHOR="cxfr4"

# Colores
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Solo root
if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}❌ Este script debe ejecutarse como root (sudo).${NC}"
    echo -e "${YELLOW}Ejemplo:${NC} sudo $0"
    exit 1
fi

echo -e "${YELLOW}🔧 Instalando $SCRIPT_NAME de $AUTHOR en $INSTALL_PATH ...${NC}"

if [ ! -f "$SCRIPT_NAME" ]; then
    echo -e "${RED}❌ No se encuentra el script $SCRIPT_NAME en el directorio actual.${NC}"
    exit 1
fi

if [ -f "$INSTALL_PATH/$SCRIPT_NAME" ]; then
    echo -e "${YELLOW}⚠️  Ya existe una versión instalada en $INSTALL_PATH/$SCRIPT_NAME"
    read -p "¿Deseas sobrescribirla? (s/N): " resp
    if [[ ! "$resp" =~ ^[sS]$ ]]; then
        echo -e "${RED}Instalación cancelada.${NC}"
        exit 1
    fi
fi

chmod +x "$SCRIPT_NAME"
cp "$SCRIPT_NAME" "$INSTALL_PATH/$SCRIPT_NAME"

echo -e "${GREEN}✅ Instalación completada.${NC}"
echo -e "${YELLOW}Ahora puedes ejecutar '$SCRIPT_NAME' desde cualquier lugar.${NC}"
