"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const sequelize = new sequelize_1.Sequelize('proyectotecknicstore', 'tecnick', 'Nova123$', {
    host: 'tecknickstore.mysql.database.azure.com',
    dialect: 'mysql'
});
exports.default = sequelize;
