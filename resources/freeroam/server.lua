--- Triggered when a player join the server.
-- @param _client (number) The ID of the player who joined.
-- @param _name (string) The name of the player who joined.
event.add_handler("core:on_player_joined", function(_client, _name)

    -- Here we're sending a chat message to every connected players (-1) that a player joined the server.
    event.trigger_on_client("chat:add_message", -1, "<p><font color='#66ff66'>".._name.." (".._client..")</font> joined the game.</p>")
end)



--- Triggered when a player leave the server.
-- @param _client (number) The ID of the player who left.
-- @param _name (string) The name of the player who left.
event.add_handler("core:on_player_left", function(_client, _name)

    -- Here we're sending a chat message to every connected players (-1) that a player left the server.
    event.trigger_on_client("chat:add_message", -1, "<p><font color='#ff6666'>".._name.." (".._client..")</font> left the game.</p>")
end)