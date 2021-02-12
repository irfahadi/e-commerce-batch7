import {Router} from 'express'
import ordiCtrl from  '../controllers/orderDetail.controller'

const router = Router();

router.get('/', ordiCtrl.readOrdiMethod);
router.get('/:OrdiId', ordiCtrl.findOrdiMethod);

export default router