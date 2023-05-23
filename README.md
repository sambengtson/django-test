Database credentials are injected via an env variable
const {username, host, dbname, password, port} = JSON.parse(process.env.DJANGOTESTCLUSTER_SECRET)
