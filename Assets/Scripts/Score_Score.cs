using UnityEngine;
using System.Collections;
using System.IO;
using System.Text;

public class Score_Score : MonoBehaviour {

	GameObject scoreText;
	int score;
	float scoreReal;
    

	// Use this for initialization
	void Start ()
    {
        score = 0;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Boat_RockCollision.gameActive == true) { 
			scoreReal += Time.deltaTime*10;
			score =(int) scoreReal ;
			//score++; 
		}
        if (score < 1000)
        {
            GetComponent<TextMesh>().text = "SCORE: " + score;
        }
        else
        {
			GetComponent<TextMesh>().text = "SCORE: " + score + "k";
        }

        if(Input.GetKeyDown(KeyCode.Z))
        {
            
        }
	}

    void SaveTopScore()
    {
    }
}
