## Tools requirements

* eget - Easy installer for static github binaries
  - [github](https://github.com/zyedidia/eget)
* tar
* curl
* wget

## Usage

```bash
$just -f <justfile.win> # Either of these 3
$just -f <justfile.lin> # Either of these 3
$just -f <justfile.mac> # Either of these 3
$just -f <justfile.mac> tools_common # Install all common utils
$just -f <justfile.mac> --choose # Choose from all available options
```
