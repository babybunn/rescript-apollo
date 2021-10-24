@react.component
let make = (~validators) => {
  let allValidators = Belt.Array.mapWithIndex(validators, (ind, validator) => {
    let monikerName = validator["moniker"]
    <li key={Belt.Int.toString(ind)}>
      <div className="validator-inner">
        <span className="validator-txt"> {monikerName} </span>
      </div>
    </li>
  })
  <div className="validator-wrapper">
    <ul className="validator-list"> {React.array(allValidators)} </ul>
  </div>
}
