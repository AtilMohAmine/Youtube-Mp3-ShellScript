# Youtube To Mp3 Downloader

Basic Shell Script to download one or multiple youtube videos as Mp3.

## Required
 #### youtube-dl:
  You can insall it withthe following command:
  >sudo apt install youtube-dl
  
## How to use
#### One Youtube URL:
```shell
./youtube-mp3 <URL>
```
#### Many Youtube URLs:
You must to add FilePath who has the youtube URLs as first parameter and *-l* or *--list* as second parameter.

Example:
```shell
./youtube-mp3 <FilePath> -l
```

Example of URLs file:
```
https://www.youtube.com/watch?v=jNQXAC9IVRw
https://www.youtube.com/watch?v=Oe421EPjeBE
```
