Postmortem

The downtime incident on our primary web application server that occurred on 8th April, 2024 from 9:00am to 2:35pm This is our detailed report and response.
Issue Summary:
Duration: The outage occurred on 20th April, 2024, from 9:00 AM to 2:35 PM.
Impact: The outage affected the availability of our primary web application, resulting in a complete service disruption for all users. Approximately 80% of our users experienced downtime during this period.
Root Cause: The root cause of the outage was identified as a database server failure due to disk space exhaustion.
Timeline:
9:00 AM: The issue was detected when monitoring alerts indicated a sudden increase in database query errors.
9:05 AM: Engineers noticed a degradation in system performance and initiated an investigation.
10:15 AM: Initial assumption was made that the issue might be related to a network connectivity problem.
12:45 AM: Network connectivity was ruled out, and attention shifted to the database server.
1:00 AM: Misleading investigation paths included checking for software updates and analysing application logs.
1:30 AM: The incident was escalated to the infrastructure team as the database server was identified as the potential root cause.
2:00 PM: Database administrators identified disk space exhaustion as the primary issue.
2:35 PM: The incident was resolved after freeing up disk space on the database server and restarting the database service.
Root Cause and Resolution:
Root Cause: The root cause of the outage was disk space exhaustion on the database server, which led to the inability to write new data and process incoming requests.
Resolution: The issue was resolved by freeing up disk space on the database server by removing unnecessary log files and temporary data. Additionally, database maintenance tasks were scheduled to prevent future disk space issues.
Corrective and Preventative Measures:
Improvements: Enhance monitoring capabilities to detect disk space usage trends and proactively address potential issues. Implement automated alerts for critical system metrics, including disk space utilisation.
 
Tasks:
1. Implement disk space monitoring with automated alerts.
2. Schedule regular database maintenance tasks so as to optimise disk space usage.
3. Conduct a review of application logging practices so as to minimise unnecessary log generation.
4. Develop and document procedures for addressing disk space exhaustion incidents so as to expedite resolution in the future.
By implementing these corrective measures and conducting proactive maintenance, we aim to minimise the risk of similar incidents in the future and ensure the continued reliability and availability of our services
