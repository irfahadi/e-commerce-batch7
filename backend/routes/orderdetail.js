import {Router} from 'express';
import ordDCtrl from '../controllers/orderdetail.controller'

const router = Router()

router.get('/', ordDCtrl.readOrderDetailMethod);


export default router;