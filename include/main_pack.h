#ifndef PMDSKY_MAIN_PACK_H
#define PMDSKY_MAIN_PACK_H

#include <files/pack.h>

void OpenPackFile(struct pack_file_opened *pack_file,char *file_path);
u32 GetFileLengthInPack(struct pack_file_opened* pack_file, u32 file_index);
u32 LoadFileInPack(struct pack_file_opened *pack_file,void *output_buffer,u32 file_index);

#endif //PMDSKY_MAIN_PACK_H
