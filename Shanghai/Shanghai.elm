module Shanghai where

import Either (..)
import Dict
 
port coordinates  : (Int,Int)
port incomingShip : Signal { name:String, capacity:Int }
port outgoingShip : Signal String
 
ships = merge (Right <~ incomingShip) (Left <~ outgoingShip)
 
updateDocks ship docks =
    case ship of
      Right {name,capacity} -> Dict.insert name capacity docks
      Left name -> Dict.remove name docks
 
dock = foldp updateDocks Dict.empty ships
 
port totalCapacity : Signal Int
port totalCapacity = lift (sum << Dict.values) dock

main = asText <~ dock
