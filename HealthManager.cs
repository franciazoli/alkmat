using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthManager : MonoBehaviour
{
    public int HP;
    public int CurrentHP;

    public int getCurrentHP()
    {
        return CurrentHP;
    }

    public int getHP()
    {
        return HP;
    }

    public void Restore()
    {
        CurrentHP = HP;
    }

    public void Damage()
    {
        CurrentHP -= 1;
    }

    // Start is called before the first frame update
    void Start()
    {
        CurrentHP = HP;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
