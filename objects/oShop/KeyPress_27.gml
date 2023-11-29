// leave screen and resume game
instance_activate_all();
oBuff.visible = 1;

//destroying all instances oShop has created
instance_destroy(oShop);
instance_destroy(oBuyDoubleJumpButton);
instance_destroy(oBuySpdBoostButton);
instance_destroy(oShopBuff1);
instance_destroy(oShopBuff2);
instance_destroy(oShopBuff3);