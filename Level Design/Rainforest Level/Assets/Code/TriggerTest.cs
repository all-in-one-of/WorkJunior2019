using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;


public class TriggerTest : MonoBehaviour 
{
	private bool DoOnce = true;  

	public GameEvent EnterEvent;

	private void OnTriggerEnter(Collider other)
	{
		if (DoOnce)
		{
			EnterEvent.Raise();
			Debug.Log("Enter Event");
			DoOnce = false;
		}
		
		
	}
 }
