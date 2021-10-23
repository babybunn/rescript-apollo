@react.component
let make = () => {
  <ApolloClient.React.ApolloProvider client=Apollo.client>
    <div> <h2> {React.string("My first Apollo app rewrqwrw")} </h2> <Validators /> </div>
  </ApolloClient.React.ApolloProvider>
}
