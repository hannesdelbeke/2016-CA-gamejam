using UnityEngine;
using System.Collections;

public class Cursor_Tracking : MonoBehaviour {

    Vector3 screenPoint;
    GameObject boat;
    public Object wave;
    Vector3 sendValue;

	// Use this for initialization
	void Start ()
    {
        boat = GameObject.Find("Boat");
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetMouseButtonDown(0))
        {
            RaycastHit hit;
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

            if (Physics.Raycast(ray, out hit))
            {
                print("RAYISCAST");
                if (Boat_RockCollision.gameActive == true)
                {
                    print("BOATROCKCOLLISION IS ACTIVE");
                    if (hit.collider.name == "Watercollider")
                    {
                        GameObject.Instantiate(wave, hit.point, boat.transform.rotation);
                        print("WATER SPAWNED");
                        //sendValue = new Vector3(hit.point.x, Vector3.Distance(hit.point, boat.transform.position), hit.point.z);
                        //boat.SendMessage("Pushed", sendValue);
                    }
                }   
                else
                {
                    if (hit.collider.name == "Continue")
                    {
                        Application.LoadLevel("MainScene_Orcun");
                    }
                }
            }
        }
        
        if (Input.GetKeyDown(KeyCode.R))
        {
            Application.LoadLevel("MainScene_Orcun");
        }
    }
}