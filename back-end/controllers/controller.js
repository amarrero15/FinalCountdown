const MySqlController = require('./MySqlController');
const MSSqlController = require('./MSSqlController');


function getMySqlTest(){
    return MySqlController.getAny();
}

function getMSSqlTest(){
    return MSSqlController.getAny();
}

module.exports = {getMySqlTest, getMSSqlTest};