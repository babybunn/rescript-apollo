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
    | {data: Some({validators})} =>
      validators
      ->Belt.Array.map(({id, moniker}) => <Validator key={id->Belt.Int.toString} moniker />)
      ->React.array

    | {error: Some(_error)} => <span> {React.string("Error!")} </span>
    | {data: None, error: None} => <span> {"No data"->React.string} </span>
    }}
  </div>
}
