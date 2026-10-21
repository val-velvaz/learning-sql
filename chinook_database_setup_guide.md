# Chinook Database Setup Guide for SQL Server in VS Code

This guide will walk you through the process of setting up the Chinook sample database locally using SQL Server and Visual Studio Code.

## Prerequisites

- **Visual Studio Code** installed.
- **SQL Server (mssql) extension** installed in VS Code.
- **SQL Server Express** (or any other SQL Server edition) installed on your local machine.

## Step 1: Clone the Repository

1. Open your terminal in VS Code.
2. Clone the repository containing the database scripts:

   ```bash
   git clone https://github.com/val-velvaz/chinook-database.git
   ```

3. Open the cloned folder in VS Code.

## Step 2: Connect to your Local SQL Server

1. Click on the **SQL Server** icon in the left activity bar of VS Code.
2. In the **Connections** view, click the **+ Add Connection** icon.
3. Fill in the connection details as follows:
   - **Server name:** `localhost\SQLEXPRESS` (or your specific local server name).
   - **Authentication type:** Select **Integrated** (Windows Authentication). This avoids needing a separate SQL username and password.
   - **Trust server certificate:** Check this box (True).
   - **Database name:** Leave it as `<default>` or blank (do **NOT** type "Chinook" yet, as it hasn't been created).
   - **Profile Name:** Give it a recognizable name (e.g., "Local SQL Server").
4. Press Enter to save and connect. You should see a green dot next to your new connection profile indicating it was successful.

## Step 3: Create and Populate the Database

1. Go back to the **Explorer** view in VS Code (the file icon on the top left).
2. Navigate to `chinook-database` → `ChinookDatabase` → `DataSources`.
3. Locate and open the file named **`Chinook_SqlServer.sql`**.
4. Right-click anywhere inside the text editor and select **Execute Query** (or click the green Play button in the top right corner of the editor).
5. Wait for the execution to finish. The "Query Results" pane at the bottom should display multiple lines saying `Commands completed successfully.`

## Troubleshooting (Common Issues)

### ❌ Error: "Cannot open database 'Chinook' requested by the login"

**Cause:** This happens if you typed "Chinook" in the **Database name** field when setting up your connection profile, but the database hasn't been created yet.

**Solution:**

1. Edit your connection profile or create a new one.
2. Change the **Database name** field back to `<default>` (or leave it empty).
3. Connect to the server first, and then execute the `.sql` script. The script itself contains the command `CREATE DATABASE [Chinook];`, which will generate it for you.

### ❓ I ran the script, but I can't find the "Tables" folder!

**Cause:** The SQL Server view needs to be refreshed, or you might be looking in the file explorer instead of the database explorer.

**Solution:**

1. Make sure you are in the **SQL Server extension panel** (the cylinder icon on the far left), not the standard file explorer.
2. Hover over the **Databases** folder under your connection profile and click the circular **Refresh** icon (or right-click → Refresh).
3. Expand the **Databases** folder. You should now see the `Chinook` database.
4. Expand `Chinook`, and inside you will finally see the **Tables** folder containing `dbo.Album`, `dbo.Artist`, etc.

   *Note: Do not look inside "System Databases" like `master` or `tempdb`, as Chinook is a user database and sits outside of that folder.*
