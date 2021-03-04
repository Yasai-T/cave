@react.component
let make = () => {
  let url = ReasonReactRouter.useUrl()

  <Layout>
    {switch url.path {
    | list{"second"} | list{"second", "third"} => <SecondPage />
    | _ => <Home />
    }}
  </Layout>
}
