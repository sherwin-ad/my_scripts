What is the 'at' Command?

The 'at' is a command that allows the users to schedule one-time tasks or recurring jobs at a specific time and date. It is mainly useful for automating the system maintenance, backups, software updates, and various administrative tasks. The 'at' command works by following queuing mechanism for the commands to be executed by the system's job scheduler at the specified time.
When to use the 'at' utility

The 'at' utility is best used for scheduling one-time tasks to run at a specific time in the future. Here are some scenarios where at is particularly useful:

- Delayed Execution: Running a command or script after a certain delay without needing repeated execution.
- System Maintenance: Scheduling maintenance tasks like backups or updates during off-peak hours
- Reminders: Sending reminders or notifications at a future time.
- Resource Management: Running resource-intensive tasks at a time when system usage is low.

Example:
```
echo "echo 'Backup complete'" | at 2am
```
This schedules a one-time task to echo "Backup complete" at 2 AM.
Syntax:

The basic syntax of the AT command is straightforward:
```
at [-V] [-q queue] [-f file] [-mldbv] timespec
```
- '-l': List the at jobs in the queue.
- '-d': Delete the at job specified by the job number.
- '-b': Submit a batch job. This is the default behavior.
- '-v': Display verbose information about the job.
- 'timespec': Specify the time and date when the job should be executed.

Flags of at Command

The following are the some of the flags of at command:
**Flag Description**
- -m	Send mail to the user when the job is done
- -f file	Read job from a specified file instead of standard input
- -l	Lists all pending jobs (same as atq)
- -d	Deletes a job (same as atrm)
- -v	Shows the time the job is scheduled to run
- -q queue	Assigns the job to a specific queue
- -c job	Displays the commands in the specified job

**Installation of the 'at' command**

The following are the commands used for the installation of at command on different environment:
1. For Ubuntu/Debian

The following are are the command used for the installation of 'at' command in ubuntu and debian, first command is for updating the software and then second one is for installation of at command:
```
sudo apt-get update
sudo apt-get install at
```
2. For CentOS/Fedora

The following are the commands used for the installation of 'at' command in centos or fedora distributions:
```
sudo yum install at
```
**Examples of Using the 'at' Command**

The following are the some of the examples used for 'at' command:
1. Listing Scheduled Jobs

To list all scheduled jobs in the AT queue, you can use the `-l` option:
```
at -l
```
or,
```
atq
```
list_pending_jobs_at_command

This command will display a list of all pending jobs along with their job numbers.

2. Deleting a Scheduled Job

If you need to remove a scheduled job from the queue, you can do so by specifying its job number with the '-d' option:
```
at -d 1
```
This command will delete the job with job number 1 from the 'at' queue.

3. Scheduling a Job for the Coming Monday

To schedule a job for the coming Monday at a time twenty minutes later than the current time, the syntax would be:
```
at Monday +20 minutes
```
- 'at': The command to schedule a one-time task.
-  'Monday': Specifies the next Monday as the starting point.
- '+20 minutes': Adds 20 minutes to the specified starting point.

This command instructs the system to execute the specified job on the upcoming Monday, twenty minutes after the current time.

4. Scheduling a Job for a Specific Date and Time

To schedule a job to run at 1:45 on August 12, 2020, the command is:
```
at 1:45 081220
```
- '1:45': The time at which the command will be executed.
- '081220': The date in MMDDYY format, which stands for August 12, 2020

Here, the command specifies the exact date and time when the job should be executed, in the format of hour:minute monthdate.

5. Scheduling a Job for a Future Time

If you need to schedule a job to run at 3 PM four days from the current time, the command would be:
```
at 3pm + 4 days
```
- 'at 3pm': Specifies the time of day when the task should run, which is 3 PM.
- '+ 4 days': Adds four days to the current date to determine the execution date.

This command schedules the job to be executed at 3 PM, four days from the current time.

6. Scheduling a System Shutdown

To schedule a job to shutdown the system at 4:30 PM today, you can use the following command:
```
echo "shutdown -h now" | at -m 4:30
```
- 'echo "shutdown -h now"': This part creates a command that shuts down the system immediately.
- '|': The pipe operator (|) passes the output of the first command (echo "shutdown -h now") as input to the next command.
- 'at -m 4:30': This schedules the provided command to run at 4:30 (AM or PM). The '-m' flag tells at to send a mail to the user when the job is done (if mail is configured).

This command pipes the shutdown command to the 'at' command, specifying that the system should be shut down at 4:30 PM, and the user should receive an email notification when the job is completed.

7. Scheduling a Job for a Future Time Relative to Now

To schedule a job to run five hours from the current time, the command would be:
```
at now +5 hours
```
- 'at': This is the command used to schedule tasks for future execution.
- 'now +5 hours': This specifies the time at which the task should be executed.
    - now refers to the current time.
    - +5 hours adds 5 hours to the current time.

scheduling a job using at command

This command schedules the job to be executed five hours from the current time.

8. Different Method to delete job

'at -r' or 'atrm' command is used to deletes job. Below shows an example used to deletes job 11.

Example:
```
at -r 11
```
- 'at' is the command-line utility for scheduling one-time tasks.
- '-r' (or --remove) is an option to remove a scheduled job.
- '11' is the job number that you want to remove from the at queue.

or,
```
atrm 11
```
deleting a job using at command
