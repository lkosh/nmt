FROM strawberrypie/pytorch-cuda8:v0.3 
RUN git clone https://github.com/OpenNMT/OpenNMT-py.git && cd OpenNMT-py && pip install -r requirements.txt && python setup.py install 
RUN curl -s -L https://gist.github.com/lkosh/29ca9279cc50e71380f2480ccae2353a/raw -o ~/run.sh && chmod +x ~/run.sh 
RUN curl -s -L https://gist.github.com/strawberrypie/ba1f630f17d59f71862417565ceaa6f8/raw -o ~/split_parallel_corpus.py && chmod +rx ~/split_parallel_corpus.py     
