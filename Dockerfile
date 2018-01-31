FROM strawberrypie/pytorch-cuda8:v0.3 
RUN git clone https://github.com/OpenNMT/OpenNMT-py.git && cd OpenNMT-py && pip install -r requirements.txt && python setup.py install 
RUN curl -s -L https://gist.github.com/strawberrypie/699aa1fdd43c6816497a84b707e59d28/raw -o ~/run.sh && chmod +x ~/run.sh 
RUN curl -s -L https://gist.github.com/strawberrypie/ba1f630f17d59f71862417565ceaa6f8/raw -o ~/split_parallel_corpus.py && chmod +x ~/split_parallel_corpus.py 
