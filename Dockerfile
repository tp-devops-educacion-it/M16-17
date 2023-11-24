# Usa una imagen de Python 3 como base
FROM python:3

# Establece el directorio de trabajo en /app
WORKDIR /app

# Clona el repositorio desde GitHub
RUN git clone https://github.com/0xMrR0b0t/TPScanner.git

# Cambia al directorio clonado
WORKDIR /app/TPScanner

# Instala las dependencias, si fueran necesarias
#RUN pip3 install --no-cache-dir -r requirements.txt

# Expone el puerto 80 para que puedas acceder a la aplicación
EXPOSE 80

# Ejecuta el script principal cuando se inicia el contenedor
CMD ["python3", "main.py"]