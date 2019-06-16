# Write your MySQL query statement below
select a.player_id, a.device_id
from Activity a, (
                    select player_id, min(event_date) as event_date
                    from Activity
                    group by player_id
                        ) tb
where a.player_id = tb.player_id and a.event_date = tb.event_date;
