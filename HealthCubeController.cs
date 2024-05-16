using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthCubeController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("healthHit");
            Destroy(gameObject);
            SpawnManager sm = FindObjectOfType<SpawnManager>();
            sm.healthCount--;
            sm.Invoke("SpawnHealthCube", 3);
            if (other.CompareTag("Player")) other.GetComponent<HealthManager>().Restore();
        }
    }
}
