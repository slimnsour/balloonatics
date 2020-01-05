// Called by oMenu step event, executes menu option
switch(mpos)
{
    case 0:
    {
        room_goto_next();
        break;
    }
    case 2:
    {
        game_end()
        break;
    }
    default: break;
}
