PostgreSQL Unaccent Extension
=============================

Installation:

    % make
    % sudo make install

See http://www.postgresql.org/docs/8.3/interactive/contrib.html for
information how to install it into your database.

Usage:

This module provides a simple function to unaccent given string, and a
'unaccentdict' dictionary for PostgreSQL's text search. See the manual
on how to use text search dictionaries.

    my_db=> select musicbrainz_unaccent('ľščťžýáí');
     musicbrainz_unaccent
    ----------
     lsctzyai
    (1 row)


License
=======

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
