using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;


public class FirstKey : MonoBehaviour 
{
	private bool DoOnce = true;  

	public GameEvent EnterEvent;
	public GameEvent ExitEvent;

	private void OnTriggerEnter(Collider other)
	{
		if (DoOnce)
		{
			EnterEvent.Raise();
			Debug.Log("Enter Event");
			DoOnce = false;
		}
		else
		{
			ExitEvent.Raise();
			Debug.Log("Exit Event");
			DoOnce = true;
		}
		
	}
}

