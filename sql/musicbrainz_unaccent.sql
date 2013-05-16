-- Standalone 'musicbrainz_unaccent' function

CREATE OR REPLACE FUNCTION musicbrainz_unaccent (text) RETURNS text
    AS 'musicbrainz_unaccent'
    LANGUAGE C IMMUTABLE STRICT;

-- New 'musicbrainz_unaccentdict' dictionary for text search indexer

CREATE OR REPLACE FUNCTION musicbrainz_dunaccentdict_init(internal)
    RETURNS internal
    AS 'musicbrainz_unaccent'
    LANGUAGE C STRICT;

CREATE OR REPLACE FUNCTION musicbrainz_dunaccentdict_lexize(internal, internal, internal, internal)
    RETURNS internal
    AS 'musicbrainz_unaccent'
    LANGUAGE C STRICT;

CREATE TEXT SEARCH TEMPLATE musicbrainz_unaccentdict_template (
    LEXIZE = musicbrainz_dunaccentdict_lexize,
    INIT   = musicbrainz_dunaccentdict_init
);

CREATE TEXT SEARCH DICTIONARY musicbrainz_unaccentdict (
    TEMPLATE = musicbrainz_unaccentdict_template
);

COMMENT ON TEXT SEARCH DICTIONARY musicbrainz_unaccentdict IS 'musicbrainz unaccenting dictionary';
