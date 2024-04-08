using UnityEngine;
using System.Collections;

public class Rock_Moving : MonoBehaviour {

    public float deathTime;

	// Use this for initialization
	void Start ()
    {
        deathTime = Time.time + deathTime;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Boat_RockCollision.gameActive == true)
        {
            transform.Translate(-0.03f, 0f, 0f);

            if (Time.time > deathTime) { Destroy(gameObject); }
        }
	}
}
