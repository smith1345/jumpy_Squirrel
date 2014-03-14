using UnityEngine;
using System.Collections;

public class GameCamera : MonoBehaviour {

	private Transform target;
	private float trackSpeed = 10;
	public void SetTarget(Transform t)
	{
		target = t;
	}

	//we only want the camera to follow after the player has moved
	void LateUpdate() {
		//make sure that the player is not dead or target is not null
		if (target) {
			float x = IncrementTowards(transform.position.x, target.position.x, trackSpeed);
			float y = IncrementTowards(transform.position.y, target.position.y, trackSpeed);
			transform.position = new Vector3(x,y, transform.position.z);
		}

	}
	//Increase towards target by the speed
	//n is current speed
	//acc is acceleration
	
	private float IncrementTowards(float n, float target, float acc) 
	{
		if (n == target) 
		{
			return n;
		}
		else 
		{
			float dir = Mathf.Sign(target - n); //must n be increased or decreased to get closer to target
			n += acc * Time.deltaTime * dir;
			return (dir == Mathf.Sign (target-n))? n: target; //if n has now passed target then return target, otherwise retun n
		}
	}
}