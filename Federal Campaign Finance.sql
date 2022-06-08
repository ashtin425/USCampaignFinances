-- joining backers and candidates tables to show each backers money raised and for what candidate
select distinct backers.cid, backers.[Name (Fixed)] as Backer_Name, backers.[Backer_Level (Fixed)] as Backer_Level, 
candidates.cycle as Cycle, candidates.[First_Last_Party(Fixed)] as Candidate, candidates.[Party Fixed], candidates.raised_total
from backers
inner join candidates
on backers.cid = candidates.cid
where backers.cid is not null
order by candidates.cycle, candidates.[First_Last_Party(Fixed)] asc

