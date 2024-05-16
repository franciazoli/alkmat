using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    public GameObject enemyPrefab;
    public GameObject healthPrefab;
    public float healthCount = 0;
    public float maxHealth = 1;
    public float spawnMax = 70;
    public float spawnMin = 40;
    public float startDelay = 1;
    public float spawnInterval = 0.4f;
    public float maxEnemy = 30;
    public float enemyCount = 0;
    bool gameOver;

    private void Start()
    {
        InvokeRepeating("SpawnEnemy", startDelay, spawnInterval);
        Invoke("SpawnHealthCube", 3);
    }
    private void Update()
    {

           
    }

    public void SpawnEnemy()
    {
        GameManager gm = FindObjectOfType<GameManager>();
        if (gm.gameOver)
        {
            CancelInvoke("SpawnEnemy");
            return;
        }
        float spawnPosX;
        float spawnPosZ;
        do
        {
            spawnPosX = Random.Range(-spawnMax, spawnMax);
            spawnPosZ = Random.Range(-spawnMax, spawnMax);
        } while (Mathf.Abs(spawnPosX) < spawnMin && Mathf.Abs(spawnPosZ) < spawnMin);
        Vector3 spawnPos = new Vector3(spawnPosX, 0, spawnPosZ);
        if (enemyCount < maxEnemy)
        {
            Instantiate(enemyPrefab, spawnPos, enemyPrefab.transform.rotation);
            enemyCount++;
        }
    }

    public void SpawnHealthCube()
    {
        GameManager gm = FindObjectOfType<GameManager>();
        if (gm.gameOver)
        {
            CancelInvoke("SpawnHealthCube");
            return;
        }
        float spawnPosX;
        float spawnPosZ;
        spawnPosX = Random.Range(-spawnMax, spawnMax);
        spawnPosZ = Random.Range(-spawnMax, spawnMax);


        Vector3 spawnPos = new Vector3(spawnPosX, 0, spawnPosZ);
        if (healthCount < 1)
        {
            Instantiate(healthPrefab, spawnPos, healthPrefab.transform.rotation);
            healthCount++; 
        }
    }
}
