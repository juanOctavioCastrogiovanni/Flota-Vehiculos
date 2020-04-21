module Library where
import PdePreludat

type Flota = [Vehiculo] --creo un tipo de dato llamado FLOTA que esta hecho del dato VEHICULO dentro de una lista


data Genero = Femenino | Masculino deriving (Show) --creo un dato de llamado genero (F/M)

data Vehiculo = Propio Number | Contratado String Number deriving (Show) --La lista FLOTA solo tiene adentro este tipo de dato



--VEHICULO-->[VEHICULO] => FLOTA => VEHICULOS


edadJuvilatoria :: Genero -> Number --creo una funcion que cuando yo le pase Masculino o Femenino me devuelva las respectivas edades
edadJuvilatoria Masculino = 65
edadJuvilatoria Femenino = 60

vehiculos :: Flota --una lista llamada VEHICULOS va a ser de tipo FLOTA
vehiculos = [Propio 9, Propio 15, Propio 12, Contratado "Remixes" 4]

valorLitroNafta :: Number -- creo el valor por litro de nafta
valorLitroNafta = 16.5

costoPorKm :: Vehiculo -> Number --creo la funcion del problema principal.
costoPorKm (Propio consumo) = valorLitroNafta * (consumo / 10)
costoPorKm (Contratado _ costo) = costo