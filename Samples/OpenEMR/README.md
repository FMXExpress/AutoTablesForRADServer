# OpenEMR REST API Client Server
Automatically generated OpenEMR REST API client and server.

# Product Overview
The OpenEMR REST API Client Server was generated using AutoTables for RAD Server using the OpenEMR database schema from https://github.com/openemr/openemr OpenEMR is a "leading open-source electronic medical record and practice management software." The Auto Tables for RAD Server project is not affiliated with the OpenEMR project. The OpenEMR REST client compiles for Android, IOS, macOS, Windows, and Linux (using FMXLinux). The OpenEMR REST Server compiles for RAD Server. This project provides basic CRUD operations for the OpenEMR database. It includes listing data in a table, adding a new record in a table, editing a record in a table, and deleting a record in a table. There are over 500 tables in OpenEMR which provides a good demo of the AutoTables for RAD Server project. The API is fully documented in the Swagger 2.0 format.

# Compilation

The REST API client and server compile using Embarcadero Delphi 10.3.1.

The REST API client may compile using the free Embarcadero Delphi 10.3.1 Community Edition.
https://www.embarcadero.com/products/delphi/starter

The REST API server will compile using Embarcadero Delphi 10.3.1 Enterprise or Architect. It supports IIS and Apache on Windows, Apache on Linux, and a stand alone server on Windows and Linux.

# Configuration
You will need to edit the FDConnection component in the RAD Server project to enter your MySQL username, password, and hostname. Additionally, your database should be named openemr. Otherwise you will need to re-generate the project with Auto Tables for RAD Server using your specific database name.


# OpenEMR REST Client List View
![Alt text](Screenshots/list.jpg?raw=true "List View")

# OpenEMR REST Client Details View
![Alt text](Screenshots/detail.jpg?raw=true "Detail View")

# Workaround:

If you experience a EArgumentOutOfRangeException copy the Delphi FMX.Grid.Style.pas source file to your project directory and change the two raise lines in the CellRect event to Exit as follows:

```
function TStyledGrid.CellRect(const ACol, ARow: Integer): TRect;
var
I, X, Y: Integer;
HiddenFound: Boolean;
begin
if (ACol < 0) or (ACol > ColumnCount) then
Exit;//raise EArgumentOutOfRangeException.CreateResFmt(@SInvalidColumnIndex, [ACol]);
if (ARow < 0) or (ARow > RowCount) then
Exit;//raise EArgumentOutOfRangeException.CreateResFmt(@SInvalidRowIndex, [ARow]);
```
