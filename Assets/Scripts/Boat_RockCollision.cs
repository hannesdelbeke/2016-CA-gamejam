using UnityEngine;
using System.Collections;

public class Boat_RockCollision : MonoBehaviour {

    public static bool gameActive;
    float deathTimer;
    bool dying = false;

	// Use this for initialization
	void Start ()
    {
        deathTimer = 0.3f;
        gameActive = true;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(dying==true)
        {
            if (Time.time > deathTimer)
            {
               // print("YOU HAVE DIED!!!");
                gameActive = false;
            }
        }
    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Rock")
        {
            deathTimer = Time.time + deathTimer;
            print(deathTimer);
            dying = true;
        }
    }

    void OnCollisionExit(Collision collision)
    {
        if(collision.gameObject.tag == "Rock")
        {
            dying = false;
            deathTimer = 0.3f;
        }
    }
}
