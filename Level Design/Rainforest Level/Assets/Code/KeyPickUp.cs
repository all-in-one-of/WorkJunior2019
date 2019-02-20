using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;



public class KeyPickUp: MonoBehaviour
{
	private bool DoOnce = true;
	public GameEvent EnterEvent;
	
	private void OnTriggerEnter(Collider other)
	{
		if (DoOnce)
		{
			Debug.Log("Trigger activate!");
			EnterEvent.Raise();
			DoOnce = false;
		}
	}
}

