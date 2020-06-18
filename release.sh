printf "Creating installation package\n"
printf "Checklist:\n"
printf "* Angular Admin Version Check. \n"
printf "* Janusec Version Check. \n"
version=`./janusec --version`
dist_dir="./dist/janusec-${version}/"
mkdir -p ${dist_dir}
\cp -f ./janusec ${dist_dir}
\cp -f ./3rdpartylicenses.txt ${dist_dir}
rm -rf ${dist_dir}static
\cp -f ./robots.txt ./static/
\cp -r ./static ${dist_dir}
rm -rf ${dist_dir}static/cdncache
\cp -f ./scripts/* ${dist_dir}
cd ./dist/
tar zcf ./janusec-${version}.tar.gz ./janusec-${version}
rm -rf ./janusec-${version}
\cp -f ./janusec-${version}.tar.gz ./janusec-latest.tar.gz
cd ..
printf "Done!\n"
