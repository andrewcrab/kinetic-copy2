root = exports ? this
K = {}
root.K = K

class Core
    idCounter: 0
    constructor: ->
        @id = @idCounter++
        @children = {}
    add: (child) ->
        child.parent = this
        @children[child.id] =  child
    isParentOf: (child) ->
        yes if child in @children
    isChildOf: (parent) ->
        yes if parent is @parent
    

root.Core = Core