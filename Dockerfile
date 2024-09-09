FROM ruby:3.2.5
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

# Update and install packages
RUN apt-get update -qq \
   && apt-get install -y \
      ca-certificates \
      curl \
      gnupg \
      build-essential \
      libpq-dev \
      libssl-dev \
      python3 \
      cron \
   && rm -rf /var/lib/apt/lists/*

# Add NodeSource repository and Yarn repository
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g yarn

# Create app directory
RUN mkdir /v1_storage_deck_app
WORKDIR /v1_storage_deck_app

# Install Bundler
RUN gem install bundler:2.3.17

# Copy Gemfile and Gemfile.lock
COPY Gemfile /v1_storage_deck_app/Gemfile
COPY Gemfile.lock /v1_storage_deck_app/Gemfile.lock
COPY yarn.lock /v1_storage_deck_app/yarn.lock

# Install gems and Yarn packages
RUN bundle install
RUN yarn install

# Copy the rest of the application code
COPY . /v1_storage_deck_app
