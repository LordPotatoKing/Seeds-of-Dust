// Feather disable all
/// Returns the metadata for the given node from the given source
///
/// @param aliasName
/// @param nodeTitle

function ChatterboxSourceGetNodeMetadata(_aliasName, _nodeTitle)
{
    _aliasName = __ChatterboxReplaceBackslashes(_aliasName);
    
    if (!ChatterboxIsLoaded(_aliasName))
    {
        __ChatterboxError("\"", _aliasName, "\" has not been loaded");
        return [];
    }
    
    var _node = global.chatterboxFiles[? _aliasName].FindNode(_nodeTitle);
    if (_node == undefined)
    {
        __ChatterboxError("Node \"", _nodeTitle, "\" does not exist in \"", _aliasName, "\"");
    }
    
    return _node.metadata;
}
