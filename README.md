# Sensores


**Acelerometro**https://github.com/AngelValdes4/Sensores/settings

Un acelerómetro mide los cambios en la velocidad a lo largo de un eje que permite conocer la orientación de nuestro teléfono en base a una serie de parametros de aceleración.

Para empezar importar Core Motion

    import CoreMotion

Ahora se necesita crear una intancia del obejto CMMotionManager
La aplicacion puede usarlo para recibir cuatro tipo de movimientos( datos del acelerometro, datos del girescopio, datos del magnetometro y datos del movimiento del dispositivo)

      let motionManager = CMMotionManager()

Para inicar las actualizaciones del acelerometro, llamaremos el siguiente metodo

    func starAccelerometerUpdates()
 



**Giroscopio**
La implmementacion del girescopio es similar al acelerometro con la diferencia de que el metodo sera diferente
 
 ~~~ 
 func startGyroUpdates ()
 ~~~
 
 Implementacion similar para el magnetometro y el movimiento del dispositivo
 
 ~~~ 
 func starMagnetometerUpdates ()
 func starDeviceMotionUpdates ()

video: https://www.youtube.com/watch?v=d1R0FFdZL1k&feature=youtu.be
