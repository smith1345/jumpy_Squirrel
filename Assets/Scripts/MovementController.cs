using UnityEngine;
using System.Collections;

public class MovementController : MonoBehaviour {

	//public as seen in the inspector
	public Vector3 gravity;
	//public float scrollSpeed = 1f;
	public Vector3 jumpHeight;
	public float speed; 
	//private hidden from the inspector
	private Vector2 amountToMove;

	//initialize variables
	Vector3 velocity = Vector3.zero;
	bool jump = false;
	Animator animator;


public bool godMode = false;

// Use this for initialization
void Start () {
	animator = transform.GetComponentInChildren<Animator>();
	
	if(animator == null) {
		Debug.LogError("Didn't find animator!");
	}
}

// Do Graphic & Input updates here

void Update() {



		if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0) ) {
			jump = true;
			//amountToMove.y = jumpHeight; //do not want gavity to build up
		}
	
}


// Do physics engine updates here
void FixedUpdate () {

	//rigidbody2D.AddForce( Vector2.right * scrollSpeed ); //this moves the player forward to the right
		//GameObject move = GameObject.Find ("Player");
		//rigidbody2D.velocity = transform.TransformDirection (Vector3.forward * speed);
		velocity = Vector2.right * speed; //this moves the player forward to the right

		//velocity += gravity * Time.deltaTime;
	
		if (jump == true) {
			jump = false;
			velocity.y = jumpHeight.y;
		
		}

		transform.position = velocity * Time.deltaTime;

} //end of fixed update


} //end of 
