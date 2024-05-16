using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed;
    CharacterController characterController;
    public GameObject projectilePrefab;
    Animator animator;

    public Animator getAnimator()
    {
        return animator;
    }

    void Start()
    {
        characterController = GetComponent<CharacterController>();
        animator = GetComponentInChildren<Animator>();
        
    }

    void Update()
    {
        if (!GameObject.Find("GameManager").GetComponent<GameManager>().GameState())
        {
            float horizontal = Input.GetAxis("Horizontal");
            float vertical = Input.GetAxis("Vertical");
            Vector3 direction = new Vector3(horizontal, 0, vertical).normalized;
            characterController.SimpleMove(direction * speed);
            if (horizontal != 0 || vertical != 0)
            {
                transform.forward = direction;
                animator.SetBool("walk_b", true);
            }
            else
            {
                animator.SetBool("walk_b", false);
            }

            if (Input.GetKeyDown(KeyCode.Space))
            {
                Quaternion rotation = Quaternion.LookRotation(direction);
                GameObject projectile = Instantiate(projectilePrefab, transform.position, rotation);
                Shoot projectileShoot = projectile.GetComponent<Shoot>();
                projectileShoot.DirectionShoot(direction);
            }
        }
        else
        {

        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            GameManager gm = FindObjectOfType<GameManager>();
            gm.PlayerHit();
        }
    }
}
