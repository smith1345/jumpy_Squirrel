using UnityEngine;
using System.Collections;

public class SpriteAnim : MonoBehaviour 
{
	public Material squirrelMat;
	public int columns			= 8;
	public int rows				= 8;

	//ANIM CTRL
	public int currentFrame		= 1;
	public float animTime		= 0.0f;
	public float fps			= 12.0f;


	private Vector2 framePosition;
	private Vector2 frameSize;
	private Vector2 frameOffset;

	private int i;

	//ANIMATION FRAMES (min and max) variables
	private int runMin			= 1;
	private int runMax 			= 13;
	//private int jump			= 1;

	//ANIMATION ID variables
	private int animRun			= 1;

	void Start () 
	{
	
	}
	
	void Update () 
	{
		PlayAnimation ();
	}

	void PlayAnimation()
	{
		animTime -= Time.deltaTime;
		if(animTime <= 0)
		{
			currentFrame += 1;
			animTime += 1.0f;
		}

		framePosition.y = 1;
		for (i = currentFrame; i > columns; i -= rows)
		{
			framePosition.y += 1;
		}
		framePosition.x = i - 1;

		frameSize = new Vector2 (1.0f / columns, 1.0f / rows);
		frameOffset = new Vector2 (framePosition.x / columns, 1.0f - (framePosition.y / rows));
		
		squirrelMat.SetTextureScale ("_MainTex", frameSize);
		squirrelMat.SetTextureOffset ("_MainTex", frameOffset);
	}
}
