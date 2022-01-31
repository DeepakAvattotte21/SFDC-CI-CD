trigger orderTrigger on Order (before insert) {
	orderItemUtility.addBonusBoquet(Trigger.new);
}