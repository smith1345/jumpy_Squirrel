using UnityEngine;
using System.Collections;

[RequireComponent(typeof(PlayerPhysics))]

public class PlayerController : Entity 
{

	//player variables
	public float gravity = 20;
	public float speed = 8;
	public float acceleration = 12;
	public float jumpHeight = 12;
	
	private float currentSpeed;
	private float targetSpeed;
	private Vector2 amountToMove;

	private PlayerPhysics playerPhysics;

	// Use this for initialization
	void Start () {
	
		playerPhysics = GetComponent<PlayerPhysics>();
	}
	
	// Update is called once per frame
	void Update () {

		//when hitting an object we want to stop the gravity
		if (playerPhysics.movementStopped) {
			
			targetSpeed = 0;
			currentSpeed = 0;
		}

		//Input
		targetSpeed = Input.GetAxisRaw("Horizontal") * speed;
		currentSpeed = IncrementTowards (currentSpeed, targetSpeed, acceleration);
	

		//for jumping
		if (playerPhysics.grounded) 
		{
			amountToMove.y = 0; //whenever you are on the ground
		
			if (Input.GetButtonDown("Jump")) //set to spacebar 
			{
				amountToMove.y = jumpHeight; //do not want gavity to build up
			}
		}
		//end of jumping

		//amountToMove = new Vector2(currentSpeed,0); //x axis is current speed
		amountToMove.x = currentSpeed; //gravity is not affected in the x direction
		amountToMove.y -= gravity * Time.deltaTime; //gravity is affected in the y direction
		playerPhysics.Move(amountToMove * Time.deltaTime);
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
} // end of MonoBehabior