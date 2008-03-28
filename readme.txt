===================
Twexter 0.3 demo
===================

Features
-------------------
twexter 0.01 demos basic twexter functions
* chunk twext output
* xcroll input, including
* live preview

Install
-------------------
unpack files in /twexter/ directory

Edit config.php with appropiate database information (MySQL only for now)

Dump twexter.sql into your database.
mysql -u root -p database_name < twexter.sql

Place directory in your web server's public directory.
In Debian/Ubuntu is: /var/www/

Visit the project's url
http://yourwebsite.url/twexter

Demo
-------------------
currently working w/ latest firefox only

Default user: zura
Default password: pass

Beta test
-------------------
http://twext.cc/go/18 describes multilingual
twexter beta-testing in early june, including:
* saving .twx files
* finding files (w/ lucene)
* file versioning system (save file history)
* language inclusion/restriction
* user style control
