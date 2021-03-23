//
//  SignIn.swift
//  GIDSignInPod
//
//  Created by cedcoss on 22/03/21.
//

import Foundation
import GoogleSignIn
import Firebase
public class SignIn : UIResponder , UIApplicationDelegate , GIDSignInDelegate{
    public func configureFirebase(_ clientId : String , _ googleAppId : String , _ gcmSenderID: String , _ apiKey : String , _ projectID : String , _ bundleID : String)
    {
        let secondaryOptions = FirebaseOptions(googleAppID: googleAppId,
                                               gcmSenderID: gcmSenderID)
        secondaryOptions.apiKey = apiKey
        secondaryOptions.projectID = projectID
          secondaryOptions.bundleID = bundleID
          secondaryOptions.clientID = clientId
        FirebaseApp.configure(options: secondaryOptions)
        GIDSignIn.sharedInstance()?.clientID = clientId
        GIDSignIn.sharedInstance()?.delegate = self
    }
    
    public func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        print("User email: \(user.profile.email) ?? No email ")
    }
    
    public func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url)
    }
}

