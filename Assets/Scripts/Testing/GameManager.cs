using UnityEngine;
using System.Collections;

//when player spawns
public class GameManager : MonoBehaviour {
	public GameObject player;
	private GameCamera cam; //reference to GameCamera

	// Use this for initialization
	void Start () {
		cam = GetComponent<GameCamera> ();
		SpawnPlayer ();

	}
	
	// Update is called once per frame
	private void SpawnPlayer () {
		cam.SetTarget((Instantiate(player, Vector3.zero, Quaternion.identity) as GameObject).transform); //make the camera follow the player
	}
}
