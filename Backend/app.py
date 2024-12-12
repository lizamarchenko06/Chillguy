from flask import Flask, jsonify
from flask_cors import CORS
import psycopg2
from psycopg2.extras import RealDictCursor

app = Flask(__name__)
CORS(app)

PORT = 5000

def get_db_connection():
    return psycopg2.connect(
        user='postgres',
        password='123',
        host='localhost',
        port=5432,
        database='postgres'
    )

@app.route('/api/products', methods=['GET'])
def get_products():
    try:
        connection = get_db_connection()
        cursor = connection.cursor(cursor_factory=RealDictCursor)
        cursor.execute('SELECT * FROM laptop')
        products = cursor.fetchall()
        return jsonify(products)
    except Exception as error:
        print(f'Ошибка при получении данных: {error}')
        return 'Ошибка при получении данных', 500
    finally:
        if connection:
            cursor.close()
            connection.close()


if __name__ == '__main__':
    print(f'Сервер запущен на http://localhost:{PORT}')
    app.run(port=PORT)