# Language: PowerShell 7.0
# Repository name: Powershell-list-of-directories-and-most-recent-edit-within-each-directory
# Description: Lists all directories and their most recent edit within each directory
#
# Usage:
#   ./folders_and_last_modified_date.sh <path> <output_file>
#
# Output, in csv file
#   C:\Users\<username>\Desktop\folder1,2020-01-01 00:00:00
#   C:\Users\<username>\Desktop\folder2,2020-01-01 00:00:00
#   C:\Users\<username>\Desktop\folder3,2020-01-01 00:00:00
#   C:\Users\<username>\Desktop\folder4,2020-01-01 00:00:00

root_dir=$1
csv_path=$2

$subdirectories= Get-ChildItem -Path $root_dir -Directory

foreach($subdirectory in $subdirectories) {
    $last_modified_date = Get-ChildItem -Path $subdirectory.FullName -Recurse -Force | Sort-Object LastWriteTime -Descending | Select-Object -First 1

    $csv_entry = "$(($subdirectory.FullName)),$(($last_modified_date.LastWriteTime))"
    Add-Content $csv_path $csv_entry
}
