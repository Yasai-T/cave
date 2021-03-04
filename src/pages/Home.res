@react.component
let make = () => {
  open MaterialUi

  let onClick = _e => {
    ReasonReactRouter.push("second")
  }

  <section>
    <div> {React.string("hello")} </div> <Button onClick> {React.string("to second page")} </Button>
  </section>
}
