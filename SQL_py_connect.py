import mysql.connector  # Asegúrate de que el módulo esté instalado y correctamente importado
from mysql.connector import Error  # Importar el manejo de errores correctamente

config = {
    "host": "127.0.0.1",
    "port":  3306,
    "database": "test2",
    "user": "root",
    "password": "Stoned3$"  # Corregido el error tipográfico en 'password'
}

try:
    connection = mysql.connector.connect(**config)  # Establecer la conexión con la base de datos
    cursor = connection.cursor()  # Crear un cursor para ejecutar consultas

    query = "SELECT * FROM users"  # Asegúrate de que el nombre de la tabla sea correcto y en minúsculas si es necesario
    cursor.execute(query)  # Ejecutar la consulta
    result = cursor.fetchall()  # Corregido el error tipográfico en 'fetchall'

    for row in result:  # Iterar sobre los resultados y mostrarlos
        print(row)

except Error as err:
    print("Error while connecting to MySQL:", err)  # Capturar y mostrar errores de MySQL

finally:
    if connection.is_connected():  # Verificar si la conexión sigue abierta
        cursor.close()  # Cerrar el cursor
        connection.close()  # Cerrar la conexión
        print("MySQL connection is closed")  # Confirmar que la conexión se ha cerrado