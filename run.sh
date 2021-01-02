#!/bin/bash
# Vorachet Jaroensawas <vorachet@gmail.com>

printf "\nChoose project number:\n"
cd projects
select d in * ; do test -n "$d" && break; echo ">>> Invalid Selection"; done
project=$d

cd ../

projectBasePath=$(pwd)/projects/${project}
mkdir -p ${projectBasePath}/outputs
emfaticPath=${projectBasePath}/inputs/metamodel.emf
firstGeneratedEcorePath=${projectBasePath}/inputs/metamodel.ecore
tempEcorePath=${projectBasePath}/outputs/metamodel.ecore
echo "\nProject: ${project} (${projectBasePath})"
java -jar libs/Emfatic2Ecore.jar ${emfaticPath} 
mv ${firstGeneratedEcorePath} ${projectBasePath}/outputs/
 
#echo "\tEMFATIC ${emfaticPath}"
#echo "\tGENERATED ECORE ${tempEcorePath}"

echo "\nGenerating..."

for flexmiFilePath in "$projectBasePath"/inputs/*.flexmi
do
  name=$(basename "$flexmiFilePath" ".flexmi")
  #echo "\tMODEL: ${flexmiFilePath}"
  #echo "\tGENERATED XMI: ${projectBasePath}/inputs/${name}.flexmi"
  java -jar libs/Flexmi2Xmi.jar ${tempEcorePath} ${flexmiFilePath} ${projectBasePath}/outputs/${name}.xmi
done


for egxProgramPath in "$projectBasePath"/inputs/*.egx
do
  #echo "\tEGX PROGRAM: ${egxProgramPath}"
  for xmiFilePath in "${projectBasePath}"/outputs/*.xmi
  do
    #echo "\tEGX PROGRAM tempEcorePath: ${tempEcorePath}"
    #echo "\tEGX PROGRAM xmiFilePath: ${xmiFilePath}"
    java -jar libs/EGXRunner.jar ${egxProgramPath} ${tempEcorePath} ${xmiFilePath}
  done
done

echo "\nDone! Note that location of generated files will be specified by your .egx files\n"

exit
