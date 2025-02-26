cd %1
del *.spv
for %%f in (*.fbx) do (
    echo Converting %%f to %%~nf.gltf
    FBX2glTF-windows-x86_64.exe -i "%%f" -e -o "./gltfs/%%~nf.gltf"
)
