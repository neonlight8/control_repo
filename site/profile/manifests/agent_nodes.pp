class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.ap-southeast-2.compute.internal':}
  dockeragent::node {'db.ap-southeast-2.compute.internal':}
}
