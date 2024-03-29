## VDRC GSM Bundles drop P1 Incident - Root Cause Analysis

![Alt text](https://1.bp.blogspot.com/--HagofIpbAI/XrQgY0I4EDI/AAAAAAAACpI/7VDfvu3dCJsHyyOPSdEBaCstmdGpliwVACLcBGAsYHQ/s1600/IMG_20200507_173620_940.JPG)

### Incident Summary
On 29/06/2023 04:17 PM (UTC+2) a drop in successful GSM bundles purchases was detected on iNsight Payment Gateway  
(a product of 4C Group of Companies (https://www.4cit.group/)). The major incident lasted 10hrs 13mins effectively  
ending on 29/06/2023 02:30 AM (UTC+2). During this period all iPG services including GSM bundles purchases were  
impacted.  
  
A P1 ticket had been triggered and sent to 4C Service Desk the previous day. A Major Incident Management Process  
had been followed but the issue reoccured prompting the client to email 4C Service Desk for immediate remediation.  
  
A team of engineers from different 4C departments was mobilised to join the MIM call and restore services. After a  
thorough investigation it was established that high I/O wait time resulting from slow network links was the root cause  
of the problem.  
  
### Timeline  
* 29/06/2023 04:17 PM (UTC+2) - Incident reported via mail by C.B.  
* 29/06/2023 04:20 PM (UTC+2) - MIM call started by SD and all standby engineers added to call.  
* 29/06/2023 04:50 PM (UTC+2) - W.N completes preliminary investigations on iPG and reports his findings.  
Most transactions are failing on the first reply and wait worker.  
* 29/06/2023 05:00 PM (UTC+2) - A. M. and J. T. approve the request to restart iPG, including the OS and DBs.  
* 29/06/2023 05:05 PM (UTC+2) - iPG is restarted and services are restored to normal. Team remains on  
call to monitor services.  
* 29/06/2023 07:00 PM (UTC+2) - Incident reoccurs.  
* 29/06/2023 07:10 PM (UTC+2) - Incident is escalated to 2nd line and 3rd line support engineers. OS standby engineer  
as well as standby DBA are added to the call as well.  
* 29/06/2023 10:20 PM (UTC+2) - OS standby engineer reports high I/O wait time and suggest slow network links as the  
possible cause of the outage.  
* 29/06/2023 10:25 PM (UTC+2) - Standby DBA also reports high transport lag on the database confirming OS engineer's  
assertion. 
* 29/06/2023 10:30 PM (UTC+2) - Network engineer is added to the call and confirms there is an issue with the network  
link between the server hosting the application and the server hosting the database.  
* 29/06/2023 11:00 PM (UTC+2) - Request to move all transaction processing from the primary environment to backup  
environment is approved.  
* 29/06/2023 02:30 AM (UTC+2) - Transaction processing is successfully moved to the backup environment.  
  
### Root cause and resolution  
Service degradation was caused by high I/O wait time on the CPUs. This was as a result of faulty network links.  
It was thus taking too long for data to move from the database to the application thus unprocessed transactions piled  
to the point where a bulk of the transactions timed out. To fix this issue transaction processing was moved to a backup  
environment that was unaffected. A project team was then deployed to fix the network links. Finally, transactions were  
moved back to the primary environment.  

### Corrective and preventative measures  
To prevent future occurence of the incidence, it was agreed that a configuration change from High Availability  
to Active-Active was necessary. It was also decided that more db nodes would be added to the Oracle RAC to make  
the system more fault tolerant.
