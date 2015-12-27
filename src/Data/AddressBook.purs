module Data.AddressBook where

import Prelude
import Data.List
import Data.Maybe

import Control.Plus (empty)

type Entry = 
  { firstName :: String
  , lastName :: String
  , address :: Address
  }

type Address =
  { street :: String 
  , city :: String
  , state :: String
  }

type AddressBook = List Entry

showEntry :: Entry -> String
showEntry entry =
  entry.lastName ++ ", " ++ 
  entry.firstName ++ ": " ++
  showAddress entry.address


showAddress :: Address -> String
showAddress address =
  address.street ++ ", " ++
  address.city ++ ", " ++ 
  address.state


emptyAddressBook :: AddressBook
emptyAddressBook = empty

