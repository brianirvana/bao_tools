from PIL import Image
import os

def transformarPNGaBMP(path, newpath):
  try:
    image = Image.open(path)
    datas = image.getdata()
    newData = []
    print("Cantidad de píxeles original: ", len(datas))
    for item in datas:
      if item[3] == 0:
        newData.append((0, 0, 0, 255))  # Reemplaza la transparencia por negro absoluto (R, G, B, A)
      else:
        newData.append(item)
    image.putdata(newData)
    print("Cantidad de píxeles final: ", len(newData))
    image = image.convert('RGB')
    image.save(newpath, "BMP")
    print("Nueva imagen guardada en: ", newpath)
  except Exception as error:
    print("Error procesando el archivo: ", path, error)


if __name__ == "__main__":
  carpeta_origen = "GRAFICOS"
  carpeta_destino = "GRAFICOS-BMP"

  if not os.path.exists(carpeta_destino):
    os.makedirs(carpeta_destino)

  for filename in os.listdir(carpeta_origen):
    if filename.lower().endswith('.png'):
      src = os.path.join(carpeta_origen, filename)
      newpath = os.path.join(carpeta_destino, os.path.splitext(filename)[0] + '.bmp')
      transformarPNGaBMP(src, newpath)