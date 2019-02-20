using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;



public class Gate: MonoBehaviour
{
	public GameEvent EnterEvent;
	
	private void OnTriggerEnter(Collider other)
	{
		if (tag == "Gate")
		{
			Debug.Log("Trigger activate!");
			EnterEvent.Raise();
		}
	}
}
