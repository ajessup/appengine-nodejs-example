This is a base exmplar Node.js application in Google App Engine. It takes advantage of the Custom Runtime functionality available in App Engine Managed VMs.

Getting started
===============

If you haven't already, first make sure you are familiar with Custom Runtimes in the [App Engine Managed VM documentation](https://developers.google.com/appengine/docs/managed-vms/).

You must have the Google Cloud SDK, with the Managed VM component installed. We will assume that the SDK is available on your command line as `$ gcloud`.

You must also install Docker on your workstation, as the SDK uses it to build, test and deploy your application. Refer to the Managed VM documentation for more information on how to install Docker for your environment.

Finally, you should also clone or download this repository to your workstation to use as a base for your node.js application.

What's in this repository?
==========================

The package consists of the following:

`app.js` - The initial javascript file that is called by the node process
`app.yaml` - A configuration file for App Engine, that describes how your project is configured.
`Dockerfile` - A Dockerfile, this tells App Engine where and how to install node
`package.json` - An npm package manifest. By default this installs express and some helper libraries for App Engine

Running your application locally
================================

First, make sure Docker has been started on your workstation. Refer to the Managed VM documentation for more information on how to do this for your environment.

Then, to run your application locally:

 `$ gcloud preview app run /path/to/your/application`

This will build your application and run it locally. It will also start up and emulate core Cloud Platform services such as memcache, Cloud Storage and logging, allowing you access local mocks of these services during development.

Accessing App Engine services
=============================

You can access App Engine services from your node application. 

Deploying your application
==========================

To deploy your application to App Engine:

  `$ gcloud preview app deploy /path/to/your/application`

This will re-build and deploy your application to App Engine.