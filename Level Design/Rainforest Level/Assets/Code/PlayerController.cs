using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{   
    //basic movement
    private CharacterController cc;
	public float verticalVelocity = 0.0f;
	public float speed = 10.0f;
	Vector3 move = Vector3.zero;
    public bool canMove = true;

    //variables for jump/roll
    public float gravity = 30.0f;
	public float jumpForce = 15.0f;

	//variables for being grounded
	public LayerMask ground;

	//varibles for slopes
	Vector3 forward;

	void Start() 
	{
		cc = GetComponent<CharacterController>();
		StartCoroutine(PlayGame());
	}

	IEnumerator PlayGame() 
	{
		while(canMove)
		{
			MoveInput();
			yield return new WaitForSeconds(0.01f);
		}
	}

	void MoveInput()
    {
		//base movement
		if(isGrounded())
		{
			verticalVelocity = 0;

			if(Input.GetButtonDown("Jump"))
			{
				verticalVelocity = jumpForce;
			}
			

			//this makes the character controller move based off the local rotation and not global
			float moveX = Input.GetAxis("Horizontal");
			float moveZ = Input.GetAxis("Vertical");
			move = transform.TransformDirection(new Vector3(moveX, -Mathf.Abs(forward.y), moveZ)) * speed;
		}
		
		//calculates movement
		verticalVelocity -= gravity * Time.deltaTime;
		Vector3 movement = move + verticalVelocity * Vector3.up;
		cc.Move(movement * Time.deltaTime);
	}

	//checks if the player is on the ground
	//parameters: none
	//returns: true if isGrounded, false if not
	//there was a glitch where going down/uphill made the character see itself as not grounded when using cc.isGrounded
	private bool isGrounded()
	{
		if(cc.isGrounded)
		{
			return true;
		}
		else
		{
			Vector3 bottom = cc.transform.position - new Vector3(0, cc.height / 2, 0);

			RaycastHit hit;
			//checks via raycast to see if the player is close enough to the ground to count as being grounded
			//also changes the forward vector so player doesn't bounce down slopes
			if(Physics.Raycast(bottom, -Vector3.up, out hit, 0.2f, ground))
			{
				forward = Vector3.Cross(transform.right, hit.normal);
				Vector3 strafeDir = Vector3.Cross(transform.forward, hit.normal);

				//checks to see which direction is more correct
				if(Mathf.Abs(strafeDir.y) > Mathf.Abs(forward.y))
				{
					forward = strafeDir;
				}
				return true;
			}
			return false;
		}
	}
}