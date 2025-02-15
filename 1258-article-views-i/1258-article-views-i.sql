# Write your MySQL query statement below
select  distinct author_id as id from Views as a
where  a.author_id=a.viewer_id 
order by author_id asc;