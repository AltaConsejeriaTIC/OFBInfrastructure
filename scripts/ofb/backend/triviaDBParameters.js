
module.exports = {
  
  development: {
    client: '',
    connection: {
      host: '',
      port: '',
      user: '',
      password: '',
      database: ''
    }
  },

  production: {
    client: 'mysql',
    connection: {
      host: 'ofb-db',
      port: '3306',
      user: 'root',
      password: 'root',
      database: 'filarmon_trivia'
    }
  }
};
