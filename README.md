# Tools on my self-learning

## Use case
- After finding a program, that program may have multiple Top Level Domain
- You can put the top level domain to a file
- Then you can find the multiple subdomains using `myfindomain.sh`
- The subdomains will be stored in a txt file with the domain name (For example: finding subdomains for google.com it will store the subdomains in google.com.txt)
- After that you can use `curlscript.sh`
- The `curlscript.sh` will simply curl all the the live subdomains and keep the curled domains in a `subdomain.txt` file in output directory

## Usage
```
git clone https://github.com/sahildari/tools

cd tools

chmod +x *.sh
```


### To find subdomains of multiple top level domains:
```
cat top-level-domain.txt | bash myfindomain.sh
```

### To curl all the we subdomains so that after that you don't have to visit every single site. Just use the grep command to see if you can find anything intersting
```
cat alive.txt| ./curlscript.sh
```

## Example for Manual searching :

```
grep -irEn '<title>(.*)</title>' 
```
To get the titles and checking out the webpages that interests you

Happy Hacking!

## Acknowledgements
I have created my tools using opensource community tools

> - [CURL](https://github.com/curl/curl)
> - [FINDOMAIN](https://github.com/Findomain/)
