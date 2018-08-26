# CorruptedFlashDrive
This is a small BASH script I created to fix file names on corrupted flash drives.  



Why would you need to use this?:

Have you ever seen a flash drive get corrupted from a utility like Windows chkdsk?
All of the files and directories on the flash drive get put into a folder typically named FOUND.000.
All of the file extensions are changed to CHK and Windows can no longer open them. 
This can be a big problem when there are 2000+ files on the corrupted flash drive.



What does it do?:

After putting the appropriate directory of the mounted flash drive into the script, this script will use the file command to determine the file type of every file in the directory and then rename them to the appropriate extensions so Windows can open the files. 
