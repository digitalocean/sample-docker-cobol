> ⚠️ **This repository is archived and kept for reference purposes only.**  
> It is no longer maintained and will not receive updates or support.

# Getting Started #

These steps will get this sample COBOL application running for you using DigitalOcean. This application compiles two separate COBOL files and hostes them at `/` and `/hal`. This application uses Python's Flask Framework to route and execute the COBOL binaries.

**Note: Following these steps will result in charges for the use of DigitalOcean services**

## Requirements

* You need a DigitalOcean account. If you don't already have one, you can sign up at https://cloud.digitalocean.com/registrations/new
    
## Forking the Sample App Source Code

To use all the features of App Platform, you need to be running against your own copy of this application. To make a copy, click the Fork button above and follow the on-screen instructions. In this case, you'll be forking this repo as a starting point for your own app (see [Github documentation](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) to learn more about forking repos.

After forking the repo, you should now be viewing this README in your own github org (e.g. `https://github.com/<your-org>/sample-docker-cobol`)

## Deploying the App ##

Click this button to deploy the app to the DigitalOcean App Platform.

 [![Deploy to DO](https://mp-assets1.sfo2.digitaloceanspaces.com/deploy-to-do/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/digitalocean/sample-docker-cobol/tree/main)

## Making Changes to Your App ##

As long as you left the default Autodeploy option enabled when you first launched this app, you can now make code changes and see them automatically reflected in your live application. During these automatic deployments, your application will never pause or stop serving request because the App Platform offers zero-downtime deployments.

Here's an example code change you can make for this app:
1. Edit [HelloWorld.cbl](HelloWorld.cbl)
1. Change the greeting in the `DISPLAY` section.
1. Commit the change to master. Normally it's a better practice to create a new branch for your change and then merge that branch to master after review, but for this demo you can commit to master directly.
1. Visit https://cloud.digitalocean.com/apps and navigate to your sample-docker-cobol app.
1. You should see a "Building..." progress indicator, just like above.
1. Once the build completes successfully, click the "Live App" link in the header and you should see your updated application running. You may need to force refresh the page in your browser (e.g. using Shift+Reload).

## Learn More ##

You can learn more about the App Platform and how to manage and update your application at https://www.digitalocean.com/docs/app-platform/.


## Deleting the App #

When you no longer need this sample application running live, you can delete it by following these steps:
1. Visit the Apps control panel at https://cloud.digitalocean.com/apps
1. Navigate to the sample-docker-cobol app
1. Choose "Settings"->"Destroy"

This will delete the app and destroy any underlying DigitalOcean resources

**Note: If you don't delete your app, charges for the use of DigitalOcean services will continue to accrue.**
