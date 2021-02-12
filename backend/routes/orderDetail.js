import { Router } from 'express';
import orderDetailCtrl from '../controllers/orderDetail.controller';

//2. create object Router dan simpan di variable router
const router = Router();
router.get('/', orderDetailCtrl.readOrderDetail);



export default router;