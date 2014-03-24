using UnityEngine;
using System.Collections;

public class SquirelMovement : MonoBehaviour {

	Vector3 velocity = Vector3.zero;
	Animator animator;

	//Shows up in Inspector
	public float jumpHeight    = 10f;
	public float forwardSpeed = 1f;
	public bool isdead = false;
	public bool godMode = false;

	//Variables 
	bool didJump = false;
	float deathCooldown;

	//this is for ground check
	//bool grounded = false;
	//public Transform GroundCheck; //our value for the ground
	//float groundRadius = 0.2f;
	//public LayerMask whatIsGround; //what can the character land on

	// Initialization
	void Start () 
	{
		animator = transform.GetComponentInChildren<Animator>(); //reference to the animator

		//For Debug Purposes
		if(animator == null) 
		{
			Debug.LogError("Didn't find animator!");
		} //end of if(animator
	} //end of start

	// Graphic & Input updates
	void Update() {
		if(isdead) {
			deathCooldown -= Time.deltaTime;

			if(deathCooldown <= 0) {
				if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0) ) {
					Application.LoadLevel( Application.loadedLevel );
				}
			}
		}
		else {
			if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0) ) {
				didJump = true;
			}
		}
	}

	
	// Do physics engine updates here
	void FixedUpdate () {

		//check if we are on the ground
		//grounded = Physics2D.OverlapCircle (GroundCheck.position, groundRadius, whatIsGround); //where is circle, radius of circle, what is circle if tru we are on the ground if false then we are not on the ground
		//animator.SetBool ("Ground", grounded);

		//if(isdead)
		//	return;

		//rigidbody2D.AddForce( Vector2.right * forwardSpeed ); //this moves the player forward to the right
		//float move = Input.GetAxis ("Horizontal"); //hot much we are moving
		rigidbody2D.velocity = new Vector2 (forwardSpeed, rigidbody2D.velocity.y); //we are taking whatever whatever velocity our character is currently moving and adding to it
		//if jumping
		if(didJump) {
			//rigidbody2D.AddForce( Vector2.up * flapSpeed ); //this is for jumping
			rigidbody2D.AddForce( new Vector2(0, jumpHeight )); //this is for jumping
			//transform.rotation = Quaternion.Euler(0, 90, 0);
			//animator.SetTrigger("DoFlap");
			didJump = false;
		}

		//this stops the character from rotating back or forth whenever he hits something
		if((rigidbody2D.velocity.y > 0) || (rigidbody2D.velocity.y < 0)) 
		{
			transform.rotation = Quaternion.Euler(0, 180, 0); //this keeps him upright
		}
		else 
		{
			//transform.rotation = Quaternion.Euler(0, 180, 0);
			//this tilts the head down when he is dropping
		//	float angle = Mathf.Lerp (0, -90, (-rigidbody2D.velocity.y / 3f) );
		//	transform.rotation = Quaternion.Euler(0, 0, angle);
		}
	}
/*
	void OnCollisionEnter2D(Collision2D collision) {
		if(godMode)
			return;

		//animator.SetTrigger("Death");
		isdead = true;
		deathCooldown = 0.5f;
	}
*/
}
