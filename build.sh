#!/bin/bash
set -e

echo "📦 Instalando dependencias del backend..."
pip install uv

echo "📦 Instalando dependencias con uv..."
uv sync

echo "✅ Build completado correctamente."

