"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.loginUser = exports.newUser = void 0;
const bcrypt_1 = __importDefault(require("bcrypt"));
const user_1 = require("../../modulos/User/user");
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const newUser = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { username, password } = req.body;
    const hasdpassword = yield bcrypt_1.default.hash(password, 10);
    //validar si el usuario existe en la bd
    const user = yield user_1.User.findOne({ where: { username: username } });
    if (user) {
        return res.status(400).json({
            msg: 'ya existe un usuario con el nombre ' + username
        });
    }
    try {
        //Guardamos Usuario en la bd
        yield user_1.User.create({
            username: username,
            password: hasdpassword
        });
        res.json({
            msg: 'Usuario  ' + username + ' creado exitosamente',
        });
    }
    catch (error) {
        res.status(400).json({
            msg: 'Ups ocurrio un error',
            error
        });
    }
});
exports.newUser = newUser;
const loginUser = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { username, password } = req.body;
    //Validar si el usuario existe en la bd
    const user = yield user_1.User.findOne({ where: { username: username } });
    if (!user) {
        return res.status(400).json({
            msg: ' no existe un nombre con el nombre ' + username + ' en la base de datos'
        });
    }
    //validamos contraseña
    const passawordValid = yield bcrypt_1.default.compare(password, user.password);
    if (!passawordValid) {
        return res.status(400).json({
            msg: 'password incorrecto'
        });
    }
    const token = jsonwebtoken_1.default.sign({
        username: username
    }, process.env.SECRET_KEY || 'pepito123');
    res.json(token);
    //creamos token
});
exports.loginUser = loginUser;
