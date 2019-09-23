import Graphics.UI.Gtk
import Data.List
import System.Random

main :: IO ()
main = do
 initGUI
 window  <- windowNew
 set window [windowTitle := "Sudokell", containerBorderWidth := 5,
      windowDefaultWidth := 400, windowDefaultHeight := 400]

 table   <- tableNew 10 10 True
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


 onDestroy window mainQuit
 widgetShowAll window
 mainGUI
