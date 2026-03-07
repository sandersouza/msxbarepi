#include "kernel.h"
#include <circle/startup.h>

int main(void)
{
	CComboKernel kernel;
	if (!kernel.Initialize())
	{
		halt();
		return EXIT_HALT;
	}

	const TComboShutdownMode shutdown_mode = kernel.Run();

	if (shutdown_mode == ComboShutdownReboot)
	{
		reboot();
		return EXIT_REBOOT;
	}

	halt();
	return EXIT_HALT;
}