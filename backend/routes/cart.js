import {Router} from 'express';
import cartCtrl from '../controllers/cart.controller'

const router = Router()

router.get('/', cartCtrl.readCart);

// ckckckck

export default router;
