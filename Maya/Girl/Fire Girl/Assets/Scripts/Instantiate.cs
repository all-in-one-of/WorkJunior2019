using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Instantiate : MonoBehaviour
{

	public GameObject firePoint;
	public List<GameObject> vfx = new List<GameObject>();
	public float waitTime;
	private float pause;
	public int maxProjectiles;
	private int numOfProjectile;

	private GameObject effectToSpawn;
	void Start ()
	{
		effectToSpawn = vfx[0];
		//pause = Time.time;
	}
	
	
	void Update () {
		SpawnVFX();
	}

	void SpawnVFX()
	{
		GameObject vfx;

		if (Time.time >= waitTime && numOfProjectile < maxProjectiles)
		{
			vfx = Instantiate(effectToSpawn, firePoint.transform.position, Quaternion.identity);
			numOfProjectile++;
		}
		else
		{
			Debug.Log("No Fire Point");
		}

		StartCoroutine(DeleteFX());
		
	}

	 IEnumerator DeleteFX()
	{
		yield return new WaitForSeconds(3);
		Destroy(effectToSpawn);
		StopCoroutine(DeleteFX());
	}
}
