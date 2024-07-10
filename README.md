# 03_Bash_ejec_pnpm

- Crear un proyecto con vite, vanilla
- Copiar "nodejs_vite/src/main.js" al "src" del proyecto creado.
- Copiar los .env\* a la raíz del proyecto creado.
- Copiar c.sh
- Ejecutar c.sh num donde num:
  - 1 "dev_no_mode": "vite",
  - 2 "dev_mode_dev": "vite --mode dev",
  - 3 "dev_node_env_dev_no_mode": "SET NODE_ENV=development && vite",
  - 4 "dev_node_env_dev_mode_dev": "SET NODE_ENV=development && vite --mode dev",
  - 5 "dev_node_env_dev_mode_prod": "SET NODE_ENV=development && vite --mode production",
  - 6 "dev_node_env_prod_no_mode": "SET NODE_ENV=production && vite",
  - 7 "dev_node_env_prod_mode_dev": "SET NODE_ENV=production && vite --mode dev",
  - 8 "dev_node_env_prod_mode_prod": "SET NODE_ENV=production && vite --mode production",
