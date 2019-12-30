FROM ruby:2.6.3

# 必要なパッケージのインストール（基本的に必要になってくるものだと思うので削らないこと）
# Rails6でwebpackerが搭載され、yarnのインストールが必要になった
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# 作業ディレクトリの作成、設定
RUN mkdir /app
##作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
ENV APP_ROOT /app
WORKDIR $APP_ROOT

# ホスト側（ローカル）のGemfileを追加する
COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfileのbundle install
RUN bundle install

COPY . $APP_ROOT
