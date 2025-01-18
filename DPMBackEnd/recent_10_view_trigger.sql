create function recent_10_view_func()
returns trigger
language 'plpgsql'
as $$
DECLARE entry_count INT;
BEGIN
     DELETE FROM recently_viewed
        WHERE users_id = NEW.users_id
        AND view_date < (SELECT view_date
                      FROM recently_viewed
                      WHERE users_id = NEW.users_id
                      ORDER BY view_date DESC
                      LIMIT 1 OFFSET 2);
    RETURN NEW;
END
$$;


create trigger recent_10_views_trg
AFTER INSERT
ON recently_viewed
FOR EACH ROW
execute procedure recent_10_view_func();


