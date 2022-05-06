# Powershell script to  list all directories and their most recent  edit within each directory

This script will create a csv file with all the folders and their most recent edit within each directory.

## Usage

```powershell
.\folders_and_last_modified_date.ps1 <path> <output_file>
```

## Example

```powershell
.\folders_and_last_modified_date.ps1 C:\Users\user\Desktop\ C:\Users\user\Desktop\output.csv
```
## Output
A CSV file will be created in the path provided with the following format:

```
C:\Users\<username>\Desktop\folder1,2020-01-01 00:00:00
C:\Users\<username>\Desktop\folder2,2020-01-01 00:00:00
C:\Users\<username>\Desktop\folder3,2020-01-01 00:00:00
C:\Users\<username>\Desktop\folder4,2020-01-01 00:00:00
```
