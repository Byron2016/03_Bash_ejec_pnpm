#! /bin/bash
# To run: sh c.sh 1 

# #Add some color
RED='\e[31m'
GRN='\e[32m'
grn='\e[92m'
YLW='\e[33m'
DEF='\e[0m'   #Default color and effects
BLD='\e[1m'   #Bold\brighter
COF='\e[?25l' #Cursor Off
CON='\e[?25h' #Cursor On

function printTitle()
{
  # color1, title, color2
  printf "\n"
  printf "${2}";
  echo -e "$1"
  printf "${3}";
  printf "\n"
}

# 1 "dev_no_mode": "vite",
# 2 "dev_mode_dev": "vite --mode dev",
# 3 "dev_node_env_dev_no_mode": "SET NODE_ENV=development &&  vite",
# 4 "dev_node_env_dev_mode_dev": "SET NODE_ENV=development && vite --mode dev",
# 5 "dev_node_env_dev_mode_prod": "SET NODE_ENV=development && vite --mode production",
# 6 "dev_node_env_prod_no_mode": "SET NODE_ENV=production &&  vite",
# 7 "dev_node_env_prod_mode_dev": "SET NODE_ENV=production && vite --mode dev",
# 8 "dev_node_env_prod_mode_prod": "SET NODE_ENV=production && vite --mode production",

ejc="n"
case $1 in
  "1")
    ejc="dev_no_mode"
    printTitle "----> dev_no_mode: vite" $YLW $DEF 
    pnpm run ${ejc}
    ;;

  "2")
    ejc="dev_mode_dev"
    printTitle "----> dev_mode_dev: vite --mode dev" $YLW $DEF 
    pnpm run ${ejc}
    ;;
  "3")
    ejc="dev_node_env_dev_no_mode"
    printTitle "----> dev_node_env_dev_no_mode: SET NODE_ENV=development &&  vite," $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
  "4")
    ejc="dev_node_env_dev_mode_dev"
    printTitle "----> dev_node_env_dev_mode_dev: SET NODE_ENV=development && vite --mode dev" $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
  "5")
    ejc="dev_node_env_dev_mode_prod"
    printTitle "----> dev_node_env_dev_mode_prod: SET NODE_ENV=development && vite --mode production" $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
  "6")
    ejc="dev_node_env_prod_no_mode"
    printTitle "----> dev_node_env_prod_no_mode: SET NODE_ENV=production &&  vite" $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
  "7")
    ejc="dev_node_env_prod_mode_dev"
    printTitle "----> dev_node_env_prod_mode_dev: SET NODE_ENV=production && vite --mode dev," $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
  "8")
    ejc="dev_node_env_prod_mode_prod"
    printTitle "----> dev_node_env_prod_mode_prod: SET NODE_ENV=production && vite --mode production" $YLW $DEF 
    pnpm run ${ejc}
    ;;
    
 

  *)
    printTitle "----> No definido" $YLW $DEF
    ;;
esac




