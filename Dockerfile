# Use the official Ruby image from the Docker Hub
FROM ruby:3.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose the application port
EXPOSE 4567

# Command to run the Sinatra application
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
