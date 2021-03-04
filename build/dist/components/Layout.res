@react.component
let make = (~children: React.element) => {
  open MaterialUi

  let (_open, setOpen) = React.useState(_ => false)

  let onOpen = _e => {
    setOpen(_ => true)
  }

  let onClose = _e => {
    setOpen(_ => false)
  }

  let onTitleClick = _ => {
    ReasonReactRouter.push("/")
  }

  <>
    <AppBar position=#Sticky>
      <Toolbar>
        <IconButton onClick={onOpen}> <MenuIcon /> </IconButton>
        <Button onClick={onTitleClick}>
          <Typography variant=#H6> {React.string("Cave")} </Typography>
        </Button>
      </Toolbar>
    </AppBar>
    <SwipeableDrawer _open onOpen onClose>
      <List>
        <ListItem> <ListItemText> {React.string("first menu")} </ListItemText> </ListItem>
        <Divider />
        <ListItem> <ListItemText> {React.string("second menu")} </ListItemText> </ListItem>
        <Divider />
        <ListItem> <ListItemText> {React.string("third menu")} </ListItemText> </ListItem>
      </List>
    </SwipeableDrawer>
    children
  </>
}
