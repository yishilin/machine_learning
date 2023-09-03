FROM jupyter/datascience-notebook

ENV JUPYTER_TOKEN=123456

RUN conda install --quiet --yes \
  'scikit-learn' \
  'pandas' \
  'matplotlib' \
  'seaborn' \
  'nltk' \
  'gensim' \
  'tensorflow' \
  'keras' \
  'xgboost' \
  'lightgbm' \
  'catboost' \
  'pydot' \
  'graphviz' \
  'pyarrow' \
  'fastparquet' \
  'feather-format' \
  'dask' \
  'distributed' \
  'bokeh' \
  'holoviews' \
  'hvplot' \
  'plotly' \
  'dash' \
  'dash-core-components' \
  'dash-html-components' \
  'dash-renderer' \
  'dash-table' \
  'jupyterlab'

USER jovyan

WORKDIR /home/jovyan/work
