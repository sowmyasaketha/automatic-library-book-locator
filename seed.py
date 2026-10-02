import json
import os
from db import execute, query

BASE = os.path.dirname(__file__)

with open(
    os.path.join(BASE, 'books_seed.json'),
    encoding='utf8'
) as f:
    books = json.load(f)


# Seed books into the database
for b in books:
    exists = query(
        'SELECT id FROM books WHERE book_code=%s',
        (b['id'],)
    )

    if not exists:
        execute(
            '''
            INSERT INTO books(
                book_code,
                title,
                author,
                genre,
                shelf,
                status
            )
            VALUES(%s,%s,%s,%s,%s,%s)
            ''',
            (
                b['id'],
                b['title'],
                b['author'],
                b.get('genre', 'General'),
                b['shelf'],
                b.get('status', 'Available')
            )
        )

print(f'Seed complete: {len(books)} source books processed.')