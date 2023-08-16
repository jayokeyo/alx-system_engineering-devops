## VDRC GSM Bundles drop P1 Incident - Root Cause Analysis

### Incident Summary
On 29/06/2023 04:17 PM (UTC+2) a drop in successful GSM bundles purchases was detected on iNsight Payment Gateway  
(a product of 4C Group of Companies (https://www.4cit.group/)). The major incident lasted five days effectively  
ending on 4/07/2023 12.00 PM (UTC+2). During this period all iPG services including GSM bundles purchases were impacted.  
  
A P1 ticket had been triggered and sent to 4C Service Desk the previous day. A Major Incident Management Process  
had been followed but the issue reoccured prompting the client to email 4C Service Desk for immediate remediation.  
  
A team of engineers from different 4C departments was mobilised to join the MIM call and restore services. After a  
thorough investigation it was established that very high read/write wait time as well as very high transport lag  
on the database was the root cause.  
  
### Timeline  
* 29/06/2023 04:17 PM (UTC+2) - Incident reported via mail by C.B.  
* 29/06/2023 04:20 PM (UTC+2) - MIM call started by SD and all standby engineers added to call.
