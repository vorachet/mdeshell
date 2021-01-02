mdeshell {#mdeshell .unnumbered}
========

mdeshell is a shell script based modeling environment that facilitates
the definition of XML-based EMF metamodels/models and the execution of
Model-2-Text transformation based on Model-Driven Engineering system
implemented by the Eclipse Emfatic and the Epsilon Flexmi/EGL/EGX.\
Project website: https://github.com/vorachet/mdeshell\
Maintainer: Vorachet Jaroensawas $<$vorachet\@gmail.com$>$
\@aotvorachet\
Limitation: mdeshell is tested on macOS 11.1 and Java 13.0.1. mdeshell
does not provide an environment for MS Windows users and tutorial
material at this time

Getting started {#getting-started .unnumbered}
===============

------------------------------------------------------------------------

      $ git clone https://github.com/vorachet/mdeshell.git
      $ cd mdeshell

------------------------------------------------------------------------

Running demo projects {#running-demo-projects .unnumbered}
=====================

Note that you will need a Java Runtime for executing a mdeshell shell
script

01_getting_started - A simplfied C program {#getting_started---a-simplfied-c-program .unnumbered}
------------------------------------------

------------------------------------------------------------------------

      $ cd mdeshell
      $ ./run.sh 

      Choose project number:
      1) 01_getting_started
      2) 02_my_shell_program
      #?  <------ let enter 1

      Project: 01_getting_started 

      Generating...

      Done! Note that location of generated files 
      will be specified by your .egx files

------------------------------------------------------------------------

This demo helps check the needed software runtime on your computer. By
checking the expected outputs, myproject.cpp and myproject.txt should be
generated

------------------------------------------------------------------------

      The expected output files

      mdeshell
        /projects
          /01_getting_started
            /generated/
              myproject.cpp
              myproject.txt

------------------------------------------------------------------------

02_my_shell_program - Interactive shell program {#my_shell_program---interactive-shell-program .unnumbered}
-----------------------------------------------

This demo demonstrates the basic application of the Epsilon EGL/EGX
language. You will practice to create your own shell script that comes
with interactive menus.

------------------------------------------------------------------------

      $ cd mdeshell
      $ ./run.sh 

      Choose project number:
      1) 01_getting_started
      2) 02_my_shell_program
      3) dashboard
      #? <------ let enter 1

      Project: 02_my_shell_program

      Generating...

      Done! Note that location of generated files
      will be specified by your .egx files

      The expected output files

      mdeshell
        /projects
          /02_my_shell_program
            /generated/
              MyUnixJobs.sh

      Test the script MyUnixJobs.sh

      $ sh MyUnixJobs.sh 
        1) showMyComputerName     3) findFiles
        2) showNetworkInterfaces  4) quit

------------------------------------------------------------------------

Usage Guide {#usage-guide .unnumbered}
===========

System files and directories {#system-files-and-directories .unnumbered}
----------------------------

------------------------------------------------------------------------

      mdeshell
        /libs/*                (1)
        /projects/*            (2)
        run.sh                 (3)

------------------------------------------------------------------------

-   \(1\) Java libraries required by mdeshell. (2) Root directory for
    your projects. (3) A mdeshell script that provides interactive
    command line for mdeshell workflow

Organization of user project files {#organization-of-user-project-files .unnumbered}
----------------------------------

------------------------------------------------------------------------

      mdeshell
        /projects
          /{YoutProjectName}  (1) USER-DEFINED NAME
            /inputs           (2) FIXED NAME
              metamodel.emf   (3) FIXED NAME
              *.flexmi        (4) USER-DEFINED NAME
              *.egl           (5) USER-DEFINED NAME
              *.egx           (6) USER-DEFINED NAME

------------------------------------------------------------------------

-   \(1\) Directory name of your project. (2) A fixed directory name
    (\"inputs\") containing user modeling files. (3) A fixed file name
    metamodel (\"metamodel.emf\") described by the Emfatic language. (4)
    One or more models (\*.flexmi) described by the Epsilon Flexmi
    language. (5) One or more generation templates (\*.egl) described by
    the Epsilon EGL language. (6) One or more generation task
    specifications (\*.egx) described by the Epsilon EGX language

The open source libraries mdeshell depends on {#the-open-source-libraries-mdeshell-depends-on .unnumbered}
=============================================

This section gives thanks to the open-source projects mdeshell depends
on.

### Emfatic - https://www.eclipse.org/emfatic  {#emfatic---httpswww.eclipse.orgemfatic .unnumbered}

Emfatic is a textual syntax for EMF Ecore metamodels.

### Epsilon - https://www.eclipse.org/epsilon {#epsilon---httpswww.eclipse.orgepsilon .unnumbered}

Epsilon is a family of Java-based scripting languages for automating
common model-based software engineering tasks, such as code generation,
model-to-model transformation, and model validation, that work out of
the box with EMF (including Xtext and Sirius), UML, Simulink, XML and
other types of models. Epsilon also includes Eclipse-based editors and
debuggers, convenient reflective tools for textual modeling and model
visualization, and Apache Ant tasks.

-   \(1\) Flexmi - https://www.eclipse.org/epsilon/doc/flexmi/ (2) The
    Epsilon Generation Language (EGL) -
    https://www.eclipse.org/epsilon/doc/egl/

-   \(3\) The Epsilon EGL Co-Ordination Language (EGX)

-   \- https://www.eclipse.org/epsilon/doc/egx/

### The open-source Java libraries and free Java libraries shared by this project {#the-open-source-java-libraries-and-free-java-libraries-shared-by-this-project .unnumbered}

      epsilon-1.5.1-kitchensink.jar, guava-23.0.jar,
      org.eclipse.core.resources_3.13.600.v20191122-2104.jar,
      org.eclipse.core.runtime-4.3.1.jar,
      org.eclipse.emf.emfatic.core_0.8.0.201507261242.jar,
      org.eclipse.equinox.common_3.10.600.v20191004-1420.jar,
      org.eclipse.equinox.registry_3.8.600.v20191017-2055.jar,
      org.eclipse.gymnast.runtime.core_0.8.0.201507261242.jar
      EGXRunner.jar, Emfatic2Ecore.jar, Flexmi2Xmi.jar
