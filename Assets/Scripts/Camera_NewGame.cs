using UnityEngine;
using System.Collections;

public class Camera_NewGame : MonoBehaviour {

    public GameObject continueText;

	// Use this for initialization
	void Start ()
    {
	    
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(Boat_RockCollision.gameActive == true)
        {
            continueText.SetActive(false);
        }
        else
        {
            continueText.SetActive(true);
        }
	}
}
