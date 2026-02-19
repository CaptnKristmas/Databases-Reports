# Homework 1 - Open Source Data Engineering Tools

This homework serves two purposes:

1. provide the student an opportunity to learn more about data engineering tools of their interest,

2. introduce the student to the workflow used to submit assignments in this class.

[Here is a link](https://virginiacommonwealth.instructure.com/courses/122236/assignments/1241133) to the homework assignment in Canvas.

## Sources

[Medium](https://medium.com/@ApacheDolphinScheduler/open-source-data-engineering-landscape-2025-db53ce18d53d) For main source of information

[GitHub](https://github.com/zalando/zalando-howto-open-source/blob/master/READMEtemplate.md#readme) For README template

[Google AI](google.com) For further explanations of categories.

[ChatGPT](https://chat.openai.com/) For further explanations of categories.

[Quarto](https://quarto.org/docs/authoring/markdown-basics.html) For Quarto markdown syntax and usage.

## Instructions

Your report should be stored in the ``./report`` folder.  Any assets (PNG, JPG, etc.) should be stored underneath in ``./report/assets``.

First make sure that quarto is installed on your system. Test by attempting to render the sample QMD files in the ``./samples`` folder.  If you can render those files, you should be able to render the ``report.qmd`` file in the ``./reports`` folder.

You may do this by running the ***quarto render*** command to render all files in the ``./samples`` folder, or by using the ***quarto render (filename)*** command, replacing filename with your filename and removing the brackets, to render individual files.

In order to to transform the ``report.qmd`` file into a ``report.html`` file, you will need to use one of the ***quarto render*** commands.
 
FURTHER, you must modify this README to make it your own:

* GITHUB provides [good explanations of README.md'(https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes) files,

* Here is a list of example *awesome* README files: <https://github.com/matiassingers/awesome-readme>

Part of your score for this assignment is how well you update/modify this README.

## Files, Folders and Error Avoidance

``./reports`` - contains the scaffold QMD file homework 1. Your job is to modify this document and render it to *html*.  The *html* file will
be created in the same ``./reports`` folder.

``./samples`` - contains several QMD files. Your job is to render these files and exam the output.  Output for these files will be in the ``./docs`` folder.

``./docs`` - contains resulting files from quarto render operations.  *You should NEVER directly store files in* ``/docs.`` Rather, you should let Quarto maintain the contents of the ``./docs`` folder using settings in the quarto project file, ``_quarto.yml``.