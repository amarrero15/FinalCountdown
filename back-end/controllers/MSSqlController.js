const MSSqlDAO = require('../dao/MSSqlDAO');

async function getAny(code = 'All'){        
    try{
        if(code === 'All'){
            let elements = await MSSqlDAO.readAny();
            return elements; // array           
        }
        else{
            let element;
            if(element){
                return element; // object
            }else{
                return {}; // object
            }            
        } 
    }catch(error){
        console.log(error);
        return {message: error};
    }
}

module.exports = {getAny};