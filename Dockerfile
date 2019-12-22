FROM ruby:2.6.3

# 必要なパッケージのインストール（基本的に必要になってくるものだと思うので削らないこと）
RUN apt-get update -qq && \
    apt-get install -y build-essential \
        libpq-dev \
        nodejs

# 作業ディレクトリの作成、設定
RUN mkdir /progression-quiz
##作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
ENV APP_ROOT /progression-quiz
WORKDIR $APP_ROOT

# ホスト側（ローカル）のGemfileを追加する
COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfileのbundle install
RUN bundle install

COPY . $APP_ROOT
