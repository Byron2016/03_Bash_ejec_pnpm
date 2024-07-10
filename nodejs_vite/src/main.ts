interface CreaTable {
  ENVIROMENT: string;
  BELONGING_TO: string;
  MODE_ENV: string;
  MODE: string;
}

function CasoConsole(this: any, entorno: string, valorImprimir: string) {
  this.ENVIROMENT = entorno;
  this.BELONGING_TO = valorImprimir;
  this.MODE_ENV = process.env.NODE_ENV || "";
  this.MODE = import.meta.env.MODE;
}

interface ObjPrincipal {
  DB_PASSWORD: CreaTable;
  VITE_SOME_KEY: CreaTable;
  VITE_ONLY_ENV: CreaTable;
  VITE_SOME_ENV_LOCAL: CreaTable;
  VITE_SOME_ENV_DEV: CreaTable;
  VITE_SOME_ENV_PRODUCTION: CreaTable;
  VITE_SOME_ENV_DEV_LOCAL: CreaTable;
}

const creaTabla: any | ObjPrincipal = {
  DB_PASSWORD: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_SOME_KEY: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_ONLY_ENV: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_SOME_ENV_LOCAL: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_SOME_ENV_DEV: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_SOME_ENV_PRODUCTION: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
  VITE_SOME_ENV_DEV_LOCAL: { ENVIROMENT: "", BELONGING_TO: "", MODE_ENV: "" },
};

creaTabla.DB_PASSWORD = new (CasoConsole as any)(
  "ENV",
  import.meta.env.DB_PASSWORD
);
creaTabla.VITE_SOME_KEY = new (CasoConsole as any)(
  "ALL",
  import.meta.env.VITE_SOME_KEY
);
creaTabla.VITE_ONLY_ENV = new (CasoConsole as any)(
  "ENV",
  import.meta.env.VITE_ONLY_ENV
);

creaTabla.VITE_SOME_ENV_LOCAL = new (CasoConsole as any)(
  "ENV_LOCAL",
  import.meta.env.VITE_SOME_ENV_LOCAL
);

creaTabla.VITE_SOME_ENV_DEV = new (CasoConsole as any)(
  "ENV_DEV",
  import.meta.env.VITE_SOME_ENV_DEV
);

creaTabla.VITE_SOME_ENV_PRODUCTION = new (CasoConsole as any)(
  "ENV_PROD",
  import.meta.env.VITE_SOME_ENV_PRODUCTION
);

creaTabla.VITE_SOME_ENV_DEV_LOCAL = new (CasoConsole as any)(
  "ENV_DEV_LOCAL",
  import.meta.env.VITE_SOME_ENV_DEV_LOCAL
);

console.log(creaTabla);
console.table(creaTabla);
console.log(import.meta.env);
