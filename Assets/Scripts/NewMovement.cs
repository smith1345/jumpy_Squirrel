using UnityEngine;
using System.Collections;

public class NewMovement : MonoBehaviour {

	public float maxspeed = 10f;
	//bool facingRight = true; //which way our character is facing
	Animator anim;

	//this is for ground check
	//bool grounded = false;
	//public Transform groundCheck; //our value for the ground
	//float groundRadius = 0.2f;
	//public LayerMask whatIsGround; //what can the character land on



	// Use this for initialization
	void Start () 
	{
		//anim = GetComponent<Animator> ();

	}
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		//check if we are on the ground
		//grounded = Physics2D.OverlapCircle (groundCheck.position, groundRadius, whatIsGround); //where is circle, radius of circle, what is circle if tru we are on the ground if false then we are not on the ground
		//anim.SetBool ("Ground", grounded);




		float move = Input.GetAxis ("Horizontal"); //hot much we are moving
		//anim.SetFloat ("Speed", Mathf.Abs (move)); //this contoles that animation
		rigidbody2D.velocity = new Vector2 (move * maxspeed, rigidbody2D.velocity.y); //we are taking whatever whatever velocity our character is currently moving and adding to it



	}

	//this is when we fall off of the branch
	void OnCollisionEnter2D(Collision2D collision) {
		//if(godMode)
		//	return;
		
		//animator.SetTrigger("Death");
		//dead = true;
		//deathCooldown = 0.5f;
	}
}
