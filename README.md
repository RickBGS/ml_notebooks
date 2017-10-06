# Kaggle competition

## Projects

### Titanic

### San Francisco Crime

### Sberbank house price

## How to run

### Docker

1.  Build an image.

    ```
    docker build -t ml_notebooks .
    ```

2.  Run it as a container.

    ```
    docker run -i -t -p 8888:8888 --name ml --rm  ml_notebooks
    ```

    Alternatively, run it with a volume so changes inside the container are reflected on your local folder.

    ```
    docker run -i -t -p 8888:8888 -v $(pwd):/opt/notebooks --rm --name ml ml_notebooks
    ```

> Containers will be automatically destroyed when stopped due to the `--rm` flag.
>
> To remove the image:
>
> ```
> docker rmi ml_notebooks
> ```
