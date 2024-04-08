using UnityEngine;
using System.Collections;

public class Wave_Expand : MonoBehaviour {

    float destroyTimer;
    float lifeTime = 1f;

	// Use this for initialization
	void Start ()
    {
        destroyTimer = Time.time + lifeTime;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Time.time > destroyTimer) Destroy(gameObject);
       // transform.localScale += new Vector3(0.02f, 0.0f, 0.02f);
    }
}
