# OPENPILOT NOT WORKING

> EXTREMLY IMPORTANT

- <https://github.com/pyenv/pyenv/issues/1737>

## My solution

First of all see the situation with this command

```python
poetry env list
```

If you have an output like this: ***project_name-QI_LjVaV-py3.9 (Activated)***

you may want to get rid of this env.

So you do the "deactivation" first:

```python
deactivate
```

and then the "remove" after :

```python
poetry env remove project_name-QI_LjVaV-py3.9
```

Now the same command:

```python
poetry env list
```

should return `nothing`.

```java
if issue: drop to src ? continue;
```

(_optional_) Then you do:

```python
which python3
```

(_optional_) and, if the version is ok, you use this same exact output of the path of python, to tell to poetry (Example):

```python
poetry env use /usr/bin/python3
```

`Do again`

```python
poetry env info
```

to be sure that is using the version of the python you want.

You can continue with

```python
poetry install
```

### walktrough images

- ![](../../../../z/aharo%202023-06-29%20at%209.08.32%20AM.png)

### POETRY INSTALL

> I strongly advise to use 3.8.#

- [use 3.8 for openpilot](https://stackoverflow.com/questions/59810276/poetry-doesnt-use-the-correct-version-of-python)

### PYTHON INSTALL MANUAL

- manual install for 3.8
  - <https://www.python.org/ftp/python/>
    - (remember this is different from poetry shell)
    - this step not **req**, but in-case...
