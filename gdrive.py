#Upload files a gdrive
#github: github.com/bidegiann
#web: bidegain.com.ar


from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

gauth = GoogleAuth()           
drive = GoogleDrive(gauth)


upload_file_list = ['example.txt']

for upload_file in upload_file_list:
	gfile = drive.CreateFile({'parents': [{'id': 'key/gdrive'}]})
	gfile.SetContentFile(upload_file)
	gfile.Upload() 

