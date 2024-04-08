using UnityEngine;
using System.Collections;

public class Rocks_Spawning : MonoBehaviour {

    float nextRock;
    float rockRate;
    bool leftRight = false;
    public GameObject rock;

	// Use this for initialization
	void Start ()
    {
        rockRate = 1.75f;
        nextRock = Time.time + rockRate;
	}
	
	// Update is called once per frame
	void Update ()
    {
        //if(Time.time > 10f)
        //{
            rockRate = 1.25f;
            //if (Time.time > 20f)
            //{
            //    rockRate = 1f;
            //}
        //}
        if (Boat_RockCollision.gameActive == true)
        {
            if (Time.time > nextRock)
            {
                if (leftRight == true)
                {
                    float RNG = Random.Range(0.0f, 4.0f);
                    GameObject.Instantiate(rock, new Vector3(8f, 0f, RNG), rock.transform.rotation);
                    leftRight = false;
                }
                else
                {
                    float RNG = Random.Range(-4.0f, 0.0f);
                    GameObject.Instantiate(rock, new Vector3(8f, 0f, RNG), rock.transform.rotation);
                    leftRight = true;
                }
                nextRock = Time.time + rockRate;
            }
        }
	}
}
