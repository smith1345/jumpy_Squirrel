using UnityEngine;
using System.Collections;

public class Squirrel3DMovement : MonoBehaviour {

	Vector2 velocity = Vector2.zero;
	Animator animator;

	//Shows up in Inspector
	public float jumpHeight    = 10f;
	public float forwardSpeed = 1f;
	public bool isdead = false;
	public bool godMode = false;

	//Variables 
	bool didJump = false;
	float deathCooldown;

	// Initialization
	void Start () 
	{
		animator = transform.GetComponentInChildren<Animator>(); //reference to the animator

		//For Debug Purposes
		//if(animator == null) 
		//{
		//	Debug.LogError("Didn't find animator!");
		//} //end of if(animator
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


		rigidbody.velocity = new Vector2 (forwardSpeed, rigidbody.velocity.y); //we are taking whatever whatever velocity our character is currently moving and adding to it
		//if jumping
		if(didJump) {

			rigidbody.AddForce( new Vector2(0, jumpHeight )); //this is for jumping
			didJump = false;
		}

		//this stops the character from rotating back or forth whenever he hits something
		//if((rigidbody.velocity.y > 0) || (rigidbody.velocity.y < 0)) 
		//{
			//transform.rotation = Quaternion.Euler(0, 180, 0); //this keeps him upright
		//}
		//else 
		//{
		//do nothing
		//}
	}

}
