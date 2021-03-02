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

  <>
    <AppBar>
      <Toolbar>
        <IconButton onClick={onOpen}> <MenuIcon /> </IconButton>
        <Typography variant=#H6> {React.string("Cave")} </Typography>
      </Toolbar>
    </AppBar>
    <SwipeableDrawer _open onOpen onClose>
      <List>
        <ListItem> <ListItemText> {React.string("first menu")} </ListItemText> </ListItem>
        <ListItem> <ListItemText> {React.string("second menu")} </ListItemText> </ListItem>
        <ListItem> <ListItemText> {React.string("third menu")} </ListItemText> </ListItem>
      </List>
    </SwipeableDrawer>
    children
  </>
}
