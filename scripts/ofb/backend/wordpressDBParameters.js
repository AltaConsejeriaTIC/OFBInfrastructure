
module.exports = {

  development: {
    client: 'mysql',
    connection: {
      host: 'ofb-db',
      port: '3306',
      user: 'root',
      password: 'root',
      database: 'filarmon_webfilar'
    }
  },
  
  production: {
    client: '',
    connection: {
      host: '',
      port: '',
      user: '',
      password: '',
      database: ''
    }
  }
};
