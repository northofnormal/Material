/*
* Copyright (C) 2015 - 2016, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.io>.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
*	*	Redistributions of source code must retain the above copyright notice, this
*		list of conditions and the following disclaimer.
*
*	*	Redistributions in binary form must reproduce the above copyright notice,
*		this list of conditions and the following disclaimer in the documentation
*		and/or other materials provided with the distribution.
*
*	*	Neither the name of Material nor the names of its
*		contributors may be used to endorse or promote products derived from
*		this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/*
MaterialView is the base UIView class used throughout Material. It is designed 
to easily take shape, depth, and animations. The major difference is that 
MaterialView has all the added features of the UIView class. Below is an example 
of setting a MaterialView's cornerRadius, shape, and depth.
*/

import UIKit
import Material

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		prepareView()
//		prepareGeneralMaterialViewExample()
		prepareMaterialViewAnimationExample()
	}
	
	/// General preparation statements.
	private func prepareView() {
		view.backgroundColor = MaterialColor.white
	}
	
	/// Prepare the MaterialView.
	private func prepareGeneralMaterialViewExample() {
		let materialView: MaterialView = MaterialView(frame: CGRectMake(132, 132, 150, 150))
		materialView.image = UIImage(named: "FocusAppIcon")
		materialView.shape = .Square
		materialView.depth = .Depth2
		materialView.cornerRadius = .Radius3
		
		// Add materialView to UIViewController.
		view.addSubview(materialView)
	}
	
	/// Prepares the MaterialView animation example.
	private func prepareMaterialViewAnimationExample() {
		let materialView: MaterialView = MaterialView(frame: CGRectMake(132, 132, 150, 150))
		materialView.image = UIImage(named: "FocusAppIcon")
		materialView.shape = .Square
		materialView.depth = .Depth2
		materialView.cornerRadius = .Radius3
		
		// Add materialView to UIViewController.
		view.addSubview(materialView)
		
		UIView.animateWithDuration(0.4,
			delay: 3,
			usingSpringWithDamping: 0.6,
			initialSpringVelocity: 0,
			options: .AllowUserInteraction,
			animations: {
				materialView.frame.origin.x = 300
			}, completion: nil)
	}
}

