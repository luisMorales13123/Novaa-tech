import { Sequelize }  from 'sequelize';


const sequelize = new Sequelize('proyectotecknicstore', 'tecnick', 'Nova123$', {
    host: 'tecknickstore.mysql.database.azure.com',
    dialect: 'mysql'
  });


  export default sequelize