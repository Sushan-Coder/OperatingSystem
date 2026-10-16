void kernel_main(void)
{
    char *video_memory = (char *)0xB8000;
    video_memory[0] = 'X';
    video_memory[1] = 0x0F;
}
