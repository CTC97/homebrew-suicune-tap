## <img width="64" height="64" alt="suicune" src="https://github.com/user-attachments/assets/c538753c-3c3d-455a-a399-9c908e29326c" /> suicune [an approachable c++ game engine] <img width="64" height="64" alt="suicune" src="https://github.com/user-attachments/assets/c538753c-3c3d-455a-a399-9c908e29326c" />

### Installation:
```
brew tap ctc97/suicune-tap
brew install suicune
```

### Creating a project:
Running the following command:
```
suicune_create myproject
```
Will create the following tree:
```
myproject
├── Makefile
├── main.cpp
├── res
├── src
│   ├── main_scene.cpp
│   └── main_scene.hpp
└── suicune_src
    ├── ...
```
You can then build your project by running:
```
make
build/suicune
```

### More info:
The most up to date source code, included in all projects under the `suicune_src` directory, and its documentation are available at [ctc97/suicune](https://github.com/CTC97/suicune).




