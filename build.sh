#!/bin/bash
set -e

echo "📦 Instalando dependencias del backend..."
pip install uv

echo "📦 Instalando dependencias con uv..."
uv sync

echo "⚙️ Construyendo el frontend..."
cd src/frontend
npm install
npm run build
cd ../../

echo "📂 Copiando el build del frontend al backend..."
mkdir -p src/backend/base/langflow/frontend
cp -r src/frontend/dist/* src/backend/base/langflow/frontend/

echo "✅ Build completado correctamente."

