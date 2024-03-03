ARG PYTHON_VERSION=3.11.4
FROM python:${PYTHON_VERSION}-slim as base

#RUN python -m pip install -r requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    python -m pip install -r requirements.txt

# Copy the source code into the container.
COPY . .

EXPOSE 5000

CMD python3 -m flask run --host=0.0.0.0

