package proyecto_final

import weka.core.*

class CobWebController {



    def index() { }

    def crearArchivo(){
        def fileArff = new File("./actividades_${new Date()}.arff")
        fileArff.createNewFile()
        fileArff.write("@relation actividades")
        fileArff.write("\n")
        fileArff.write("@attribute juego {ARITMETICA,TRAZAR,MEMORIZAR,VOCABULARIO}")
        fileArff.write("\n")
        fileArff.write("@data")
        fileArff.write("\n")
        fileArff.write("ARITMETICA")
    }
}
