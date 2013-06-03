PostgreSQL Unaccent Extension
=============================

This module provides a simple function and text search dictionary to unaccent
(remove Unicode accents) from strings. Unlike the included `unaccent` contrib
extension in PostgreSQL, this function is declared IMMUTABLE and can be safely
used in indexes.

    my_db=> select musicbrainz_unaccent('ľščťžýáí');
     musicbrainz_unaccent
    ----------
     lsctzyai

You can use the `musicbrainz_unaccentdict` dictionary for PostgreSQL's text
search. See [PostgreSQL
manual](http://www.postgresql.org/docs/current/static/textsearch-dictionaries.html#TEXTSEARCH-SIMPLE-DICTIONARY)
on how to use text search dictionaries.

Warning: Unaccent always assumes that input is UTF-8 encoded. This function is
not very useful in databases with other encodings.


Installation
------------

To build and install this extension, simply run:

    % make
    % sudo make install

Then, to activate this extension in your database, run the SQL:

    CREATE EXTENSION musicbrainz_unaccent;

Databases using the old extension system can be upgraded with:

    CREATE EXTENSION musicbrainz_unaccent FROM unpackaged;

If you run into problems with building, see [PostgreSQL wiki for
troubleshooting](https://wiki.postgresql.org/wiki/Extension_build_troubleshooting)


License
-------

Copyright 2009  Lukáš Lalinský

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
