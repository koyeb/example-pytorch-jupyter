<div align="center">
  <a href="https://koyeb.com">
    <img src="https://www.koyeb.com/static/images/icons/koyeb.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Koyeb Serverless Platform</h3>
  <p align="center">
    Deploy a PyTorch Jupyter Notebook Application on Koyeb
    <br />
    <a href="https://koyeb.com">Learn more about Koyeb</a>
    ·
    <a href="https://koyeb.com/docs">Explore the documentation</a>
    ·
    <a href="https://koyeb.com/tutorials">Discover our tutorials</a>
  </p>
</div>

## About Koyeb and the PyTorch Jupyter Notebook example application

Koyeb is a developer-friendly serverless platform to deploy apps globally. No-ops, servers, or infrastructure management.

This repository is designed to show how to deploy a Jupyter Notebook on Koyeb to create an interactive PyTorch environment.  By default, the project deploys on a RTX 4000 SFF ADA GPU Instance.

## Getting Started

Follow the steps below to deploy the PyTorch Jupyter Notebook application to your Koyeb account.

### Requirements

To use this repository, you need:

* A Koyeb account to build the `Dockerfile` and deploy it to the platform.  If you don't already have an account, you can [sign-up for free](https://app.koyeb.com/auth/signup).

### Deploy using the Koyeb button

The fastest way to deploy the PyTorch Jupyter Notebook application is to click the **Deploy to Koyeb** button below.

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?name=example-pytorch-jupyter&type=git&repository=koyeb%2Fexample-pytorch-jupyter&branch=main&builder=dockerfile&instance_type=gpu-nvidia-rtx-4000-sff-ada&env%5BJUPYTER_PASSWORD%5D=CHANGE_ME&ports=8000%3Bhttp%3B%2F)

Clicking on this button brings you to the Koyeb App creation page with the settings pre-configured to launch this application.  During configuration, either set or remove the `JUPYTER_PASSWORD` environment variable to control the authentication behavior of your service.

Once the service is deployed, you can access the PyTorch Jupyter Notebook by visiting your Koyeb Service's public URL.

_To modify this application example, you will need to fork this repository. Checkout the [fork and deploy](#fork-and-deploy-to-koyeb) instructions._

### Fork and deploy to Koyeb

If you want to customize and enhance this application, you need to fork this repository.

If you used the **Deploy to Koyeb** button, you can simply link your service to your forked repository to be able to push changes.  Alternatively, you can manually create the application as described below.

On the [Koyeb Control Panel](https://app.koyeb.com/), on the **Overview** tab, initiate the app creation and deployment process by clicking **Create Service** and then choosing **Web service**:

1. Select **GitHub** as the deployment source.
2. Select your repository from the menu.
3. In the **Instance** section, select the **GPU** category and then select your preferred GPU Instance type.
4. In the **Builder** section, choose **Dockerfile**.
5. In the **Environment variables** section, add a `JUPYTER_PASSWORD` environment variable set to your preferred password if you'd like to password-protect access to your Jupyter Notebook.
6. In the 
6. Click **Deploy**.

The repository will be pulled, built, and deployed on Koyeb.  Once the service is healthy, you can access your PyTorch Jupyter Notebook by visiting your Koyeb Service's public URL.

## Contributing

If you have any questions, ideas or suggestions regarding this application sample, feel free to open an [issue](https://github.com/koyeb/example-pytorch-jupyter/issues) or fork this repository and open a [pull request](https://github.com/koyeb/example-pytorch-jupyter/pulls).

## Contact

[Koyeb](https://www.koyeb.com) - [@gokoyeb](https://twitter.com/gokoyeb) - [Slack](http://slack.koyeb.com/)
