"use strict";

const Apollo = require('apollo-server');

const typeDefs = Apollo.gql("type Query { books: String }");

const resolvers = {
  Query: {
    books: function() { return "hey!" }
  }
};

const server = new Apollo.ApolloServer({ typeDefs: typeDefs, resolvers: resolvers });

exports.addImpl = function(a, b) {
  return a + b;
}
