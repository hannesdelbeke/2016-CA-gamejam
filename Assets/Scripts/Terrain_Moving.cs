using UnityEngine;
using System.Collections;

public class Terrain_Moving : MonoBehaviour {

    public float deathTime;
    public GameObject terrain1, terrain2;
    bool spawned = false;

    // Use this for initialization
    void Start()
    {
        deathTime = Time.time + deathTime;
    }

    // Update is called once per frame
    void Update()
    {
        if(transform.position.x <= 2f && spawned == false)
        {
            int RNG = Random.Range(0, 2);
            if(RNG == 0)
            {
                GameObject newInst = Instantiate(terrain1, new Vector3(transform.position.x + 10f, 0f, transform.position.z), terrain1.transform.rotation) as GameObject;
                newInst.transform.localScale = transform.localScale;
                spawned = true; 
            }
            else
            {
                GameObject newInst = Instantiate(terrain2, new Vector3(transform.position.x + 10f, 0f, transform.position.z), terrain2.transform.rotation) as GameObject;
                newInst.transform.localScale = transform.localScale;
                spawned = true;
            }
        }
        else
        {
            if (Boat_RockCollision.gameActive == true)
            {
                transform.Translate(-0.03f, 0f, 0f);

                if (Time.time > deathTime) { Destroy(gameObject); }
            }
        }

    }
}