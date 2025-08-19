**What is a cron?**

Cron is a job scheduling utility present in Unix like systems. The crond daemon enables cron functionality and runs in background. The cron reads the crontab (cron tables) for running predefined scripts.

By using a specific syntax, you can configure a cron job to schedule scripts or other commands to run automatically.

For individual users, the cron service checks the following file: **/var/spool/cron/crontabs**

Content of /var/spool/cron/crontabs Contents of /var/spool/cron/crontabs

**What are cron jobs in Linux?**

Any task that you schedule through crons is called a cron job. Cron jobs help us automate our routine tasks, whether they're hourly, daily, monthly, or yearly.

Now, let's see how cron jobs work.

**How to Control Access to crons**

In order to use cron jobs, an admin needs to allow cron jobs to be added for users in the '/etc/cron.allow' file.

If you get a prompt like this, it means you don't have permission to use cron.

Cron job addition denied for user John. Cron job addition denied for user John.

To allow John to use crons, include his name in '**/etc/cron.allow**'. This will allow John to create and edit cron jobs.

cron.allow

```
john
```

- Allowing John in file cron.allow Allowing John in file cron.allow

Users can also be denied access to cron job access by entering their usernames in the file '**/etc/cron.d/cron.deny**'.

**How to Add cron Jobs in Linux**
First, to use cron jobs, you'll need to check the status of the cron service. If cron is not installed, you can easily download it through the package manager. Just use this to check:

**Check cron service on Linux system**

```
sudo systemctl status cron.service
```

**Cron job syntax**

Crontabs use the following flags for adding and listing cron jobs.

- **crontab -e**: edits crontab entries to add, delete, or edit cron jobs.
- **crontab -l**: list all the cron jobs for the current user.
- **crontab -u username -l**: list another user's crons.
- **crontab -u username -e**: edit another user's crons.

When you list crons, you'll see something like this:

```
# Cron job example
* * * * * sh /path/to/script.sh
```

**Below is the summary of the cron job syntax.**

```
*   *   *   *   *  sh /path/to/script/script.sh
|   |   |   |   |              |
|   |   |   |   |      Command or Script to Execute      
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   | Day of the Week(0-6)(Sunday-Saturday)
|   |   |   |
|   |   | Month of the Year(1-12)
|   |   |
|   | Day of the Month(1-31)  
|   |
| Hour(0-23)  
|
Min(0-59)
```

**Cron job examples**

| Schedule  | Scheduled value                                           |
| --------- | --------------------------------------------------------- |
| 5 0 8    | At 00:05 in August.                                       |
| 5 4  6   | At 04:05 on Saturday.                                     |
| 0 22  1-5 | At 22:00 on every day-of-week from Monday through Friday. |

It is okay if you are unable to grasp this all at once. You can practice and generate cron schedules with the crontab guru.


**How to set up a cron job**

In this section, we will look at an example of how to schedule a simple script with a cron job.

1. Create a script called date-script.sh which prints the system date and time and appends it to a file. The script is shown below:

Script for printing date. Script for printing date.

2. Make the script executable by giving it execution rights.
```
chmod 775 date-script.sh
```

3. Add the script in the crontab using crontab -e.

Here, we have scheduled it to run per minute.

Adding a cron job in crontab every minute. Adding a cron job in crontab every minute.
```
* * * * * sh /path/to/script.sh
```

4. Check the output of the file date-out.txt. According to the script, the system date should be printed to this file every minute.

Output of our cron job. Output of our cron job.

**How to Troubleshoot crons**
Crons are really helpful, but they might not always work as intended. Fortunately, there are some effective methods you can use to troubleshoot them.

1. Check the schedule.

First, you can try verifying the schedule that's set for the cron. You can do that with the syntax you saw in the above sections.

2. Check cron logs.

First you need to check if the cron has run at the intended time or not. You can verify this from the cron logs located at **var/log/cron**. In some distros, logs can be found at **/var/log/syslog**

If there is an entry in these logs at the correct time, it means the cron has run according to the schedule you set.

Below are the logs of our cron job example. Note the first column which shows the timestamp. The path of the script is also mentioned at the end of the line.

Cron job logs Cron job logs.

3. Redirect cron output to a file.

You can redirect a cron's output to a file and check the file for any possible errors.

```
# Redirect cron output to a file
* * * * * sh /path/to/script.sh &> log_file.log
```