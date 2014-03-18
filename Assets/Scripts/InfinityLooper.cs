using UnityEngine;
using System.Collections;

public class InfinityLooper : MonoBehaviour {
	int numBGPanels = 2; //this is the number of images we are using in the background

	void OnTriggerEnter2D(Collider2D collider){
		Debug.Log ("Triggered: " + collider.name);

		float widthOfBGObject = ((BoxCollider2D)collider).size.x;
		Vector3 pos = collider.transform.position;
		pos.x +=widthOfBGObject * numBGPanels - widthOfBGObject/2f;
		collider.transform.position = pos;
	}
}
