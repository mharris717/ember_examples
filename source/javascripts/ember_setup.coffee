window.App = Em.Application.create()

App.Router.map ->
  @resource "examples", ->
    @resource "example", {path: ":example_id"}

App.Store = DS.Store.extend
  revision: 11
  adapter: 'DS.FixtureAdapter'

App.Example = DS.Model.extend
  name: DS.attr("string")
  repo_url: DS.attr("string")

App.Example.FIXTURES = [
  {id: 1, name: "Todo App"},
  {id: 2, name: "Chat App"}
]

App.ExamplesRoute = Em.Route.extend
  model: ->
    App.Example.find()

