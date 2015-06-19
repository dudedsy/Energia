/*
 * This file was generated by linkcmd_gnu.xdt from the ti.platforms.emt3200 package.
 */

__STACK_SIZE = 0x400;
__TI_STACK_SIZE = __STACK_SIZE;

INPUT(
    ../../configPkg/package/cfg/energia_pm4g.om4g
    ../../lib/cc3200.m4g.lib
    lib/RedBearLab_CC3200.m4g.lib
    ti/drivers/lib/drivers_ccware.am4g
    ti/drivers/ports/tirtos/lib/tirtosport.am4g
    ti/drivers/lib/power_cc3200_tirtos.am4g
    ti/runtime/heaps/lib/ti.runtime.heaps.am4g
    ti/sysbios/fatfs/lib/release/ti.sysbios.fatfs.am4g
    src/sysbios/sysbios.am4g
    gnu/targets/arm/rtsv7M/lib/gnu.targets.arm.rtsv7M.am4g
    gnu/targets/arm/rtsv7M/lib/boot.am4g
    gnu/targets/arm/rtsv7M/lib/syscalls.am4g
)

/*
 * symbolic aliases for static instance objects
 */
xdc_runtime_Startup__EXECFXN__C = 1;
xdc_runtime_Startup__RESETFXN__C = 1;
TSK_idle = ti_sysbios_knl_Task_Object__table__V + 0;

INCLUDE "cc3200.lds"

SECTIONS {
        .bootVecs (DSECT) : {*(.bootVecs)} 


    /*
     * Linker command file contributions from all loaded packages:
     */
    
/* Content from ti.sysbios.family.arm (ti/sysbios/family/arm/linkcmd.xdt): */

/* Content from ti.sysbios.rts (ti/sysbios/rts/linkcmd.xdt): */

/* Content from ti.sysbios.family.arm.m3 (ti/sysbios/family/arm/m3/linkcmd.xdt): */
    _intvecs_base_address = 536887296;
ti_sysbios_family_arm_m3_Hwi_nvic = 0xe000e000;

/* Content from ti.sysbios.family.arm.cc32xx (ti/sysbios/family/arm/cc32xx/linkcmd.xdt): */


    __TI_STACK_BASE = __stack;
}

SECTIONS {
    /* create an empty sections at the end of SRAM and FLASH */
    .empty : { *(.empty) KEEP(*(xdc.meta)) } > SRAM
    .emptyFlash : { *(.emptyFlash) } > FLASH

    /* the UNUSED symbols define reusable heap memory */
    __UNUSED_SRAM_start__ = ADDR(.empty);
    __UNUSED_SRAM_end__   = ORIGIN(SRAM) + LENGTH(SRAM);
    __SRAM_LENGTH__       = LENGTH(SRAM);
    
    __UNUSED_FLASH_start__ = ADDR(.emptyFlash);
    __UNUSED_FLASH_end__   = ORIGIN(FLASH) + LENGTH(FLASH);
    __FLASH_LENGTH__       = LENGTH(FLASH);
}

ENTRY(_c_int00)

/* function aliases */
xdc_runtime_System_asprintf_va__E = xdc_runtime_System_asprintf_va__F;
xdc_runtime_System_snprintf_va__E = xdc_runtime_System_snprintf_va__F;
xdc_runtime_System_printf_va__E = xdc_runtime_System_printf_va__F;
xdc_runtime_System_aprintf_va__E = xdc_runtime_System_aprintf_va__F;
xdc_runtime_System_sprintf_va__E = xdc_runtime_System_sprintf_va__F;

