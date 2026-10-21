# How to Set Up and Connect to the Chinook Database Locally

This guide explains how to install a local SQL Server instance, connect to it using Visual Studio Code, and initialize the Chinook sample database.

## Prerequisites

* Visual Studio Code installed.
* SQL Server (mssql) extension installed in VS Code.
* 
* The Chinook database source code cloned to your local machine.

## Step 1: Install SQL Server Express

If you don't have a SQL Server running locally or via Docker, you need to install the engine.

Download SQL Server Express (free edition) from the official Microsoft website.

Run the installer and choose the Basic installation type.

Accept the terms and wait for the installation to finish.

Once completed, note the Instance Name or Connection String provided on the final screen (usually localhost\SQLEXPRESS). You can safely close the window after this.

## Step 2: Connect to the Server in VS Code

Before creating the database, you must connect to the general server instance.

Open Visual Studio Code and go to the SQL Server tab on the left sidebar.

Click the + Add Connection icon.

Server name: Enter localhost\SQLEXPRESS.

Authentication type: Select Integrated (or Windows Authentication). This uses your Windows account, so you won't need a specific SQL username or password.

Database name: Leave this field blank (or select <Default>). Do not type "Chinook" yet, as the database does not exist.

Trust server certificate: Check this box to allow local connections.

Click Connect. You should now see your server listed under the "Connections" panel with a green dot indicating a successful connection.

## Step 3: Create the Database

Now that you are connected to the server, you can run the script to generate the database.

In your VS Code file explorer, locate and open the Chinook_SqlServer.sql file from the cloned repository.

With the file open, click the green Play (Run) button in the top right corner of the editor, or right-click anywhere inside the code and select Execute Query.

Wait for the query to finish executing successfully.

Go back to the SQL Server sidebar, expand your connection, and expand the Databases folder. You should now see the Chinook database listed with all its tables ready to use!

Bonus Tip: If you cloned the Chinook repository inside your main project folder and want Git to ignore it so it doesn't get pushed to your GitHub, add the folder name to your .gitignore file (e.g., chinook-database/). If Git was already tracking it, run git rm -r --cached chinook-database/ in your terminal first.