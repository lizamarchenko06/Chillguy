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
        database='database'
    )


@app.route('/api/products', methods=['GET'])
def get_all_products():
    try:
        product = [
            'electricshavers',
            'fridge',
            'gasstoves',
            'hairdryer',
            'headphones',
            'kidswatch',
            'laptop',
            'screwdrivers',
            'smartphone',
            'smartwatch'
        ]

        all_products = []
        with get_db_connection() as connection:
            with connection.cursor(cursor_factory=RealDictCursor) as cursor:
                for table_name in product:
                    query = f"SELECT * FROM {table_name};"
                    cursor.execute(query)
                    products = cursor.fetchall()
                    all_products.extend(products)
        return jsonify(all_products)

    except Exception as error:
        print(f'Ошибка при получении товаров: {error}')
        return jsonify({'error': 'Ошибка при получении товаров'}), 500



@app.route('/api/products/<string:category_name>', methods=['GET'])
def get_products_by_category(category_name):
    try:
        products = {
            'electricshavers': 'electricshavers',
            'fridge': 'fridge',
            'gasstoves': 'gasstoves',
            'hairdryer': 'hairdryer',
            'headphones': 'headphones',
            'kidswatch': 'kidswatch',
            'laptop': 'laptop',
            'screwdrivers': 'screwdrivers',
            'smartphone': 'smartphone',
            'smartwatch': 'smartwatch'
        }

        if category_name not in products:
            return jsonify({'error': 'Неверное имя категории'}), 400

        table_name = products[category_name]
        with get_db_connection() as connection:
            with connection.cursor(cursor_factory=RealDictCursor) as cursor:
                query = f"SELECT * FROM {table_name};"
                cursor.execute(query)
                product_list = cursor.fetchall()
        return jsonify(product_list)

    except Exception as error:
        print(f'Ошибка при получении товаров: {error}')
        return jsonify({'error': 'Ошибка при получении товаров'}), 500


if __name__ == '__main__':
    print(f'Сервер запущен на http://localhost:{PORT}')
    app.run(port=PORT)