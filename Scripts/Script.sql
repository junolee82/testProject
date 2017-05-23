select pNo, pName, pContent, startDate, endDate, pState from project;

insert into project(pName, pContent, startDate, endDate, pState) values('test0522', 'this is test', 20170522, 20170525, '진행중');

select pNo, pName, pContent, startDate, endDate, pState
from project
where pNo = 16;

update project set pName = 'test0522Update', pContent = 'this is test update', startDate = 20170522, endDate = 20170526, pState = '진행중' where pNo = 16;

delete from project where pNo = 1;