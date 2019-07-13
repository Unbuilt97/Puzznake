///scr_get_dir()

switch(keyboard_key)
{
    case vk_up:
    case ord("W"):
        return e_Dir.UP;

    case vk_down:
    case ord("S"):
        return e_Dir.DOWN;

    case vk_left:
    case ord("A"):
        return e_Dir.LEFT;

    case vk_right:
    case ord("D"):
        return e_Dir.RIGHT;

    default:
        return e_Dir.NONE;
}
