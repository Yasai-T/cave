@react.component
let make = () => {
  open MaterialUi

  let url = ReasonReactRouter.useUrl()

  let onSearchClick = _ => {
    ReasonReactRouter.push("/second?name=test")
  }

  let onHashClick = _ => {
    ReasonReactRouter.push("/second#hash")
  }

  <div>
    <Typography> "second page" </Typography>
    <Button onClick={onSearchClick}> <Typography> "?name=test" </Typography> </Button>
    <Button onClick={onHashClick}> <Typography> "#hash" </Typography> </Button>
    <Button onClick={_ => ReasonReactRouter.push("second/third")}>
      <Typography> "second/third" </Typography>
    </Button>
    <TableContainer>
      <Table>
        <TableHead>
          <TableRow>
            <TableCell> "patah" </TableCell>
            <TableCell> "hash" </TableCell>
            <TableCell> "search" </TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          <TableRow>
            <TableCell>
              {url.path
              ->Belt.List.toArray
              ->Belt.Array.map(item => <Typography key={item}> {item ++ ","} </Typography>)}
            </TableCell>
            <TableCell> {url.hash} </TableCell>
            <TableCell> {url.search} </TableCell>
          </TableRow>
        </TableBody>
      </Table>
    </TableContainer>
  </div>
}
