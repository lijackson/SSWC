/// @description i do be meandering

// if we haven't gotten to our destination, go there
if (abs(target_x - self.x) > 1 || abs(target_y - self.y) > 1) {
	// pick a direction to go in
	if (abs(target_x - self.x) > 1 && (!(abs(target_y - self.y) > 1) || random(1) > 0.5)) {
		self.x += (target_x > self.x) * 2 - 1;
	} else if (abs(target_y - self.y) > 1) {
		self.y += (target_y > self.y) * 2 - 1;
	}
	
}

// otherwise, there is a 5% chance we decide to wander somewhere else
else if (wander_dist > 0 && random(1) < 0.005) {
	target_x = home_x - wander_dist + random(wander_dist*2);
	target_y = home_y - wander_dist + random(wander_dist*2);
}
