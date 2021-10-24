@react.component
let make = () => {
  <ApolloClient.React.ApolloProvider client=Apollo.client>
    <div> <Validators /> </div>
  </ApolloClient.React.ApolloProvider>
}
