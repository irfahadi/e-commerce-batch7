import { Router } from 'express';
import userController from '../controllers/users.controller'
import apiUsers from '../controllers/apiUserCart'
const router = Router()

router.get('/',userController.findAllUsers);
router.post('/',userController.createUser);
router.put('/',userController.updateUser)
router.delete('/',userController.deleteUser)
router.get('/find/:username',userController.findUser);
//router.get('/users-address',usersController.findUserWAddress);

router.post('/userCart',apiUsers.createUserItems,userController.findAllUsers);
export default(router)