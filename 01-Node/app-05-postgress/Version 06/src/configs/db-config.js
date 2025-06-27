const DBConfig = {
    host		    : "aws-0-us-east-2.pooler.supabase.com" ,
    database		: "postgres"                            ,
    user    		: "postgres.exbsvuqtefbkhzeeyage"       ,
    password		: "SuperMegaClave1234%&#"               ,
    port            : 5432
}

const DBConfigBest = {
    host        : process.env.DB_HOST       ?? '',
    database    : process.env.DB_DATABASE   ?? '',
    user        : process.env.DB_USER       ?? '',
    password    : process.env.DB_PASSWORD   ?? '',
    port        : process.env.DB_PORT       ?? 5432
    //max                     : 20,       //maximum number of clients the pool should contain by default this is set to 10.
    //idleTimeoutMillis       : 30000,
    //connectionTimeoutMillis : 2000
}

/*
LOCALHOST
    host		    : "aws-0-us-east-2.pooler.supabase.com" ,
    database		: "postgres"                            ,
    user    		: "postgres.exbsvuqtefbkhzeeyage"       ,
    password		: "ymkSclnkrDCreZTh"                    ,
    port            : 5432

SUPABASE
    host		    : "aws-0-us-east-2.pooler.supabase.com" ,
    database		: "postgres"                            ,
    user    		: "postgres.exbsvuqtefbkhzeeyage"       ,
    password		: "ymkSclnkrDCreZTh"                    ,
    port            : 5432
    
*/
export default DBConfig;
