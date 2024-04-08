using UnityEngine;
using System.Collections;

public class Boat_WavePush : MonoBehaviour {

    Rigidbody rB;
    public float waveStrength;

	// Use this for initialization
	void Start ()
    {
        rB = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update ()
    {

    }

    void Pushed(Vector3 wavePosition)
    {
        if(Boat_RockCollision.gameActive == true)
        { 
        //wavePosition = Vector3.Normalize(wavePosition);
        float waveX, waveZ;
        waveX = wavePosition.x - transform.position.x;
        waveZ = wavePosition.z - transform.position.z;

            if (waveX < 3f && waveX > -3f && waveZ < 3f && waveZ > -3f)
            {

                if (waveX > 0) { waveX = 5.0f - waveX; }
                if (waveX < 0) { waveX = waveX + 5.0f; waveX = -waveX; }
                if (waveZ > 0) { waveZ = 5.0f - waveZ; }
                if (waveZ < 0) { waveZ = waveZ + 5.0f; waveZ = -waveZ; }

                rB.AddForce(new Vector3(-waveX * waveStrength, 0f, -waveZ * waveStrength));
            }
        }
        else
        {
            rB.velocity = new Vector3(0f, 0f, 0f);
        }
    }
}
