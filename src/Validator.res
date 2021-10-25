@react.component
let make = (~moniker) => {
  <div className="validator-wrapper">
    <ul className="validator-list">
    <li>
      <div className="validator-inner">
        <span className="validator-txt"> { moniker -> React.string } </span>
      </div>
    </li>
    </ul>
  </div>
}
