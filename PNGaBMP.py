from PIL import Image
import os

def transformarPNGaBMP(path,newpath):
  try:    
    image = Image.open(path)
    image = image.convert('RGB', colors=255)
    image.save(newpath, "PNG")
  except:
    print("Error procesando el file: ", path)
  
if __name__=="__main__":

    
    for filename in os.listdir(os.getcwd()):
        src = filename
        newpath = "EXPORT/" + filename.strip('.png').strip('.PNG') + '.bmp'
        transformarPNGaBMP(filename, newpath)


#si no esta creada la carpeta EXPORT adentro de los recursos del cliente el script NO funciona