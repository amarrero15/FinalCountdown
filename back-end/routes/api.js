const express = require('express');
const router = express.Router();

const Controller = require('../controllers/controller')

/*
// Insert an animal
router.post('/', async (req, res) => {
    let result = await Controller.createAnimal(req.body);
    res.json(result);
});
*/
// Gets back all the animals
router.get ('/', async (req, res) => {
    let result = await Controller.getMySqlTest();
    res.json(result);
});

// Gets back specific animal
router.get ('/:code', async (req, res) => {
    let result = await Controller.getMSSqlTest();
    res.json(result);
});
/*
// Update an animal
router.patch ('/:animalCode', async (req, res) => {
    let result = await Controller.updateAnimal(req.params.animalCode, req.body);
    res.json(result);
});
*/
/*
// Delete an animal
router.delete ('/:animalCode', async (req, res) => {
    let result = await Controller.deleteAnimal(req.params.animalCode);
    res.json(result);
});
*/
module.exports = router;
