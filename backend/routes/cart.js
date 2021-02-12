import {Router} from 'express'
import cartCtrl from  '../controllers/cart.controller'

const router = Router();

router.get('/', cartCtrl.readCartMethod);
router.get('/:cartId', cartCtrl.findCartMethod);
// router.post('/', cartCtrl.addCartMethod);
// router.delete('/:cartId', cartCtrl.deleteCartMethod);
// router.put('/:cartId', cartCtrl.editCartMethod);

export default router;