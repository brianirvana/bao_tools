from PIL import Image
import os

def transformarPNGaBMP(path,newpath):
  try:    
    image = Image.open(path)
    
    datas = image.getdata()
    newData = []
    i = 0
    print("Cantidad de pixels original: ",len(datas))
    for item in datas:
      if item[3] == 0:
        newData.append((0, 0, 0, 1))
      else:
        newData.append(item)
      i+=1
    image.putdata(newData)
    print("Cantidad de pixels final: ",len(newData))
    image = image.convert('RGB', colors=255)
    image.save(newpath, "BMP")
    print("Guardada nueva imagen: ",newpath,".BMP")
  except Exception as error:
    print("Error procesando el file: ", path, error)


if __name__=="__main__":

    
    for filename in os.listdir(os.getcwd()):
        src = filename
        newpath = "EXPORT/" + filename.strip('.png').strip('.PNG') + '.bmp'
        transformarPNGaBMP(filename, newpath)
