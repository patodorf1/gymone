#!/bin/bash
set -e

# Wait for MySQL to be ready using PHP (no mysql client needed)
echo "Waiting for MySQL..."
until php -r "try { new PDO('mysql:host='.\$_SERVER['DB_HOST'].';port=3306', \$_SERVER['DB_USER'], \$_SERVER['DB_PASS']); echo 'ok'; } catch(Exception \$e) { exit(1); }" 2>/dev/null; do
    sleep 2
done
echo "MySQL is ready!"

# Create .env file using the exact key names the app expects
cat > /var/www/html/.env << EOF
DB_SERVER=${DB_HOST:-mysql}
DB_USERNAME=${DB_USER:-gymone}
DB_PASSWORD=${DB_PASS:-gymone}
DB_NAME=${DB_NAME:-gymone}

BUSINESS_NAME=${BUSINESS_NAME:-My Gym}
META_KEY=${META_KEY:-gym, fitness}
DESCRIPTION=${DESCRIPTION:-Gym management system}
ABOUT=${ABOUT:-}

LANG_CODE=${LANG_CODE:-ES}

COUNTRY=${COUNTRY:-Argentina}
CITY=${CITY:-Buenos Aires}
STREET=${STREET:-}
HOUSE_NUMBER=${HOUSE_NUMBER:-}
PHONE=${PHONE:-}

VERSION=V1.1.0

SMTP_HOST=${SMTP_HOST:-smtp.gmail.com}
SMTP_PORT=${SMTP_PORT:-587}
SMTP_USERNAME=${SMTP_USER:-}
SMTP_PASSWORD=${SMTP_PASS:-}

GOOGLE_KEY=${GOOGLE_KEY:-}

CAPACITY=${CAPACITY:-20}
AUTOACCEPT=${AUTOACCEPT:-FALSE}
EOF

chown www-data:www-data /var/www/html/.env

# Import database schema if DB is empty (using PHP, no mysql client needed)
TABLES=$(php -r "
\$pdo = new PDO('mysql:host='.\$_SERVER['DB_HOST'].';dbname='.\$_SERVER['DB_NAME'], \$_SERVER['DB_USER'], \$_SERVER['DB_PASS']);
\$stmt = \$pdo->query('SHOW TABLES');
echo \$stmt->rowCount();
" 2>/dev/null)

if [ "$TABLES" -le 0 ]; then
    echo "Database is empty, looking for SQL schema..."
    for sql_file in /var/www/html/assets/SQL/Init.sql /var/www/html/database/*.sql /var/www/html/docs/*.sql /var/www/html/*.sql; do
        if [ -f "$sql_file" ]; then
            echo "Importing $sql_file..."
            php -r "
\$pdo = new PDO('mysql:host='.\$_SERVER['DB_HOST'].';dbname='.\$_SERVER['DB_NAME'], \$_SERVER['DB_USER'], \$_SERVER['DB_PASS']);
\$sql = file_get_contents('$sql_file');
\$pdo->exec(\$sql);
echo 'Done importing $sql_file';
" 2>&1
        fi
    done
fi

exec "$@"
