using UnityEngine;
using System.Collections;

public class Boat_WavePush1 : MonoBehaviour
{

    Rigidbody rB;
    public float maxDistance = 5;
    public float waveStrength = 5;

    // Use this for initialization
    void Start()
    {
        rB = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if(Boat_RockCollision.gameActive == false)
        {
            rB.velocity = new Vector3(0f, 0f, 0f); 
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.name == "Wave(Clone)")
        {
            Vector3 dir = (collider.transform.position - transform.position).normalized;
            float dist = Vector3.Distance(collider.transform.position, transform.position);
            dist = Mathf.Clamp(dist, 0, maxDistance);
            dist = maxDistance - dist;

            dist *= dist;

            dir = -1 * dir;

            rB.AddForce(dir * dist * waveStrength);

            print(dir * dist * waveStrength);
        }
    }

    void Pushed(Vector3 wavePosition)
    {

        Vector3 dir = (wavePosition - transform.position).normalized;
        float dist = Vector3.Distance(wavePosition, transform.position);
        dist = Mathf.Clamp(dist, 0, maxDistance);
        dist = maxDistance - dist;
        dir = -1 * dir;

        rB.AddForce(dir * dist * waveStrength);               
    }
}