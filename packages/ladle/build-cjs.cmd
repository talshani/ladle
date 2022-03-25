mkdir cjs\lib
xcopy lib\app cjs\lib\app\ /E/I/Y
call yarn babel lib\cli --out-dir cjs\lib\cli --plugins="@babel/plugin-transform-modules-commonjs"
call yarn babel lib\shared --out-dir cjs\lib\shared --plugins="@babel/plugin-transform-modules-commonjs"
call yarn babel api --out-dir cjs\api --plugins="@babel/plugin-transform-modules-commonjs"
copy lib\shared\types.ts cjs\lib\shared\types.ts
copy lib\shared\default-config.js cjs\lib\app\src\def-config.ts
call node .\build-cjs.js
