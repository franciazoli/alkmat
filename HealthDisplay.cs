using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.UI;
using static HealthManager;

public class HealthDisplay : MonoBehaviour
{
    public TMP_Text healthDisplayText;
    public HealthManager player;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.Find("Player").GetComponent<HealthManager>();
    }

    // Update is called once per frame
    void Update()
    {
        healthDisplayText = this.GetComponent<TMP_Text>();
        healthDisplayText.text = "HP: " + player.getCurrentHP().ToString() + "/" + player.getHP().ToString();
    }
}
