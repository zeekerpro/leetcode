function two_sum(nums, target){
	let pair = {};
	let answer = [];
	for(let index in nums){
		let num = nums[index];
		let padding = target - num;
		if(pair[num]){
			answer = [pair[num], index];
			break;
		}else{
			pair[padding] = index;
		}
	}
	return answer;
}

console.log(two_sum([2, 7, 11, 15], 9));
