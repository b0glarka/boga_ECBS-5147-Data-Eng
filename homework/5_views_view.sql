-- Replace <username> with your username (same as used in the notebook)

-- DROP VIEW IF EXISTS <username>.edits;

--  View called views with proper timestamp casting + 
-- records ordered by date (primary, ascending) and rank (secondary, ascending).

CREATE VIEW petboga.views AS
    SELECT
        title,
        views,
        rank,
        date,
        cast(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) as retrieved_at
    FROM petboga.raw_views
    ORDER BY date ASC, rank ASC