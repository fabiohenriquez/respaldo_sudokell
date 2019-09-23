import Graphics.UI.Gtk
import Data.List
import System.Random

main :: IO ()
main = do
 let tablero_madre = 
        ["8","5","4","2","7","1","3","6","9",
         "1","3","9","6","5","8","7","4","2",
         "6","7","2","9","4","3","5","1","8",
         "7","2","3","1","8","6","9","5","4",
         "5","4","6","7","3","9","2","8","1",
         "9","1","8","4","2","5","6","3","7",
         "3","9","1","8","6","7","4","2","5",
         "2","8","5","3","9","4","1","7","6",
         "4","6","7","5","1","2","8","9","3"]
 initGUI
 window  <- windowNew
 set window [windowTitle := "Sudokell", containerBorderWidth := 20,
      windowDefaultWidth := 200, windowDefaultHeight := 200]

 tabla_dificultades   <- tableNew 1 3 True
 containerAdd window tabla_dificultades

 btn_facil <- buttonNewWithLabel "Facil"
 tableAttachDefaults tabla_dificultades btn_facil 1 2 0 1
 onClicked btn_facil (generar_facil tablero_madre)

 btn_medio <- buttonNewWithLabel "Medio"
 tableAttachDefaults tabla_dificultades btn_medio 1 2 1 2
 onClicked btn_medio (generar_medio tablero_madre)

 btn_dificl <- buttonNewWithLabel "Dificl"
 tableAttachDefaults tabla_dificultades btn_dificl 1 2 2 3
 onClicked btn_dificl (generar_dificil tablero_madre)

 onDestroy window mainQuit
 widgetShowAll window
 mainGUI

--FACIL
generar_facil::[String]->IO()
generar_facil tablero_madre = do
 window  <- windowNew
 set window [windowTitle := "Sudokell Facil", containerBorderWidth := 1,
      windowDefaultWidth := 5, windowDefaultHeight := 20]
 table   <- tableNew 12 9 True

 tableSetRowSpacing table 2 10
 tableSetRowSpacing table 5 10
 tableSetRowSpacing table 8 10

 tableSetColSpacing table 2 10
 tableSetColSpacing table 5 10
 tableSetColSpacing table 8 10

 containerAdd window table

 

 c0_0 <- entryNew
 entrySetMaxLength c0_0 1
 entrySetWidthChars c0_0 1
 tableAttachDefaults table c0_0 0 1 0 1

 c1_0 <- entryNew
 entrySetMaxLength c1_0 1
 entrySetWidthChars c1_0 1
 tableAttachDefaults table c1_0 1 2 0 1

 c2_0 <- entryNew
 entrySetMaxLength c2_0 1
 entrySetWidthChars c2_0 1
 tableAttachDefaults table c2_0 2 3 0 1

 c3_0 <- entryNew
 entrySetMaxLength c3_0 1
 entrySetWidthChars c3_0 1
 tableAttachDefaults table c3_0 3 4 0 1

 c4_0 <- entryNew
 entrySetMaxLength c4_0 1
 entrySetWidthChars c4_0 1
 tableAttachDefaults table c4_0 4 5 0 1

 c5_0 <- entryNew
 entrySetMaxLength c5_0 1
 entrySetWidthChars c5_0 1
 tableAttachDefaults table c5_0 5 6 0 1

 c6_0 <- entryNew
 entrySetMaxLength c6_0 1
 entrySetWidthChars c6_0 1
 tableAttachDefaults table c6_0 6 7 0 1

 c7_0 <- entryNew
 entrySetMaxLength c7_0 1
 entrySetWidthChars c7_0 1
 tableAttachDefaults table c7_0 7 8 0 1

 c8_0 <- entryNew
 entrySetMaxLength c8_0 1
 entrySetWidthChars c8_0 1
 tableAttachDefaults table c8_0 8 9 0 1

 c0_1 <- entryNew
 entrySetMaxLength c0_1 1
 entrySetWidthChars c0_1 1
 tableAttachDefaults table c0_1 0 1 1 2

 c1_1 <- entryNew
 entrySetMaxLength c1_1 1
 entrySetWidthChars c1_1 1
 tableAttachDefaults table c1_1 1 2 1 2

 c2_1 <- entryNew
 entrySetMaxLength c2_1 1
 entrySetWidthChars c2_1 1
 tableAttachDefaults table c2_1 2 3 1 2

 c3_1 <- entryNew
 entrySetMaxLength c3_1 1
 entrySetWidthChars c3_1 1
 tableAttachDefaults table c3_1 3 4 1 2

 c4_1 <- entryNew
 entrySetMaxLength c4_1 1
 entrySetWidthChars c4_1 1
 tableAttachDefaults table c4_1 4 5 1 2

 c5_1 <- entryNew
 entrySetMaxLength c5_1 1
 entrySetWidthChars c5_1 1
 tableAttachDefaults table c5_1 5 6 1 2

 c6_1 <- entryNew
 entrySetMaxLength c6_1 1
 entrySetWidthChars c6_1 1
 tableAttachDefaults table c6_1 6 7 1 2

 c7_1 <- entryNew
 entrySetMaxLength c7_1 1
 entrySetWidthChars c7_1 1
 tableAttachDefaults table c7_1 7 8 1 2

 c8_1 <- entryNew
 entrySetMaxLength c8_1 1
 entrySetWidthChars c8_1 1
 tableAttachDefaults table c8_1 8 9 1 2

 c0_2 <- entryNew
 entrySetMaxLength c0_2 1
 entrySetWidthChars c0_2 1
 tableAttachDefaults table c0_2 0 1 2 3

 c1_2 <- entryNew
 entrySetMaxLength c1_2 1
 entrySetWidthChars c1_2 1
 tableAttachDefaults table c1_2 1 2 2 3

 c2_2 <- entryNew
 entrySetMaxLength c2_2 1
 entrySetWidthChars c2_2 1
 tableAttachDefaults table c2_2 2 3 2 3

 c3_2 <- entryNew
 entrySetMaxLength c3_2 1
 entrySetWidthChars c3_2 1
 tableAttachDefaults table c3_2 3 4 2 3

 c4_2 <- entryNew
 entrySetMaxLength c4_2 1
 entrySetWidthChars c4_2 1
 tableAttachDefaults table c4_2 4 5 2 3

 c5_2 <- entryNew
 entrySetMaxLength c5_2 1
 entrySetWidthChars c5_2 1
 tableAttachDefaults table c5_2 5 6 2 3

 c6_2 <- entryNew
 entrySetMaxLength c6_2 1
 entrySetWidthChars c6_2 1
 tableAttachDefaults table c6_2 6 7 2 3

 c7_2 <- entryNew
 entrySetMaxLength c7_2 1
 entrySetWidthChars c7_2 1
 tableAttachDefaults table c7_2 7 8 2 3

 c8_2 <- entryNew
 entrySetMaxLength c8_2 1
 entrySetWidthChars c8_2 1
 tableAttachDefaults table c8_2 8 9 2 3

 c0_3 <- entryNew
 entrySetMaxLength c0_3 1
 entrySetWidthChars c0_3 1
 tableAttachDefaults table c0_3 0 1 3 4

 c1_3 <- entryNew
 entrySetMaxLength c1_3 1
 entrySetWidthChars c1_3 1
 tableAttachDefaults table c1_3 1 2 3 4

 c2_3 <- entryNew
 entrySetMaxLength c2_3 1
 entrySetWidthChars c2_3 1
 tableAttachDefaults table c2_3 2 3 3 4

 c3_3 <- entryNew
 entrySetMaxLength c3_3 1
 entrySetWidthChars c3_3 1
 tableAttachDefaults table c3_3 3 4 3 4

 c4_3 <- entryNew
 entrySetMaxLength c4_3 1
 entrySetWidthChars c4_3 1
 tableAttachDefaults table c4_3 4 5 3 4

 c5_3 <- entryNew
 entrySetMaxLength c5_3 1
 entrySetWidthChars c5_3 1
 tableAttachDefaults table c5_3 5 6 3 4

 c6_3 <- entryNew
 entrySetMaxLength c6_3 1
 entrySetWidthChars c6_3 1
 tableAttachDefaults table c6_3 6 7 3 4

 c7_3 <- entryNew
 entrySetMaxLength c7_3 1
 entrySetWidthChars c7_3 1
 tableAttachDefaults table c7_3 7 8 3 4

 c8_3 <- entryNew
 entrySetMaxLength c8_3 1
 entrySetWidthChars c8_3 1
 tableAttachDefaults table c8_3 8 9 3 4

 c0_4 <- entryNew
 entrySetMaxLength c0_4 1
 entrySetWidthChars c0_4 1
 tableAttachDefaults table c0_4 0 1 4 5

 c1_4 <- entryNew
 entrySetMaxLength c1_4 1
 entrySetWidthChars c1_4 1
 tableAttachDefaults table c1_4 1 2 4 5

 c2_4 <- entryNew
 entrySetMaxLength c2_4 1
 entrySetWidthChars c2_4 1
 tableAttachDefaults table c2_4 2 3 4 5

 c3_4 <- entryNew
 entrySetMaxLength c3_4 1
 entrySetWidthChars c3_4 1
 tableAttachDefaults table c3_4 3 4 4 5

 c4_4 <- entryNew
 entrySetMaxLength c4_4 1
 entrySetWidthChars c4_4 1
 tableAttachDefaults table c4_4 4 5 4 5

 c5_4 <- entryNew
 entrySetMaxLength c5_4 1
 entrySetWidthChars c5_4 1
 tableAttachDefaults table c5_4 5 6 4 5

 c6_4 <- entryNew
 entrySetMaxLength c6_4 1
 entrySetWidthChars c6_4 1
 tableAttachDefaults table c6_4 6 7 4 5

 c7_4 <- entryNew
 entrySetMaxLength c7_4 1
 entrySetWidthChars c7_4 1
 tableAttachDefaults table c7_4 7 8 4 5

 c8_4 <- entryNew
 entrySetMaxLength c8_4 1
 entrySetWidthChars c8_4 1
 tableAttachDefaults table c8_4 8 9 4 5

 c0_5 <- entryNew
 entrySetMaxLength c0_5 1
 entrySetWidthChars c0_5 1
 tableAttachDefaults table c0_5 0 1 5 6

 c1_5 <- entryNew
 entrySetMaxLength c1_5 1
 entrySetWidthChars c1_5 1
 tableAttachDefaults table c1_5 1 2 5 6

 c2_5 <- entryNew
 entrySetMaxLength c2_5 1
 entrySetWidthChars c2_5 1
 tableAttachDefaults table c2_5 2 3 5 6

 c3_5 <- entryNew
 entrySetMaxLength c3_5 1
 entrySetWidthChars c3_5 1
 tableAttachDefaults table c3_5 3 4 5 6

 c4_5 <- entryNew
 entrySetMaxLength c4_5 1
 entrySetWidthChars c4_5 1
 tableAttachDefaults table c4_5 4 5 5 6

 c5_5 <- entryNew
 entrySetMaxLength c5_5 1
 entrySetWidthChars c5_5 1
 tableAttachDefaults table c5_5 5 6 5 6

 c6_5 <- entryNew
 entrySetMaxLength c6_5 1
 entrySetWidthChars c6_5 1
 tableAttachDefaults table c6_5 6 7 5 6

 c7_5 <- entryNew
 entrySetMaxLength c7_5 1
 entrySetWidthChars c7_5 1
 tableAttachDefaults table c7_5 7 8 5 6

 c8_5 <- entryNew
 entrySetMaxLength c8_5 1
 entrySetWidthChars c8_5 1
 tableAttachDefaults table c8_5 8 9 5 6

 c0_6 <- entryNew
 entrySetMaxLength c0_6 1
 entrySetWidthChars c0_6 1
 tableAttachDefaults table c0_6 0 1 6 7

 c1_6 <- entryNew
 entrySetMaxLength c1_6 1
 entrySetWidthChars c1_6 1
 tableAttachDefaults table c1_6 1 2 6 7

 c2_6 <- entryNew
 entrySetMaxLength c2_6 1
 entrySetWidthChars c2_6 1
 tableAttachDefaults table c2_6 2 3 6 7

 c3_6 <- entryNew
 entrySetMaxLength c3_6 1
 entrySetWidthChars c3_6 1
 tableAttachDefaults table c3_6 3 4 6 7

 c4_6 <- entryNew
 entrySetMaxLength c4_6 1
 entrySetWidthChars c4_6 1
 tableAttachDefaults table c4_6 4 5 6 7

 c5_6 <- entryNew
 entrySetMaxLength c5_6 1
 entrySetWidthChars c5_6 1
 tableAttachDefaults table c5_6 5 6 6 7

 c6_6 <- entryNew
 entrySetMaxLength c6_6 1
 entrySetWidthChars c6_6 1
 tableAttachDefaults table c6_6 6 7 6 7

 c7_6 <- entryNew
 entrySetMaxLength c7_6 1
 entrySetWidthChars c7_6 1
 tableAttachDefaults table c7_6 7 8 6 7

 c8_6 <- entryNew
 entrySetMaxLength c8_6 1
 entrySetWidthChars c8_6 1
 tableAttachDefaults table c8_6 8 9 6 7

 c0_7 <- entryNew
 entrySetMaxLength c0_7 1
 entrySetWidthChars c0_7 1
 tableAttachDefaults table c0_7 0 1 7 8

 c1_7 <- entryNew
 entrySetMaxLength c1_7 1
 entrySetWidthChars c1_7 1
 tableAttachDefaults table c1_7 1 2 7 8

 c2_7 <- entryNew
 entrySetMaxLength c2_7 1
 entrySetWidthChars c2_7 1
 tableAttachDefaults table c2_7 2 3 7 8

 c3_7 <- entryNew
 entrySetMaxLength c3_7 1
 entrySetWidthChars c3_7 1
 tableAttachDefaults table c3_7 3 4 7 8

 c4_7 <- entryNew
 entrySetMaxLength c4_7 1
 entrySetWidthChars c4_7 1
 tableAttachDefaults table c4_7 4 5 7 8

 c5_7 <- entryNew
 entrySetMaxLength c5_7 1
 entrySetWidthChars c5_7 1
 tableAttachDefaults table c5_7 5 6 7 8

 c6_7 <- entryNew
 entrySetMaxLength c6_7 1
 entrySetWidthChars c6_7 1
 tableAttachDefaults table c6_7 6 7 7 8

 c7_7 <- entryNew
 entrySetMaxLength c7_7 1
 entrySetWidthChars c7_7 1
 tableAttachDefaults table c7_7 7 8 7 8

 c8_7 <- entryNew
 entrySetMaxLength c8_7 1
 entrySetWidthChars c8_7 1
 tableAttachDefaults table c8_7 8 9 7 8

 c0_8 <- entryNew
 entrySetMaxLength c0_8 1
 entrySetWidthChars c0_8 1
 tableAttachDefaults table c0_8 0 1 8 9

 c1_8 <- entryNew
 entrySetMaxLength c1_8 1
 entrySetWidthChars c1_8 1
 tableAttachDefaults table c1_8 1 2 8 9

 c2_8 <- entryNew
 entrySetMaxLength c2_8 1
 entrySetWidthChars c2_8 1
 tableAttachDefaults table c2_8 2 3 8 9

 c3_8 <- entryNew
 entrySetMaxLength c3_8 1
 entrySetWidthChars c3_8 1
 tableAttachDefaults table c3_8 3 4 8 9

 c4_8 <- entryNew
 entrySetMaxLength c4_8 1
 entrySetWidthChars c4_8 1
 tableAttachDefaults table c4_8 4 5 8 9

 c5_8 <- entryNew
 entrySetMaxLength c5_8 1
 entrySetWidthChars c5_8 1
 tableAttachDefaults table c5_8 5 6 8 9

 c6_8 <- entryNew
 entrySetMaxLength c6_8 1
 entrySetWidthChars c6_8 1
 tableAttachDefaults table c6_8 6 7 8 9

 c7_8 <- entryNew
 entrySetMaxLength c7_8 1
 entrySetWidthChars c7_8 1
 tableAttachDefaults table c7_8 7 8 8 9

 c8_8 <- entryNew
 entrySetMaxLength c8_8 1
 entrySetWidthChars c8_8 1
 tableAttachDefaults table c8_8 8 9 8 9
  
 estado <- labelNewWithMnemonic "A Jugar!"
 tableAttachDefaults table estado 3 6 11 12

 info <- labelNewWithMnemonic "SUDOKELL1\n Ha escogido el nivel Facil, tiene a su disposicion tres funciones, dos de ellas se encuentran en los botones \n en el inferior de la ventana, la tercera es la posibilidad de obtener pistas, para ello, ubiquese en la celda\ndonde necesite ayuda y presione ENTER Diviertase!"
 tableAttachDefaults table info 0 9 9 11

 --entradas
 let x = [c0_0,c1_0,c2_0,c3_0,c4_0,c5_0,c6_0,c7_0,c8_0,c0_1,c1_1,c2_1,c3_1,c4_1,c5_1,c6_1,c7_1,c8_1,c0_2,c1_2,c2_2,c3_2,c4_2,c5_2,c6_2,c7_2,c8_2,c0_3,c1_3,c2_3,c3_3,c4_3,c5_3,c6_3,c7_3,c8_3,c0_4,c1_4,c2_4,c3_4,c4_4,c5_4,c6_4,c7_4,c8_4,c0_5,c1_5,c2_5,c3_5,c4_5,c5_5,c6_5,c7_5,c8_5,c0_6,c1_6,c2_6,c3_6,c4_6,c5_6,c6_6,c7_6,c8_6,c0_7,c1_7,c2_7,c3_7,c4_7,c5_7,c6_7,c7_7,c8_7,c0_8,c1_8,c2_8,c3_8,c4_8,c5_8,c6_8,c7_8,c8_8]

 --REVOLVER

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar
 agregarMatrizFACIL x matriz4 81
 
 onEntryActivate c0_0 (pista c0_0 matriz4 0)
 onEntryActivate c1_0 (pista c1_0 matriz4 1)
 onEntryActivate c2_0 (pista c2_0 matriz4 2)
 onEntryActivate c3_0 (pista c3_0 matriz4 3)
 onEntryActivate c4_0 (pista c4_0 matriz4 4)
 onEntryActivate c5_0 (pista c5_0 matriz4 5)
 onEntryActivate c6_0 (pista c6_0 matriz4 6)
 onEntryActivate c7_0 (pista c7_0 matriz4 7)
 onEntryActivate c8_0 (pista c8_0 matriz4 8)
 onEntryActivate c0_1 (pista c0_1 matriz4 9)
 onEntryActivate c1_1 (pista c1_1 matriz4 10)
 onEntryActivate c2_1 (pista c2_1 matriz4 11)
 onEntryActivate c3_1 (pista c3_1 matriz4 12)
 onEntryActivate c4_1 (pista c4_1 matriz4 13)
 onEntryActivate c5_1 (pista c5_1 matriz4 14)
 onEntryActivate c6_1 (pista c6_1 matriz4 15)
 onEntryActivate c7_1 (pista c7_1 matriz4 16)
 onEntryActivate c8_1 (pista c8_1 matriz4 17)
 onEntryActivate c0_2 (pista c0_2 matriz4 18)
 onEntryActivate c1_2 (pista c1_2 matriz4 19)
 onEntryActivate c2_2 (pista c2_2 matriz4 20)
 onEntryActivate c3_2 (pista c3_2 matriz4 21)
 onEntryActivate c4_2 (pista c4_2 matriz4 22)
 onEntryActivate c5_2 (pista c5_2 matriz4 23)
 onEntryActivate c6_2 (pista c6_2 matriz4 24)
 onEntryActivate c7_2 (pista c7_2 matriz4 25)
 onEntryActivate c8_2 (pista c8_2 matriz4 26)
 onEntryActivate c0_3 (pista c0_3 matriz4 27)
 onEntryActivate c1_3 (pista c1_3 matriz4 28)
 onEntryActivate c2_3 (pista c2_3 matriz4 29)
 onEntryActivate c3_3 (pista c3_3 matriz4 30)
 onEntryActivate c4_3 (pista c4_3 matriz4 31)
 onEntryActivate c5_3 (pista c5_3 matriz4 32)
 onEntryActivate c6_3 (pista c6_3 matriz4 33)
 onEntryActivate c7_3 (pista c7_3 matriz4 34)
 onEntryActivate c8_3 (pista c8_3 matriz4 35)
 onEntryActivate c0_4 (pista c0_4 matriz4 36)
 onEntryActivate c1_4 (pista c1_4 matriz4 37)
 onEntryActivate c2_4 (pista c2_4 matriz4 38)
 onEntryActivate c3_4 (pista c3_4 matriz4 39)
 onEntryActivate c4_4 (pista c4_4 matriz4 40)
 onEntryActivate c5_4 (pista c5_4 matriz4 41)
 onEntryActivate c6_4 (pista c6_4 matriz4 42)
 onEntryActivate c7_4 (pista c7_4 matriz4 43)
 onEntryActivate c8_4 (pista c8_4 matriz4 44)
 onEntryActivate c0_5 (pista c0_5 matriz4 45)
 onEntryActivate c1_5 (pista c1_5 matriz4 46)
 onEntryActivate c2_5 (pista c2_5 matriz4 47)
 onEntryActivate c3_5 (pista c3_5 matriz4 48)
 onEntryActivate c4_5 (pista c4_5 matriz4 49)
 onEntryActivate c5_5 (pista c5_5 matriz4 50)
 onEntryActivate c6_5 (pista c6_5 matriz4 51)
 onEntryActivate c7_5 (pista c7_5 matriz4 52)
 onEntryActivate c8_5 (pista c8_5 matriz4 53)
 onEntryActivate c0_6 (pista c0_6 matriz4 54)
 onEntryActivate c1_6 (pista c1_6 matriz4 55)
 onEntryActivate c2_6 (pista c2_6 matriz4 56)
 onEntryActivate c3_6 (pista c3_6 matriz4 57)
 onEntryActivate c4_6 (pista c4_6 matriz4 58)
 onEntryActivate c5_6 (pista c5_6 matriz4 59)
 onEntryActivate c6_6 (pista c6_6 matriz4 60)
 onEntryActivate c7_6 (pista c7_6 matriz4 61)
 onEntryActivate c8_6 (pista c8_6 matriz4 62)
 onEntryActivate c0_7 (pista c0_7 matriz4 63)
 onEntryActivate c1_7 (pista c1_7 matriz4 64)
 onEntryActivate c2_7 (pista c2_7 matriz4 65)
 onEntryActivate c3_7 (pista c3_7 matriz4 66)
 onEntryActivate c4_7 (pista c4_7 matriz4 67)
 onEntryActivate c5_7 (pista c5_7 matriz4 68)
 onEntryActivate c6_7 (pista c6_7 matriz4 69)
 onEntryActivate c7_7 (pista c7_7 matriz4 70)
 onEntryActivate c8_7 (pista c8_7 matriz4 71)
 onEntryActivate c0_8 (pista c0_8 matriz4 72)
 onEntryActivate c1_8 (pista c1_8 matriz4 73)
 onEntryActivate c2_8 (pista c2_8 matriz4 74)
 onEntryActivate c3_8 (pista c3_8 matriz4 75)
 onEntryActivate c4_8 (pista c4_8 matriz4 76)
 onEntryActivate c5_8 (pista c5_8 matriz4 77)
 onEntryActivate c6_8 (pista c6_8 matriz4 78)
 onEntryActivate c7_8 (pista c7_8 matriz4 79)
 onEntryActivate c8_8 (pista c8_8 matriz4 80)


 resolver <- buttonNewWithLabel "Resolver"
 tableAttachDefaults table resolver 2 3 11 12
 onClicked resolver (resolverJuego x matriz4 81)

 verificar <- buttonNewWithLabel "Verificar"
 tableAttachDefaults table verificar 6 7 11 12
 onClicked verificar (verificarSolucion x matriz4 81 estado)

 onDestroy window mainQuit
 widgetShowAll window
 mainGUI

--MEDIO
generar_medio::[String]->IO()
generar_medio tablero_madre = do
 window  <- windowNew
 set window [windowTitle := "Sudokell Medio", containerBorderWidth := 1,
      windowDefaultWidth := 5, windowDefaultHeight := 20]
 table   <- tableNew 12 9 True

 tableSetRowSpacing table 2 10
 tableSetRowSpacing table 5 10
 tableSetRowSpacing table 8 10

 tableSetColSpacing table 2 10
 tableSetColSpacing table 5 10
 tableSetColSpacing table 8 10

 containerAdd window table

 

 c0_0 <- entryNew
 entrySetMaxLength c0_0 1
 entrySetWidthChars c0_0 1
 tableAttachDefaults table c0_0 0 1 0 1

 c1_0 <- entryNew
 entrySetMaxLength c1_0 1
 entrySetWidthChars c1_0 1
 tableAttachDefaults table c1_0 1 2 0 1

 c2_0 <- entryNew
 entrySetMaxLength c2_0 1
 entrySetWidthChars c2_0 1
 tableAttachDefaults table c2_0 2 3 0 1

 c3_0 <- entryNew
 entrySetMaxLength c3_0 1
 entrySetWidthChars c3_0 1
 tableAttachDefaults table c3_0 3 4 0 1

 c4_0 <- entryNew
 entrySetMaxLength c4_0 1
 entrySetWidthChars c4_0 1
 tableAttachDefaults table c4_0 4 5 0 1

 c5_0 <- entryNew
 entrySetMaxLength c5_0 1
 entrySetWidthChars c5_0 1
 tableAttachDefaults table c5_0 5 6 0 1

 c6_0 <- entryNew
 entrySetMaxLength c6_0 1
 entrySetWidthChars c6_0 1
 tableAttachDefaults table c6_0 6 7 0 1

 c7_0 <- entryNew
 entrySetMaxLength c7_0 1
 entrySetWidthChars c7_0 1
 tableAttachDefaults table c7_0 7 8 0 1

 c8_0 <- entryNew
 entrySetMaxLength c8_0 1
 entrySetWidthChars c8_0 1
 tableAttachDefaults table c8_0 8 9 0 1

 c0_1 <- entryNew
 entrySetMaxLength c0_1 1
 entrySetWidthChars c0_1 1
 tableAttachDefaults table c0_1 0 1 1 2

 c1_1 <- entryNew
 entrySetMaxLength c1_1 1
 entrySetWidthChars c1_1 1
 tableAttachDefaults table c1_1 1 2 1 2

 c2_1 <- entryNew
 entrySetMaxLength c2_1 1
 entrySetWidthChars c2_1 1
 tableAttachDefaults table c2_1 2 3 1 2

 c3_1 <- entryNew
 entrySetMaxLength c3_1 1
 entrySetWidthChars c3_1 1
 tableAttachDefaults table c3_1 3 4 1 2

 c4_1 <- entryNew
 entrySetMaxLength c4_1 1
 entrySetWidthChars c4_1 1
 tableAttachDefaults table c4_1 4 5 1 2

 c5_1 <- entryNew
 entrySetMaxLength c5_1 1
 entrySetWidthChars c5_1 1
 tableAttachDefaults table c5_1 5 6 1 2

 c6_1 <- entryNew
 entrySetMaxLength c6_1 1
 entrySetWidthChars c6_1 1
 tableAttachDefaults table c6_1 6 7 1 2

 c7_1 <- entryNew
 entrySetMaxLength c7_1 1
 entrySetWidthChars c7_1 1
 tableAttachDefaults table c7_1 7 8 1 2

 c8_1 <- entryNew
 entrySetMaxLength c8_1 1
 entrySetWidthChars c8_1 1
 tableAttachDefaults table c8_1 8 9 1 2

 c0_2 <- entryNew
 entrySetMaxLength c0_2 1
 entrySetWidthChars c0_2 1
 tableAttachDefaults table c0_2 0 1 2 3

 c1_2 <- entryNew
 entrySetMaxLength c1_2 1
 entrySetWidthChars c1_2 1
 tableAttachDefaults table c1_2 1 2 2 3

 c2_2 <- entryNew
 entrySetMaxLength c2_2 1
 entrySetWidthChars c2_2 1
 tableAttachDefaults table c2_2 2 3 2 3

 c3_2 <- entryNew
 entrySetMaxLength c3_2 1
 entrySetWidthChars c3_2 1
 tableAttachDefaults table c3_2 3 4 2 3

 c4_2 <- entryNew
 entrySetMaxLength c4_2 1
 entrySetWidthChars c4_2 1
 tableAttachDefaults table c4_2 4 5 2 3

 c5_2 <- entryNew
 entrySetMaxLength c5_2 1
 entrySetWidthChars c5_2 1
 tableAttachDefaults table c5_2 5 6 2 3

 c6_2 <- entryNew
 entrySetMaxLength c6_2 1
 entrySetWidthChars c6_2 1
 tableAttachDefaults table c6_2 6 7 2 3

 c7_2 <- entryNew
 entrySetMaxLength c7_2 1
 entrySetWidthChars c7_2 1
 tableAttachDefaults table c7_2 7 8 2 3

 c8_2 <- entryNew
 entrySetMaxLength c8_2 1
 entrySetWidthChars c8_2 1
 tableAttachDefaults table c8_2 8 9 2 3

 c0_3 <- entryNew
 entrySetMaxLength c0_3 1
 entrySetWidthChars c0_3 1
 tableAttachDefaults table c0_3 0 1 3 4

 c1_3 <- entryNew
 entrySetMaxLength c1_3 1
 entrySetWidthChars c1_3 1
 tableAttachDefaults table c1_3 1 2 3 4

 c2_3 <- entryNew
 entrySetMaxLength c2_3 1
 entrySetWidthChars c2_3 1
 tableAttachDefaults table c2_3 2 3 3 4

 c3_3 <- entryNew
 entrySetMaxLength c3_3 1
 entrySetWidthChars c3_3 1
 tableAttachDefaults table c3_3 3 4 3 4

 c4_3 <- entryNew
 entrySetMaxLength c4_3 1
 entrySetWidthChars c4_3 1
 tableAttachDefaults table c4_3 4 5 3 4

 c5_3 <- entryNew
 entrySetMaxLength c5_3 1
 entrySetWidthChars c5_3 1
 tableAttachDefaults table c5_3 5 6 3 4

 c6_3 <- entryNew
 entrySetMaxLength c6_3 1
 entrySetWidthChars c6_3 1
 tableAttachDefaults table c6_3 6 7 3 4

 c7_3 <- entryNew
 entrySetMaxLength c7_3 1
 entrySetWidthChars c7_3 1
 tableAttachDefaults table c7_3 7 8 3 4

 c8_3 <- entryNew
 entrySetMaxLength c8_3 1
 entrySetWidthChars c8_3 1
 tableAttachDefaults table c8_3 8 9 3 4

 c0_4 <- entryNew
 entrySetMaxLength c0_4 1
 entrySetWidthChars c0_4 1
 tableAttachDefaults table c0_4 0 1 4 5

 c1_4 <- entryNew
 entrySetMaxLength c1_4 1
 entrySetWidthChars c1_4 1
 tableAttachDefaults table c1_4 1 2 4 5

 c2_4 <- entryNew
 entrySetMaxLength c2_4 1
 entrySetWidthChars c2_4 1
 tableAttachDefaults table c2_4 2 3 4 5

 c3_4 <- entryNew
 entrySetMaxLength c3_4 1
 entrySetWidthChars c3_4 1
 tableAttachDefaults table c3_4 3 4 4 5

 c4_4 <- entryNew
 entrySetMaxLength c4_4 1
 entrySetWidthChars c4_4 1
 tableAttachDefaults table c4_4 4 5 4 5

 c5_4 <- entryNew
 entrySetMaxLength c5_4 1
 entrySetWidthChars c5_4 1
 tableAttachDefaults table c5_4 5 6 4 5

 c6_4 <- entryNew
 entrySetMaxLength c6_4 1
 entrySetWidthChars c6_4 1
 tableAttachDefaults table c6_4 6 7 4 5

 c7_4 <- entryNew
 entrySetMaxLength c7_4 1
 entrySetWidthChars c7_4 1
 tableAttachDefaults table c7_4 7 8 4 5

 c8_4 <- entryNew
 entrySetMaxLength c8_4 1
 entrySetWidthChars c8_4 1
 tableAttachDefaults table c8_4 8 9 4 5

 c0_5 <- entryNew
 entrySetMaxLength c0_5 1
 entrySetWidthChars c0_5 1
 tableAttachDefaults table c0_5 0 1 5 6

 c1_5 <- entryNew
 entrySetMaxLength c1_5 1
 entrySetWidthChars c1_5 1
 tableAttachDefaults table c1_5 1 2 5 6

 c2_5 <- entryNew
 entrySetMaxLength c2_5 1
 entrySetWidthChars c2_5 1
 tableAttachDefaults table c2_5 2 3 5 6

 c3_5 <- entryNew
 entrySetMaxLength c3_5 1
 entrySetWidthChars c3_5 1
 tableAttachDefaults table c3_5 3 4 5 6

 c4_5 <- entryNew
 entrySetMaxLength c4_5 1
 entrySetWidthChars c4_5 1
 tableAttachDefaults table c4_5 4 5 5 6

 c5_5 <- entryNew
 entrySetMaxLength c5_5 1
 entrySetWidthChars c5_5 1
 tableAttachDefaults table c5_5 5 6 5 6

 c6_5 <- entryNew
 entrySetMaxLength c6_5 1
 entrySetWidthChars c6_5 1
 tableAttachDefaults table c6_5 6 7 5 6

 c7_5 <- entryNew
 entrySetMaxLength c7_5 1
 entrySetWidthChars c7_5 1
 tableAttachDefaults table c7_5 7 8 5 6

 c8_5 <- entryNew
 entrySetMaxLength c8_5 1
 entrySetWidthChars c8_5 1
 tableAttachDefaults table c8_5 8 9 5 6

 c0_6 <- entryNew
 entrySetMaxLength c0_6 1
 entrySetWidthChars c0_6 1
 tableAttachDefaults table c0_6 0 1 6 7

 c1_6 <- entryNew
 entrySetMaxLength c1_6 1
 entrySetWidthChars c1_6 1
 tableAttachDefaults table c1_6 1 2 6 7

 c2_6 <- entryNew
 entrySetMaxLength c2_6 1
 entrySetWidthChars c2_6 1
 tableAttachDefaults table c2_6 2 3 6 7

 c3_6 <- entryNew
 entrySetMaxLength c3_6 1
 entrySetWidthChars c3_6 1
 tableAttachDefaults table c3_6 3 4 6 7

 c4_6 <- entryNew
 entrySetMaxLength c4_6 1
 entrySetWidthChars c4_6 1
 tableAttachDefaults table c4_6 4 5 6 7

 c5_6 <- entryNew
 entrySetMaxLength c5_6 1
 entrySetWidthChars c5_6 1
 tableAttachDefaults table c5_6 5 6 6 7

 c6_6 <- entryNew
 entrySetMaxLength c6_6 1
 entrySetWidthChars c6_6 1
 tableAttachDefaults table c6_6 6 7 6 7

 c7_6 <- entryNew
 entrySetMaxLength c7_6 1
 entrySetWidthChars c7_6 1
 tableAttachDefaults table c7_6 7 8 6 7

 c8_6 <- entryNew
 entrySetMaxLength c8_6 1
 entrySetWidthChars c8_6 1
 tableAttachDefaults table c8_6 8 9 6 7

 c0_7 <- entryNew
 entrySetMaxLength c0_7 1
 entrySetWidthChars c0_7 1
 tableAttachDefaults table c0_7 0 1 7 8

 c1_7 <- entryNew
 entrySetMaxLength c1_7 1
 entrySetWidthChars c1_7 1
 tableAttachDefaults table c1_7 1 2 7 8

 c2_7 <- entryNew
 entrySetMaxLength c2_7 1
 entrySetWidthChars c2_7 1
 tableAttachDefaults table c2_7 2 3 7 8

 c3_7 <- entryNew
 entrySetMaxLength c3_7 1
 entrySetWidthChars c3_7 1
 tableAttachDefaults table c3_7 3 4 7 8

 c4_7 <- entryNew
 entrySetMaxLength c4_7 1
 entrySetWidthChars c4_7 1
 tableAttachDefaults table c4_7 4 5 7 8

 c5_7 <- entryNew
 entrySetMaxLength c5_7 1
 entrySetWidthChars c5_7 1
 tableAttachDefaults table c5_7 5 6 7 8

 c6_7 <- entryNew
 entrySetMaxLength c6_7 1
 entrySetWidthChars c6_7 1
 tableAttachDefaults table c6_7 6 7 7 8

 c7_7 <- entryNew
 entrySetMaxLength c7_7 1
 entrySetWidthChars c7_7 1
 tableAttachDefaults table c7_7 7 8 7 8

 c8_7 <- entryNew
 entrySetMaxLength c8_7 1
 entrySetWidthChars c8_7 1
 tableAttachDefaults table c8_7 8 9 7 8

 c0_8 <- entryNew
 entrySetMaxLength c0_8 1
 entrySetWidthChars c0_8 1
 tableAttachDefaults table c0_8 0 1 8 9

 c1_8 <- entryNew
 entrySetMaxLength c1_8 1
 entrySetWidthChars c1_8 1
 tableAttachDefaults table c1_8 1 2 8 9

 c2_8 <- entryNew
 entrySetMaxLength c2_8 1
 entrySetWidthChars c2_8 1
 tableAttachDefaults table c2_8 2 3 8 9

 c3_8 <- entryNew
 entrySetMaxLength c3_8 1
 entrySetWidthChars c3_8 1
 tableAttachDefaults table c3_8 3 4 8 9

 c4_8 <- entryNew
 entrySetMaxLength c4_8 1
 entrySetWidthChars c4_8 1
 tableAttachDefaults table c4_8 4 5 8 9

 c5_8 <- entryNew
 entrySetMaxLength c5_8 1
 entrySetWidthChars c5_8 1
 tableAttachDefaults table c5_8 5 6 8 9

 c6_8 <- entryNew
 entrySetMaxLength c6_8 1
 entrySetWidthChars c6_8 1
 tableAttachDefaults table c6_8 6 7 8 9

 c7_8 <- entryNew
 entrySetMaxLength c7_8 1
 entrySetWidthChars c7_8 1
 tableAttachDefaults table c7_8 7 8 8 9

 c8_8 <- entryNew
 entrySetMaxLength c8_8 1
 entrySetWidthChars c8_8 1
 tableAttachDefaults table c8_8 8 9 8 9
  
 estado <- labelNewWithMnemonic "A Jugar!"
 tableAttachDefaults table estado 3 6 11 12

 info <- labelNewWithMnemonic "SUDOKELL\n Ha escogido el nivel Medio, tiene a su disposicion tres funciones, dos de ellas se encuentran en los botones \n en el inferior de la ventana, la tercera es la posibilidad de obtener pistas, para ello, ubiquese en la celda\ndonde necesite ayuda y presione ENTER Diviertase!"
 tableAttachDefaults table info 0 9 9 11

 --entradas
 let x = [c0_0,c1_0,c2_0,c3_0,c4_0,c5_0,c6_0,c7_0,c8_0,c0_1,c1_1,c2_1,c3_1,c4_1,c5_1,c6_1,c7_1,c8_1,c0_2,c1_2,c2_2,c3_2,c4_2,c5_2,c6_2,c7_2,c8_2,c0_3,c1_3,c2_3,c3_3,c4_3,c5_3,c6_3,c7_3,c8_3,c0_4,c1_4,c2_4,c3_4,c4_4,c5_4,c6_4,c7_4,c8_4,c0_5,c1_5,c2_5,c3_5,c4_5,c5_5,c6_5,c7_5,c8_5,c0_6,c1_6,c2_6,c3_6,c4_6,c5_6,c6_6,c7_6,c8_6,c0_7,c1_7,c2_7,c3_7,c4_7,c5_7,c6_7,c7_7,c8_7,c0_8,c1_8,c2_8,c3_8,c4_8,c5_8,c6_8,c7_8,c8_8]

 --REVOLVER

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 agregarMatrizMEDIO x matriz4 81
 
 onEntryActivate c0_0 (pista c0_0 matriz4 0)
 onEntryActivate c1_0 (pista c1_0 matriz4 1)
 onEntryActivate c2_0 (pista c2_0 matriz4 2)
 onEntryActivate c3_0 (pista c3_0 matriz4 3)
 onEntryActivate c4_0 (pista c4_0 matriz4 4)
 onEntryActivate c5_0 (pista c5_0 matriz4 5)
 onEntryActivate c6_0 (pista c6_0 matriz4 6)
 onEntryActivate c7_0 (pista c7_0 matriz4 7)
 onEntryActivate c8_0 (pista c8_0 matriz4 8)
 onEntryActivate c0_1 (pista c0_1 matriz4 9)
 onEntryActivate c1_1 (pista c1_1 matriz4 10)
 onEntryActivate c2_1 (pista c2_1 matriz4 11)
 onEntryActivate c3_1 (pista c3_1 matriz4 12)
 onEntryActivate c4_1 (pista c4_1 matriz4 13)
 onEntryActivate c5_1 (pista c5_1 matriz4 14)
 onEntryActivate c6_1 (pista c6_1 matriz4 15)
 onEntryActivate c7_1 (pista c7_1 matriz4 16)
 onEntryActivate c8_1 (pista c8_1 matriz4 17)
 onEntryActivate c0_2 (pista c0_2 matriz4 18)
 onEntryActivate c1_2 (pista c1_2 matriz4 19)
 onEntryActivate c2_2 (pista c2_2 matriz4 20)
 onEntryActivate c3_2 (pista c3_2 matriz4 21)
 onEntryActivate c4_2 (pista c4_2 matriz4 22)
 onEntryActivate c5_2 (pista c5_2 matriz4 23)
 onEntryActivate c6_2 (pista c6_2 matriz4 24)
 onEntryActivate c7_2 (pista c7_2 matriz4 25)
 onEntryActivate c8_2 (pista c8_2 matriz4 26)
 onEntryActivate c0_3 (pista c0_3 matriz4 27)
 onEntryActivate c1_3 (pista c1_3 matriz4 28)
 onEntryActivate c2_3 (pista c2_3 matriz4 29)
 onEntryActivate c3_3 (pista c3_3 matriz4 30)
 onEntryActivate c4_3 (pista c4_3 matriz4 31)
 onEntryActivate c5_3 (pista c5_3 matriz4 32)
 onEntryActivate c6_3 (pista c6_3 matriz4 33)
 onEntryActivate c7_3 (pista c7_3 matriz4 34)
 onEntryActivate c8_3 (pista c8_3 matriz4 35)
 onEntryActivate c0_4 (pista c0_4 matriz4 36)
 onEntryActivate c1_4 (pista c1_4 matriz4 37)
 onEntryActivate c2_4 (pista c2_4 matriz4 38)
 onEntryActivate c3_4 (pista c3_4 matriz4 39)
 onEntryActivate c4_4 (pista c4_4 matriz4 40)
 onEntryActivate c5_4 (pista c5_4 matriz4 41)
 onEntryActivate c6_4 (pista c6_4 matriz4 42)
 onEntryActivate c7_4 (pista c7_4 matriz4 43)
 onEntryActivate c8_4 (pista c8_4 matriz4 44)
 onEntryActivate c0_5 (pista c0_5 matriz4 45)
 onEntryActivate c1_5 (pista c1_5 matriz4 46)
 onEntryActivate c2_5 (pista c2_5 matriz4 47)
 onEntryActivate c3_5 (pista c3_5 matriz4 48)
 onEntryActivate c4_5 (pista c4_5 matriz4 49)
 onEntryActivate c5_5 (pista c5_5 matriz4 50)
 onEntryActivate c6_5 (pista c6_5 matriz4 51)
 onEntryActivate c7_5 (pista c7_5 matriz4 52)
 onEntryActivate c8_5 (pista c8_5 matriz4 53)
 onEntryActivate c0_6 (pista c0_6 matriz4 54)
 onEntryActivate c1_6 (pista c1_6 matriz4 55)
 onEntryActivate c2_6 (pista c2_6 matriz4 56)
 onEntryActivate c3_6 (pista c3_6 matriz4 57)
 onEntryActivate c4_6 (pista c4_6 matriz4 58)
 onEntryActivate c5_6 (pista c5_6 matriz4 59)
 onEntryActivate c6_6 (pista c6_6 matriz4 60)
 onEntryActivate c7_6 (pista c7_6 matriz4 61)
 onEntryActivate c8_6 (pista c8_6 matriz4 62)
 onEntryActivate c0_7 (pista c0_7 matriz4 63)
 onEntryActivate c1_7 (pista c1_7 matriz4 64)
 onEntryActivate c2_7 (pista c2_7 matriz4 65)
 onEntryActivate c3_7 (pista c3_7 matriz4 66)
 onEntryActivate c4_7 (pista c4_7 matriz4 67)
 onEntryActivate c5_7 (pista c5_7 matriz4 68)
 onEntryActivate c6_7 (pista c6_7 matriz4 69)
 onEntryActivate c7_7 (pista c7_7 matriz4 70)
 onEntryActivate c8_7 (pista c8_7 matriz4 71)
 onEntryActivate c0_8 (pista c0_8 matriz4 72)
 onEntryActivate c1_8 (pista c1_8 matriz4 73)
 onEntryActivate c2_8 (pista c2_8 matriz4 74)
 onEntryActivate c3_8 (pista c3_8 matriz4 75)
 onEntryActivate c4_8 (pista c4_8 matriz4 76)
 onEntryActivate c5_8 (pista c5_8 matriz4 77)
 onEntryActivate c6_8 (pista c6_8 matriz4 78)
 onEntryActivate c7_8 (pista c7_8 matriz4 79)
 onEntryActivate c8_8 (pista c8_8 matriz4 80)


 resolver <- buttonNewWithLabel "Resolver"
 tableAttachDefaults table resolver 2 3 11 12
 onClicked resolver (resolverJuego x matriz4 81)

 verificar <- buttonNewWithLabel "Verificar"
 tableAttachDefaults table verificar 6 7 11 12
 onClicked verificar (verificarSolucion x matriz4 81 estado)

 onDestroy window mainQuit
 widgetShowAll window
 mainGUI

--DIFICIL
generar_dificil::[String]->IO()
generar_dificil tablero_madre = do
 window  <- windowNew
 set window [windowTitle := "Sudokell Dificil", containerBorderWidth := 1,
      windowDefaultWidth := 5, windowDefaultHeight := 20]
 table   <- tableNew 12 9 True

 tableSetRowSpacing table 2 10
 tableSetRowSpacing table 5 10
 tableSetRowSpacing table 8 10

 tableSetColSpacing table 2 10
 tableSetColSpacing table 5 10
 tableSetColSpacing table 8 10

 containerAdd window table

 

 c0_0 <- entryNew
 entrySetMaxLength c0_0 1
 entrySetWidthChars c0_0 1
 tableAttachDefaults table c0_0 0 1 0 1

 c1_0 <- entryNew
 entrySetMaxLength c1_0 1
 entrySetWidthChars c1_0 1
 tableAttachDefaults table c1_0 1 2 0 1

 c2_0 <- entryNew
 entrySetMaxLength c2_0 1
 entrySetWidthChars c2_0 1
 tableAttachDefaults table c2_0 2 3 0 1

 c3_0 <- entryNew
 entrySetMaxLength c3_0 1
 entrySetWidthChars c3_0 1
 tableAttachDefaults table c3_0 3 4 0 1

 c4_0 <- entryNew
 entrySetMaxLength c4_0 1
 entrySetWidthChars c4_0 1
 tableAttachDefaults table c4_0 4 5 0 1

 c5_0 <- entryNew
 entrySetMaxLength c5_0 1
 entrySetWidthChars c5_0 1
 tableAttachDefaults table c5_0 5 6 0 1

 c6_0 <- entryNew
 entrySetMaxLength c6_0 1
 entrySetWidthChars c6_0 1
 tableAttachDefaults table c6_0 6 7 0 1

 c7_0 <- entryNew
 entrySetMaxLength c7_0 1
 entrySetWidthChars c7_0 1
 tableAttachDefaults table c7_0 7 8 0 1

 c8_0 <- entryNew
 entrySetMaxLength c8_0 1
 entrySetWidthChars c8_0 1
 tableAttachDefaults table c8_0 8 9 0 1

 c0_1 <- entryNew
 entrySetMaxLength c0_1 1
 entrySetWidthChars c0_1 1
 tableAttachDefaults table c0_1 0 1 1 2

 c1_1 <- entryNew
 entrySetMaxLength c1_1 1
 entrySetWidthChars c1_1 1
 tableAttachDefaults table c1_1 1 2 1 2

 c2_1 <- entryNew
 entrySetMaxLength c2_1 1
 entrySetWidthChars c2_1 1
 tableAttachDefaults table c2_1 2 3 1 2

 c3_1 <- entryNew
 entrySetMaxLength c3_1 1
 entrySetWidthChars c3_1 1
 tableAttachDefaults table c3_1 3 4 1 2

 c4_1 <- entryNew
 entrySetMaxLength c4_1 1
 entrySetWidthChars c4_1 1
 tableAttachDefaults table c4_1 4 5 1 2

 c5_1 <- entryNew
 entrySetMaxLength c5_1 1
 entrySetWidthChars c5_1 1
 tableAttachDefaults table c5_1 5 6 1 2

 c6_1 <- entryNew
 entrySetMaxLength c6_1 1
 entrySetWidthChars c6_1 1
 tableAttachDefaults table c6_1 6 7 1 2

 c7_1 <- entryNew
 entrySetMaxLength c7_1 1
 entrySetWidthChars c7_1 1
 tableAttachDefaults table c7_1 7 8 1 2

 c8_1 <- entryNew
 entrySetMaxLength c8_1 1
 entrySetWidthChars c8_1 1
 tableAttachDefaults table c8_1 8 9 1 2

 c0_2 <- entryNew
 entrySetMaxLength c0_2 1
 entrySetWidthChars c0_2 1
 tableAttachDefaults table c0_2 0 1 2 3

 c1_2 <- entryNew
 entrySetMaxLength c1_2 1
 entrySetWidthChars c1_2 1
 tableAttachDefaults table c1_2 1 2 2 3

 c2_2 <- entryNew
 entrySetMaxLength c2_2 1
 entrySetWidthChars c2_2 1
 tableAttachDefaults table c2_2 2 3 2 3

 c3_2 <- entryNew
 entrySetMaxLength c3_2 1
 entrySetWidthChars c3_2 1
 tableAttachDefaults table c3_2 3 4 2 3

 c4_2 <- entryNew
 entrySetMaxLength c4_2 1
 entrySetWidthChars c4_2 1
 tableAttachDefaults table c4_2 4 5 2 3

 c5_2 <- entryNew
 entrySetMaxLength c5_2 1
 entrySetWidthChars c5_2 1
 tableAttachDefaults table c5_2 5 6 2 3

 c6_2 <- entryNew
 entrySetMaxLength c6_2 1
 entrySetWidthChars c6_2 1
 tableAttachDefaults table c6_2 6 7 2 3

 c7_2 <- entryNew
 entrySetMaxLength c7_2 1
 entrySetWidthChars c7_2 1
 tableAttachDefaults table c7_2 7 8 2 3

 c8_2 <- entryNew
 entrySetMaxLength c8_2 1
 entrySetWidthChars c8_2 1
 tableAttachDefaults table c8_2 8 9 2 3

 c0_3 <- entryNew
 entrySetMaxLength c0_3 1
 entrySetWidthChars c0_3 1
 tableAttachDefaults table c0_3 0 1 3 4

 c1_3 <- entryNew
 entrySetMaxLength c1_3 1
 entrySetWidthChars c1_3 1
 tableAttachDefaults table c1_3 1 2 3 4

 c2_3 <- entryNew
 entrySetMaxLength c2_3 1
 entrySetWidthChars c2_3 1
 tableAttachDefaults table c2_3 2 3 3 4

 c3_3 <- entryNew
 entrySetMaxLength c3_3 1
 entrySetWidthChars c3_3 1
 tableAttachDefaults table c3_3 3 4 3 4

 c4_3 <- entryNew
 entrySetMaxLength c4_3 1
 entrySetWidthChars c4_3 1
 tableAttachDefaults table c4_3 4 5 3 4

 c5_3 <- entryNew
 entrySetMaxLength c5_3 1
 entrySetWidthChars c5_3 1
 tableAttachDefaults table c5_3 5 6 3 4

 c6_3 <- entryNew
 entrySetMaxLength c6_3 1
 entrySetWidthChars c6_3 1
 tableAttachDefaults table c6_3 6 7 3 4

 c7_3 <- entryNew
 entrySetMaxLength c7_3 1
 entrySetWidthChars c7_3 1
 tableAttachDefaults table c7_3 7 8 3 4

 c8_3 <- entryNew
 entrySetMaxLength c8_3 1
 entrySetWidthChars c8_3 1
 tableAttachDefaults table c8_3 8 9 3 4

 c0_4 <- entryNew
 entrySetMaxLength c0_4 1
 entrySetWidthChars c0_4 1
 tableAttachDefaults table c0_4 0 1 4 5

 c1_4 <- entryNew
 entrySetMaxLength c1_4 1
 entrySetWidthChars c1_4 1
 tableAttachDefaults table c1_4 1 2 4 5

 c2_4 <- entryNew
 entrySetMaxLength c2_4 1
 entrySetWidthChars c2_4 1
 tableAttachDefaults table c2_4 2 3 4 5

 c3_4 <- entryNew
 entrySetMaxLength c3_4 1
 entrySetWidthChars c3_4 1
 tableAttachDefaults table c3_4 3 4 4 5

 c4_4 <- entryNew
 entrySetMaxLength c4_4 1
 entrySetWidthChars c4_4 1
 tableAttachDefaults table c4_4 4 5 4 5

 c5_4 <- entryNew
 entrySetMaxLength c5_4 1
 entrySetWidthChars c5_4 1
 tableAttachDefaults table c5_4 5 6 4 5

 c6_4 <- entryNew
 entrySetMaxLength c6_4 1
 entrySetWidthChars c6_4 1
 tableAttachDefaults table c6_4 6 7 4 5

 c7_4 <- entryNew
 entrySetMaxLength c7_4 1
 entrySetWidthChars c7_4 1
 tableAttachDefaults table c7_4 7 8 4 5

 c8_4 <- entryNew
 entrySetMaxLength c8_4 1
 entrySetWidthChars c8_4 1
 tableAttachDefaults table c8_4 8 9 4 5

 c0_5 <- entryNew
 entrySetMaxLength c0_5 1
 entrySetWidthChars c0_5 1
 tableAttachDefaults table c0_5 0 1 5 6

 c1_5 <- entryNew
 entrySetMaxLength c1_5 1
 entrySetWidthChars c1_5 1
 tableAttachDefaults table c1_5 1 2 5 6

 c2_5 <- entryNew
 entrySetMaxLength c2_5 1
 entrySetWidthChars c2_5 1
 tableAttachDefaults table c2_5 2 3 5 6

 c3_5 <- entryNew
 entrySetMaxLength c3_5 1
 entrySetWidthChars c3_5 1
 tableAttachDefaults table c3_5 3 4 5 6

 c4_5 <- entryNew
 entrySetMaxLength c4_5 1
 entrySetWidthChars c4_5 1
 tableAttachDefaults table c4_5 4 5 5 6

 c5_5 <- entryNew
 entrySetMaxLength c5_5 1
 entrySetWidthChars c5_5 1
 tableAttachDefaults table c5_5 5 6 5 6

 c6_5 <- entryNew
 entrySetMaxLength c6_5 1
 entrySetWidthChars c6_5 1
 tableAttachDefaults table c6_5 6 7 5 6

 c7_5 <- entryNew
 entrySetMaxLength c7_5 1
 entrySetWidthChars c7_5 1
 tableAttachDefaults table c7_5 7 8 5 6

 c8_5 <- entryNew
 entrySetMaxLength c8_5 1
 entrySetWidthChars c8_5 1
 tableAttachDefaults table c8_5 8 9 5 6

 c0_6 <- entryNew
 entrySetMaxLength c0_6 1
 entrySetWidthChars c0_6 1
 tableAttachDefaults table c0_6 0 1 6 7

 c1_6 <- entryNew
 entrySetMaxLength c1_6 1
 entrySetWidthChars c1_6 1
 tableAttachDefaults table c1_6 1 2 6 7

 c2_6 <- entryNew
 entrySetMaxLength c2_6 1
 entrySetWidthChars c2_6 1
 tableAttachDefaults table c2_6 2 3 6 7

 c3_6 <- entryNew
 entrySetMaxLength c3_6 1
 entrySetWidthChars c3_6 1
 tableAttachDefaults table c3_6 3 4 6 7

 c4_6 <- entryNew
 entrySetMaxLength c4_6 1
 entrySetWidthChars c4_6 1
 tableAttachDefaults table c4_6 4 5 6 7

 c5_6 <- entryNew
 entrySetMaxLength c5_6 1
 entrySetWidthChars c5_6 1
 tableAttachDefaults table c5_6 5 6 6 7

 c6_6 <- entryNew
 entrySetMaxLength c6_6 1
 entrySetWidthChars c6_6 1
 tableAttachDefaults table c6_6 6 7 6 7

 c7_6 <- entryNew
 entrySetMaxLength c7_6 1
 entrySetWidthChars c7_6 1
 tableAttachDefaults table c7_6 7 8 6 7

 c8_6 <- entryNew
 entrySetMaxLength c8_6 1
 entrySetWidthChars c8_6 1
 tableAttachDefaults table c8_6 8 9 6 7

 c0_7 <- entryNew
 entrySetMaxLength c0_7 1
 entrySetWidthChars c0_7 1
 tableAttachDefaults table c0_7 0 1 7 8

 c1_7 <- entryNew
 entrySetMaxLength c1_7 1
 entrySetWidthChars c1_7 1
 tableAttachDefaults table c1_7 1 2 7 8

 c2_7 <- entryNew
 entrySetMaxLength c2_7 1
 entrySetWidthChars c2_7 1
 tableAttachDefaults table c2_7 2 3 7 8

 c3_7 <- entryNew
 entrySetMaxLength c3_7 1
 entrySetWidthChars c3_7 1
 tableAttachDefaults table c3_7 3 4 7 8

 c4_7 <- entryNew
 entrySetMaxLength c4_7 1
 entrySetWidthChars c4_7 1
 tableAttachDefaults table c4_7 4 5 7 8

 c5_7 <- entryNew
 entrySetMaxLength c5_7 1
 entrySetWidthChars c5_7 1
 tableAttachDefaults table c5_7 5 6 7 8

 c6_7 <- entryNew
 entrySetMaxLength c6_7 1
 entrySetWidthChars c6_7 1
 tableAttachDefaults table c6_7 6 7 7 8

 c7_7 <- entryNew
 entrySetMaxLength c7_7 1
 entrySetWidthChars c7_7 1
 tableAttachDefaults table c7_7 7 8 7 8

 c8_7 <- entryNew
 entrySetMaxLength c8_7 1
 entrySetWidthChars c8_7 1
 tableAttachDefaults table c8_7 8 9 7 8

 c0_8 <- entryNew
 entrySetMaxLength c0_8 1
 entrySetWidthChars c0_8 1
 tableAttachDefaults table c0_8 0 1 8 9

 c1_8 <- entryNew
 entrySetMaxLength c1_8 1
 entrySetWidthChars c1_8 1
 tableAttachDefaults table c1_8 1 2 8 9

 c2_8 <- entryNew
 entrySetMaxLength c2_8 1
 entrySetWidthChars c2_8 1
 tableAttachDefaults table c2_8 2 3 8 9

 c3_8 <- entryNew
 entrySetMaxLength c3_8 1
 entrySetWidthChars c3_8 1
 tableAttachDefaults table c3_8 3 4 8 9

 c4_8 <- entryNew
 entrySetMaxLength c4_8 1
 entrySetWidthChars c4_8 1
 tableAttachDefaults table c4_8 4 5 8 9

 c5_8 <- entryNew
 entrySetMaxLength c5_8 1
 entrySetWidthChars c5_8 1
 tableAttachDefaults table c5_8 5 6 8 9

 c6_8 <- entryNew
 entrySetMaxLength c6_8 1
 entrySetWidthChars c6_8 1
 tableAttachDefaults table c6_8 6 7 8 9

 c7_8 <- entryNew
 entrySetMaxLength c7_8 1
 entrySetWidthChars c7_8 1
 tableAttachDefaults table c7_8 7 8 8 9

 c8_8 <- entryNew
 entrySetMaxLength c8_8 1
 entrySetWidthChars c8_8 1
 tableAttachDefaults table c8_8 8 9 8 9
  
 estado <- labelNewWithMnemonic "A Jugar!"
 tableAttachDefaults table estado 3 6 11 12

 info <- labelNewWithMnemonic "SUDOKELL\n Ha escogido el nivel Dificil, tiene a su disposicion tres funciones, dos de ellas se encuentran en los botones \n en el inferior de la ventana, la tercera es la posibilidad de obtener pistas, para ello, ubiquese en la celda\ndonde necesite ayuda y presione ENTER Diviertase!"
 tableAttachDefaults table info 0 9 9 11

 --entradas
 let x = [c0_0,c1_0,c2_0,c3_0,c4_0,c5_0,c6_0,c7_0,c8_0,c0_1,c1_1,c2_1,c3_1,c4_1,c5_1,c6_1,c7_1,c8_1,c0_2,c1_2,c2_2,c3_2,c4_2,c5_2,c6_2,c7_2,c8_2,c0_3,c1_3,c2_3,c3_3,c4_3,c5_3,c6_3,c7_3,c8_3,c0_4,c1_4,c2_4,c3_4,c4_4,c5_4,c6_4,c7_4,c8_4,c0_5,c1_5,c2_5,c3_5,c4_5,c5_5,c6_5,c7_5,c8_5,c0_6,c1_6,c2_6,c3_6,c4_6,c5_6,c6_6,c7_6,c8_6,c0_7,c1_7,c2_7,c3_7,c4_7,c5_7,c6_7,c7_7,c8_7,c0_8,c1_8,c2_8,c3_8,c4_8,c5_8,c6_8,c7_8,c8_8]

 --REVOLVERD

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar tablero_madre aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 num1 <- aleatorio
 let aCambiar =  myIntToStr num1
 num2 <- aleatorio
 let cambiarX = myIntToStr num2
 let matriz = seleccionar matriz4 aCambiar 81 "-1"
 let matriz2 = seleccionar matriz cambiarX 81 "0"
 let matriz3 = seleccionar matriz2 "-1" 81 cambiarX
 let matriz4 = seleccionar matriz3 "0" 81 aCambiar

 agregarMatrizDIFICIL x matriz4 81
 
 onEntryActivate c0_0 (pista c0_0 matriz4 0)
 onEntryActivate c1_0 (pista c1_0 matriz4 1)
 onEntryActivate c2_0 (pista c2_0 matriz4 2)
 onEntryActivate c3_0 (pista c3_0 matriz4 3)
 onEntryActivate c4_0 (pista c4_0 matriz4 4)
 onEntryActivate c5_0 (pista c5_0 matriz4 5)
 onEntryActivate c6_0 (pista c6_0 matriz4 6)
 onEntryActivate c7_0 (pista c7_0 matriz4 7)
 onEntryActivate c8_0 (pista c8_0 matriz4 8)
 onEntryActivate c0_1 (pista c0_1 matriz4 9)
 onEntryActivate c1_1 (pista c1_1 matriz4 10)
 onEntryActivate c2_1 (pista c2_1 matriz4 11)
 onEntryActivate c3_1 (pista c3_1 matriz4 12)
 onEntryActivate c4_1 (pista c4_1 matriz4 13)
 onEntryActivate c5_1 (pista c5_1 matriz4 14)
 onEntryActivate c6_1 (pista c6_1 matriz4 15)
 onEntryActivate c7_1 (pista c7_1 matriz4 16)
 onEntryActivate c8_1 (pista c8_1 matriz4 17)
 onEntryActivate c0_2 (pista c0_2 matriz4 18)
 onEntryActivate c1_2 (pista c1_2 matriz4 19)
 onEntryActivate c2_2 (pista c2_2 matriz4 20)
 onEntryActivate c3_2 (pista c3_2 matriz4 21)
 onEntryActivate c4_2 (pista c4_2 matriz4 22)
 onEntryActivate c5_2 (pista c5_2 matriz4 23)
 onEntryActivate c6_2 (pista c6_2 matriz4 24)
 onEntryActivate c7_2 (pista c7_2 matriz4 25)
 onEntryActivate c8_2 (pista c8_2 matriz4 26)
 onEntryActivate c0_3 (pista c0_3 matriz4 27)
 onEntryActivate c1_3 (pista c1_3 matriz4 28)
 onEntryActivate c2_3 (pista c2_3 matriz4 29)
 onEntryActivate c3_3 (pista c3_3 matriz4 30)
 onEntryActivate c4_3 (pista c4_3 matriz4 31)
 onEntryActivate c5_3 (pista c5_3 matriz4 32)
 onEntryActivate c6_3 (pista c6_3 matriz4 33)
 onEntryActivate c7_3 (pista c7_3 matriz4 34)
 onEntryActivate c8_3 (pista c8_3 matriz4 35)
 onEntryActivate c0_4 (pista c0_4 matriz4 36)
 onEntryActivate c1_4 (pista c1_4 matriz4 37)
 onEntryActivate c2_4 (pista c2_4 matriz4 38)
 onEntryActivate c3_4 (pista c3_4 matriz4 39)
 onEntryActivate c4_4 (pista c4_4 matriz4 40)
 onEntryActivate c5_4 (pista c5_4 matriz4 41)
 onEntryActivate c6_4 (pista c6_4 matriz4 42)
 onEntryActivate c7_4 (pista c7_4 matriz4 43)
 onEntryActivate c8_4 (pista c8_4 matriz4 44)
 onEntryActivate c0_5 (pista c0_5 matriz4 45)
 onEntryActivate c1_5 (pista c1_5 matriz4 46)
 onEntryActivate c2_5 (pista c2_5 matriz4 47)
 onEntryActivate c3_5 (pista c3_5 matriz4 48)
 onEntryActivate c4_5 (pista c4_5 matriz4 49)
 onEntryActivate c5_5 (pista c5_5 matriz4 50)
 onEntryActivate c6_5 (pista c6_5 matriz4 51)
 onEntryActivate c7_5 (pista c7_5 matriz4 52)
 onEntryActivate c8_5 (pista c8_5 matriz4 53)
 onEntryActivate c0_6 (pista c0_6 matriz4 54)
 onEntryActivate c1_6 (pista c1_6 matriz4 55)
 onEntryActivate c2_6 (pista c2_6 matriz4 56)
 onEntryActivate c3_6 (pista c3_6 matriz4 57)
 onEntryActivate c4_6 (pista c4_6 matriz4 58)
 onEntryActivate c5_6 (pista c5_6 matriz4 59)
 onEntryActivate c6_6 (pista c6_6 matriz4 60)
 onEntryActivate c7_6 (pista c7_6 matriz4 61)
 onEntryActivate c8_6 (pista c8_6 matriz4 62)
 onEntryActivate c0_7 (pista c0_7 matriz4 63)
 onEntryActivate c1_7 (pista c1_7 matriz4 64)
 onEntryActivate c2_7 (pista c2_7 matriz4 65)
 onEntryActivate c3_7 (pista c3_7 matriz4 66)
 onEntryActivate c4_7 (pista c4_7 matriz4 67)
 onEntryActivate c5_7 (pista c5_7 matriz4 68)
 onEntryActivate c6_7 (pista c6_7 matriz4 69)
 onEntryActivate c7_7 (pista c7_7 matriz4 70)
 onEntryActivate c8_7 (pista c8_7 matriz4 71)
 onEntryActivate c0_8 (pista c0_8 matriz4 72)
 onEntryActivate c1_8 (pista c1_8 matriz4 73)
 onEntryActivate c2_8 (pista c2_8 matriz4 74)
 onEntryActivate c3_8 (pista c3_8 matriz4 75)
 onEntryActivate c4_8 (pista c4_8 matriz4 76)
 onEntryActivate c5_8 (pista c5_8 matriz4 77)
 onEntryActivate c6_8 (pista c6_8 matriz4 78)
 onEntryActivate c7_8 (pista c7_8 matriz4 79)
 onEntryActivate c8_8 (pista c8_8 matriz4 80)


 resolver <- buttonNewWithLabel "Resolver"
 tableAttachDefaults table resolver 2 3 11 12
 onClicked resolver (resolverJuego x matriz4 81)

 verificar <- buttonNewWithLabel "Verificar"
 tableAttachDefaults table verificar 6 7 11 12
 onClicked verificar (verificarSolucion x matriz4 81 estado)

 onDestroy window mainQuit
 widgetShowAll window
 mainGUI

--funcion
seleccionar :: [String] -> String -> Int -> String -> [String]
seleccionar _ _ 0 _ = []
seleccionar (h:t) c n x
 | h == c = [x]++(seleccionar t c (n-1) x)
 | otherwise = [h]++(seleccionar t c (n-1) x)

--funcion
agregarMatrizFACIL::[Entry]->[String]->Int->IO()
agregarMatrizFACIL _ _ 0 = return()
agregarMatrizFACIL (h1:t1) (h2:t2) n = do
 ls <- randomList (0, 4)
 let var = cpm (entero (take 1 ls)) 1
 if var then entrySetText h1 h2 else entrySetText h1 ""
 if var then set h1 [entryEditable := False] else entrySetText h1 ""
 agregarMatrizFACIL t1 t2 (n-1)

--funcion
agregarMatrizMEDIO::[Entry]->[String]->Int->IO()
agregarMatrizMEDIO _ _ 0 = return()
agregarMatrizMEDIO (h1:t1) (h2:t2) n = do
 ls <- randomList (0, 3 )
 let var = cpm (entero (take 1 ls)) 1
 if var then entrySetText h1 h2 else entrySetText h1 ""
 if var then set h1 [entryEditable := False] else entrySetText h1 ""
 agregarMatrizMEDIO t1 t2 (n-1)

--funcion
agregarMatrizDIFICIL::[Entry]->[String]->Int->IO()
agregarMatrizDIFICIL _ _ 0 = return()
agregarMatrizDIFICIL (h1:t1) (h2:t2) n = do
 ls <- randomList (0, 4)
 let var = cpm (entero (take 1 ls)) 3
 if var then entrySetText h1 h2 else entrySetText h1 ""
 if var then set h1 [entryEditable := False] else entrySetText h1 ""
 agregarMatrizDIFICIL t1 t2 (n-1)

--funcion
pista :: Entry -> [String] -> Int -> IO()
pista l (h:t) 0 = do
 entrySetText l h
pista l (h:t) n = pista l t (n-1)

--funcion
resolverJuego :: [Entry] -> [String] -> Int -> IO()
resolverJuego _ _ 0 = return()
resolverJuego (h1:t1) (h2:t2) n = do
 entrySetText h1 h2
 resolverJuego t1 t2 (n-1)

--funcion
verificarSolucion :: [Entry] -> [String] -> Int -> Label ->  IO()
verificarSolucion _ _ 0 label = do
 labelSetText label "Perfecto!"
verificarSolucion (h1:t1) (h2:t2) n label = do
 val <- entryGetText h1
 if val == h2 then verificarSolucion t1 t2 (n-1) label else labelSetText label "Incorrecto! Favor revisar..."

--RANDOM
randomList :: (Int, Int) -> IO [Int]
randomList interval =
  newStdGen >>= return . unfoldr (Just . randomR interval)

entero::[Int]->Int
entero (h:t)=h


cpm::Int->Int->Bool
cpm a b = a>b

myIntToStr :: Int -> String
myIntToStr x=show x

aleatorio :: IO Int
aleatorio = getStdRandom (randomR (1,9))









