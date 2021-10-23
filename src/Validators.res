module SubscribeEpisode = %graphql(`
    subscription allValidator {
		validators {
            id
            moniker
        }
    }
`)

@react.component
let make = () => {
  let queryResult = SubscribeEpisode.use()
  Js.log(queryResult)
  <div />
}
