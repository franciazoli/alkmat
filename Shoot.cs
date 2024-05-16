
using JetBrains.Annotations;
using UnityEngine;

public class Shoot : MonoBehaviour
{
    public float speed = 40f;
    Vector3 direction;
    public float maxDistance = 100;
    public float distanceTraveled = 0;
    public int projectileHealth = 4;
    
   
    private void Update()
    {
        GetComponent<Rigidbody>().velocity = direction * speed;
        distanceTraveled += Time.deltaTime * speed;

        if (distanceTraveled > maxDistance)
        {
            Destroy(gameObject);
        }
    }

    public void DirectionShoot(Vector3 dir)
    {
        direction = dir;
    }

    public void OnTriggerEnter(Collider other)
    {
        GameManager gm = FindObjectOfType<GameManager>();
        if (other.CompareTag("Enemy"))
        {
            gm.AntKill();
            Debug.Log("Projectile Hit");
            projectileHealth--;
            if (projectileHealth <= 0) 
            {
                Destroy(gameObject);
            }
        }
    }
}
