-- Standalone 'musicbrainz_unaccent' function

ALTER EXTENSION musicbrainz_unaccent ADD FUNCTION musicbrainz_unaccent(text);

-- 'musicbrainz_unaccentdict' text search dictionary

ALTER EXTENSION musicbrainz_unaccent ADD FUNCTION musicbrainz_dunaccentdict_init(internal);
ALTER EXTENSION musicbrainz_unaccent ADD FUNCTION musicbrainz_dunaccentdict_lexize(internal, internal, internal, internal);
ALTER EXTENSION musicbrainz_unaccent ADD TEXT SEARCH TEMPLATE musicbrainz_unaccentdict_template;
ALTER EXTENSION musicbrainz_unaccent ADD TEXT SEARCH DICTIONARY musicbrainz_unaccentdict;

