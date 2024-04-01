# CUDA Application Docker Container
######## warning !!!!!  ######
##  THIS app will not stop it's self until you stop it! ###
This README provides instructions on how to build and run a Docker container for the CUDA application `add.v3`, designed to run on an NVIDIA DGX system with H100 GPUs.

## Prerequisites

- NVIDIA Docker runtime must be installed on your DGX system. This enables Docker to access the NVIDIA GPUs.
- Ensure you have Docker installed on your system.
- Make sure the CUDA version of the Docker image is compatible with your NVIDIA GPU drivers.

## Building the Docker Image

1. **Clone the Repository** (if applicable)

   If the application and Dockerfile are hosted in a repository, first clone the repository:
   
  $ git clone https://github.com/amihai4by/Gpu-Runs
  
3. **Navigate to the Directory**

Change directory to where the `Dockerfile` is located:

  $ cd Gpu-Runs
  
3. **Build the Docker Image**

Run the following command to build the Docker image:

  $ docker build -t cuda-app .
  
This command builds a Docker image with the tag `cuda-app`.

## Running the Docker Container

To run the Docker container with access to all 8 GPUs:

  $ docker run --gpus all cuda-app /app/run_and_wait.sh 1200
  
This command runs the `cuda-app` Docker image, enabling it to access all available GPUs on the host machine.

## Customizing the Execution

- If you need to run the container with access to a specific number of GPUs, you can modify the `--gpus` flag. For example, to use only 4 GPUs, you would use `docker run --gpus 4 cuda-app`.
- You can modify the `CMD` instruction in the `Dockerfile` if you need to pass specific arguments to your application.

## Troubleshooting

- If you encounter issues related to GPU access, ensure that the NVIDIA Docker runtime is correctly installed and configured.
- For any errors related to the application execution, ensure that the application `add.v.3` is compatible with the CUDA version in the Docker image and is correctly set up to run on multiple GPUs.

For further assistance, please refer to the documentation of the application, Docker, and NVIDIA Docker runtime.
