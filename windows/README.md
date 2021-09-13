This is for setting up a Windows environment.

Run with:

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/xoapit/system-init/master/windows/setup.ps1'))
```

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/xoapit/system-init/master/windows/setup2.ps1'))
```

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/xoapit/system-init/master/windows/setup3.ps1'))
```

## ***Troubleshooting***

### **Reset postgres password**

FOR WINDOWS: (what has helped me)

This is the link I am referring to: https://qsartoolbox.org/content/documents/ResettingPostgreSQLPassword.pdf

Open your cmd and go to C:\Program Files\PostgreSQL\12\data This is usually the right path. You might have it stored somewhere else. Note that, if you have a different postgresql version, there will be a different number. That doesn't matter.

Find a pg_hba.conf file and copy it to somewhere else (That way you will have an unmodified version of this file, so you will be able to look at it after we make some changes)

Open pg_hba.conf file (not the backup, but the original)

Find the multiple lines that start with host near the bottom of the file:

host all all 127.0.0.1/32 md5

host all all ::1/128 md5

host replication all 127.0.0.1/32 md5

host replication all ::1/128 md5

Replace md5 with trust:

host all all 127.0.0.1/32 trust

host all all ::1/128 trust

host replication all 127.0.0.1/32 trust

host replication all ::1/128 trust

Close this file

Go to your search bar on windows and open Services app. Find postgres and restart it. picture of services app

Write cd.. in cmd and then cd bin. Your path should be 

```
    C:\Program Files\PostgreSQL\13\bin
```

Enter: 

```
    psql -U postgres -h localhost

```

Enter: 

```
    ALTER USER postgres with password '<your new password>';
```

Make sure that you include ; at the end “ALTER ROLE” should be displayed as an indication that the previous line was executed successfully

Open original pg_hba.conf file and change back from trust to md5

Restart the server with Services app as before