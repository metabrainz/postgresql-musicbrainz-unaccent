CREATE EXTENSION musicbrainz_unaccent;

SELECT musicbrainz_unaccent('ľščťžýáí');
SELECT musicbrainz_unaccent('foo—bar‒baz');
SELECT musicbrainz_unaccent('nonunicode');
SELECT musicbrainz_unaccent('');
SELECT musicbrainz_unaccent(null);
SELECT musicbrainz_unaccent(repeat('ä', 65536)) = repeat('a', 65536);

SELECT ts_lexize('musicbrainz_unaccentdict', 'ľščťžýáí foo—bar‒baz nonunicode');
