using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyController : MonoBehaviour
{
    public float speed = 10;
    private GameObject player;
    void Start()
    {
        player = GameObject.FindWithTag("Player");
    }

    void Update()
    {
        Vector3 direction = player.transform.position - transform.position;
        direction.y = 0;
        direction.Normalize();
        transform.Translate(direction * speed * Time.deltaTime);
        GameManager gm = FindObjectOfType<GameManager>();
        if (gm.gameOver)
        {
            speed = 0;
        }
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") || other.CompareTag("Projectile"))
        {
            Debug.Log("enemyHit");
            Destroy(gameObject);
            SpawnManager sm = FindObjectOfType<SpawnManager>();
            sm.enemyCount--;
            if (other.CompareTag("Player")) other.GetComponent<HealthManager>().Damage();
        }
    }
}
