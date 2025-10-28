# USB_2025_FLEX

## Installing Flex and GCC

To install **Flex** and **GCC**, execute the following commands in your terminal:

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install flex gcc -y
````
## Verifying the Installation

Run the following commands to check that both tools were installed correctly:
```
flex --version
gcc --version
````
## Compiling and Running the Code

To compile and execute your lexical analyzer, use the following commands:
```
flex analizador_lex.l
gcc lex.yy.c -o <output_name>
./<output_name>

```