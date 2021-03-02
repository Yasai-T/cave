@react.component
let make = (~children: React.element) => {
  open MaterialUi

  <AppBar> children </AppBar>
}
