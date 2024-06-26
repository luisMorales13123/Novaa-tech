"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const Servicio_1 = require("../controlador/Servicio/Servicio");
const router = (0, express_1.Router)();
router.get('/Listar', Servicio_1.gets);
router.get('/Consultar/:id', Servicio_1.get);
router.delete('/Eliminar/:id', Servicio_1.Delete);
router.post('/Agregar/', Servicio_1.Post);
router.put('/Actualizar/:id', Servicio_1.Update);
exports.default = router;
