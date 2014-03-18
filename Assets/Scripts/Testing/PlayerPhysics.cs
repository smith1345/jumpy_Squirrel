using UnityEngine;
using System.Collections;

public class PlayerPhysics : MonoBehaviour {

	public LayerMask collisionMask;
	private BoxCollider collider;
	private Vector3 s;
	private Vector3 c;
	private float skin = .005f; //small space between player and floor

	[HideInInspector]
	public bool grounded;
	public bool movementStopped; //to stop the gravity when hitting an object

	Ray ray;
	RaycastHit hit;

	void Start() 
	{
		collider = GetComponent<BoxCollider> ();
		s = collider.size; //size
		c = collider.center; //center
	} //end of start

	//this handles the collisions
	public void Move(Vector2 moveAmount) 
	{
		float deltaY = moveAmount.y;
		float deltaX = moveAmount.x;
		Vector2 p = transform.position;

		//check if there is ground below us
		//so we will cast three rays down
		grounded = false; //assume that the player is not on the ground	
		for (int i = 0; i<3; i++) 
		{
			float dir = Mathf.Sign (deltaY);
			float x = (p.x + c.x - s.x/2) + s.x/2 * i; //these are the three positions of the rays, left, center and right
			float y = p.y + c.y + s.y/2 * dir; //bottom of collider

			ray = new Ray (new Vector2 (x, y), new Vector2 (0, dir));
			Debug.DrawRay (ray.origin, ray.direction); //draws the rays so you can see them for debuggin purposes
			if (Physics.Raycast (ray, out hit, Mathf.Abs (deltaY) + skin, collisionMask)) 
			{
				
				//get the distance between the player and the ground
				float dst = Vector3.Distance (ray.origin, hit.point);

				//stop player from moving down when reaching the ground
				if (dst > skin) {
					deltaY = dst *dir - skin * dir;
				} else {
					deltaY = 0;
				}
				grounded = true;
				break;
				
			} //end of if Physics
		} //end of for int i	

		//check for left and right collisions
		movementStopped = false;
		for (int i = 0; i<3; i++) 
		{
			float dir = Mathf.Sign(deltaX);
			float x = p.x + c.x + s.x/2 * dir;
			float y = p.y + c.y - s.y/2 + s.y * i;

			ray = new Ray(new Vector2(x,y), new Vector2(dir,0));
			Debug.DrawRay(ray.origin, ray.direction); //draws the rays so you can see them for debuggin purposes
				
			if (Physics.Raycast(ray,out hit,Mathf.Abs(deltaX) + skin,collisionMask)) 
			{
				//get the distance between the player and the ground
				float dst = Vector3.Distance (ray.origin, hit.point);

				//stop player from moving down when reaching the ground
				if (dst > skin) 
				{
						deltaX = -dst - skin * dir;
				} //end of if
				else 
				{
					deltaX = 0;
				} //end of else
				movementStopped = true;
				break;
				
			} //end of if Physics
		} //end of for


		//handles angle collisions
		if (!grounded && !movementStopped) {
			Vector3 playerDir = new Vector3 (deltaX, deltaY);
			Vector3 o = new Vector3 (p.x + c.x + s.x / 2 * Mathf.Sign (deltaX), p.y + c.y + s.y / 2 * Mathf.Sign (deltaY)); //bottom of collider

			ray = new Ray (o, playerDir.normalized);
			if (Physics.Raycast(ray, Mathf.Sqrt (deltaX * deltaX + deltaY * deltaY),collisionMask)) {
				grounded = true;
				deltaY = 0;
			}
		}
		//Debug.DrawRay(o,playerDir.normalized); //shows rays cast at an angle 

		Vector2 finalTransform = new Vector2(deltaX,deltaY);
		transform.Translate(finalTransform);
	} //end of public void move	
} //end of public class PlayerPhysics
