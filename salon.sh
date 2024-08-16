#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n  rulss' Salon  "

MENU() {
  echo -e "\nWelcome to My Salon, how can I help you?"
  SERVICES=$($PSQL "SELECT * FROM services")
  
  echo -e "\nThis are our services:"
  echo "$SERVICES" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME" 
  done

  read SERVICE_ID_SELECTED

  case $SERVICE_ID_SELECTED in
    1) cut ;;
    2) color ;;
    3) perm ;;
    4) style ;;
    5) trim ;;
    6) retouch ;;
    *) MENU ;;
  esac

}

cut() {
  echo -e "\nHave you selected the cut service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  


}

color() {
  echo -e "\nHave you selected the color service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  
  


}

perm() {
  echo -e "\nHave you selected the perm service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  
  


}

style() {
  echo -e "\nHave you selected the style service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  
  


}

trim() {
  echo -e "\nHave you selected the trim service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  


}

retouch() {
  echo -e "\nHave you selected the retouch service!"

  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat's your name"
    read CUSTOMER_NAME

    #insert phone
    INSERT_PHONE=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  else 
    echo -e "That number is registered."
  fi

  echo -e "Insert time when client arrives:"
  read SERVICE_TIME

  INSERT_RESTULTS=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

  echo -e "I have put you down for a $SERVICE_ID_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME"
  
  


}


MENU