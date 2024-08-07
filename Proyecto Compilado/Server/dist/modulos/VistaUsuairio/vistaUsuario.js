"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
// Importación de los módulos necesarios
const sequelize_1 = require("sequelize"); // Tipos de datos para Sequelize
const conexion_1 = __importDefault(require("../../db/conexion")); // Conexión a la base de datos Sequelize
// Definición del modelo TipoUsuario  
const TipoUsuario = conexion_1.default.define('vistausuaruio', {
    Nombre: {
        type: sequelize_1.DataTypes.STRING // Campo Nombre de tipo String en la base de datos
    },
    telefono: {
        type: sequelize_1.DataTypes.STRING // Campo telefono de tipo String en la base de datos
    },
    descripcion: {
        type: sequelize_1.DataTypes.STRING // Campo descripcion de tipo String en la base de datos
    },
    Nomtecnicobre: {
        type: sequelize_1.DataTypes.NUMBER // Campo Nomtecnicobre de tipo String en la base de datos
    },
}, {
    tableName: 'vistausuaruio', // Especifica el nombre de la tabla en la base de datos
    createdAt: false, // Desactiva el campo createdAt
    updatedAt: false // Desactiva el campo updatedAt
});
// Exportación del modelo TipoUsuario
exports.default = TipoUsuario;
