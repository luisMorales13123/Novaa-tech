import { Sequelize }  from 'sequelize';


const sequelize = new Sequelize('proyectotecknicstore', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
  });


  export default sequelize