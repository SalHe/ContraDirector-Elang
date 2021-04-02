- (void)loadPPU
{
	// Reconstitute the entire PPU content //
	
	unsigned short ppuOffset;
	
	const unsigned char *ggcPtr;
	unsigned char ggc;
	const unsigned char *ggcDataPtr;
	
	unsigned char bank;
	unsigned short offset;
	
	BOOL tf;
	unsigned char b;
	int i;
	
	unsigned short grp[8] = { 0x08FD , 0x0905 , 0x0916 , 0x090D , 0x091E , 0x0926 , 0x092E , 0x0936 };
	unsigned short alt[8] = { 0x9252 , 0x093B , 0x0916 , 0x0940 , 0x091E , 0x0926 , 0x092E , 0x0936 };
	
	if (altGraphics) {
		if (io == 0) {
			[self loadPPUAlt];
			return;
		} else {
			ggcPtr = [rom bytes] + 0x1C000 + alt[cl] + expanded + 0x10;
		}
	} else {
		ggcPtr = [rom bytes] + 0x1C000 + grp[cl] + expanded + 0x10;
	}
	
	while (*ggcPtr != 0xFF) {
		
		ggc = *ggcPtr;
		ggcDataPtr = [rom bytes] + 0x1C950 + (ggc * 3) + expanded + 0x10;
		offset = (*ggcDataPtr) | (*(ggcDataPtr + 1) << 8);
		bank = *(ggcDataPtr + 2);
		ptr = [rom bytes] + ((bank & 0x7F) * 0x4000) + (offset - 0x8000) + 0x10;
		ppuOffset = *ptr | (*(ptr + 1) << 8);
		
		ptr += 2;
		
		if ((bank & 0x80) > 0) {
			tf = YES;
			ptr += 2;					// Related to mirroring...
		} else {
			tf = NO;
		}
		
		while (*ptr != 0xFF) {
			
			b = *ptr;
			
			if (b == 0xFF) break;
			if (b == 0x7F) {
				ptr++;
				ppuOffset = *ptr | (*(ptr + 1) << 8);
				ptr += 2;
				continue;
			}
			
			ptr++;
			if (b & 0x80) {	// Literal
				for (i=0; i<(b & 0x7F); i++) {
					if (tf) ppuMem[ppuOffset] = [self flipByte:*ptr];
					else ppuMem[ppuOffset] = *ptr;
					ptr++;
					ppuOffset++;
				}
			} else {	// RLE
				for (i=0; i<b; i++) {
					if (tf) ppuMem[ppuOffset] = [self flipByte:*ptr];
					else ppuMem[ppuOffset] = *ptr;
					ppuOffset++;
				}
				ptr++;
			}
		}
		
		ggcPtr++;
	}
}