using UnityEngine;
using System.Collections;

public class BoxDeath : MonoBehaviour {

void OnTriggerEnter(Collider c){
	if (c.tag == "Player") {
			//Debug.Log("DEATH");
			c.GetComponent<Entity>().TakeDamage(10);
		}
	
	}
}
