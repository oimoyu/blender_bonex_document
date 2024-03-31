# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "Blender Bonex Document"
copyright = "2024, oimoyu"
author = "oimoyu"
release = "1.0.0"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ["sphinx.ext.githubpages"]

templates_path = ["_templates"]
exclude_patterns = []

html_show_sourcelink = False
locale_dirs = ["locale/"]  # path is example but recommended.
gettext_compact = False  # optional.
html_context = {"languages": [["en", "English"], ["zh", "中文"], ["ja", "日本語"]]}
# 如果设置为 True，则不会生成 _sources 文件夹，用于查看源代码
html_copy_source = False

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = "sphinx_rtd_theme"
html_static_path = ["_static"]
