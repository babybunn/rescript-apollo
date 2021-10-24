module SubscribeValidator = %graphql(`
    subscription allValidator {
		validators {
            id
            moniker
        }
    }
`)

@react.component
let make = () => {
  let queryResult = SubscribeValidator.use()
  <div>
    <h2> {"All Validators"->React.string} </h2>
    {switch queryResult {
    | {loading: true} => <span> {React.string("Loading...")} </span>
    | {data: Some({validators})} => <Validator validators={validators} />
    | {error: Some(_error)} => <span> {React.string("Error!")} </span>
    }}
  </div>
}
