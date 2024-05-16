using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    
    //moved health into its own manager on Player
    public bool gameOver = false;
    public int score = 0;
    public int level = 1;
    public TextMeshProUGUI gameOverText, scoreText, levelText;

    public bool GameState()
    {
        return gameOver;
    }

    private void Start()
    {
        gameOverText.gameObject.SetActive(false);
        scoreText.SetText("Score: " + score);
        levelText.SetText("Level: " + level);

    }
    private void Update()
    {
        
            scoreText.SetText("Score: " + score);
            levelText.SetText("Level: " + level);
              
    }
    public void PlayerHit()
    {
        int currentHealth = GameObject.Find("Player").GetComponent<HealthManager>().getCurrentHP();
        
        Debug.Log("PlayerHit");

        if (currentHealth <= 0)
        {
            GameOver();
        }
    }

    public void GameOver()
    {
        gameOver = true;
        GameOverScreen();
        PlayerController pc = FindObjectOfType<PlayerController>();
        SpawnManager sm = FindObjectOfType<SpawnManager>();
        EnemyController ec = FindObjectOfType<EnemyController>();
        sm.enabled = false;
        ec.enabled = false;
        pc.getAnimator().SetBool("death_b", false);
        
    }

    public void AntKill()
    {
        score++;
        Difficulty();
    }

    public void Difficulty()
    {
        SpawnManager spawnManager = FindObjectOfType<SpawnManager>();
        if (score % 10 == 0)
        {
            spawnManager.maxEnemy += 10;
            level++;
        }
    }

    public void GameOverScreen()
    {
        gameOverText.gameObject.SetActive(true);
    }
}
