#ifdef __linux__

/***************************** Include Files *********************************/
#include "example.h"

/***************** Macros (Inline Functions) Definitions *********************/
#define MAX_UIO_PATH_SIZE       256
#define MAX_UIO_NAME_SIZE       64
#define MAX_UIO_MAPS            5
#define UIO_INVALID_ADDR        0

/**************************** Type Definitions ******************************/
typedef struct {
    u32 addr;
    u32 size;
} example_uio_map;

typedef struct {
    int  uio_fd;
    int  uio_num;
    char name[ MAX_UIO_NAME_SIZE ];
    char version[ MAX_UIO_NAME_SIZE ];
    example_uio_map maps[ MAX_UIO_MAPS ];
} example_uio_info;

/***************** Variable Definitions **************************************/
static example_uio_info uio_info;

/************************** Function Implementation *************************/
static int line_from_file(char* filename, char* linebuf) {
    char* s;
    int i;
    FILE* fp = fopen(filename, "r");
    if (!fp) return -1;
    s = fgets(linebuf, MAX_UIO_NAME_SIZE, fp);
    fclose(fp);
    if (!s) return -2;
    for (i=0; (*s)&&(i<MAX_UIO_NAME_SIZE); i++) {
        if (*s == '\n') *s = 0;
        s++;
    }
    return 0;
}

static int uio_info_read_name(example_uio_info* info) {
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/name", info->uio_num);
    return line_from_file(file, info->name);
}

static int uio_info_read_version(example_uio_info* info) {
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/version", info->uio_num);
    return line_from_file(file, info->version);
}

static int uio_info_read_map_addr(example_uio_info* info, int n) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    info->maps[n].addr = UIO_INVALID_ADDR;
    sprintf(file, "/sys/class/uio/uio%d/maps/map%d/addr", info->uio_num, n);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%x", &info->maps[n].addr);
    fclose(fp);
    if (ret < 0) return -2;
    return 0;
}

static int uio_info_read_map_size(example_uio_info* info, int n) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/maps/map%d/size", info->uio_num, n);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%x", &info->maps[n].size);
    fclose(fp);
    if (ret < 0) return -2;
    return 0;
}

int example_Initialize(example *InstancePtr, const char* InstanceName) {
 example_uio_info *InfoPtr = &uio_info;
 struct dirent **namelist;
    int i, n;
    char* s;
    char file[ MAX_UIO_PATH_SIZE ];
    char name[ MAX_UIO_NAME_SIZE ];
    int flag = 0;

    assert(InstancePtr != NULL);

    n = scandir("/sys/class/uio", &namelist, 0, alphasort);
    if (n < 0)  return XST_DEVICE_NOT_FOUND;
    for (i = 0;  i < n; i++) {
     strcpy(file, "/sys/class/uio/");
     strcat(file, namelist[i]->d_name);
     strcat(file, "/name");
        if ((line_from_file(file, name) == 0) && (strcmp(name, InstanceName) == 0)) {
            flag = 1;
            s = namelist[i]->d_name;
            s += 3; // "uio"
            InfoPtr->uio_num = atoi(s);
            break;
        }
    }
    if (flag == 0)  return XST_DEVICE_NOT_FOUND;

    uio_info_read_name(InfoPtr);
    uio_info_read_version(InfoPtr);
    for (n = 0; n < MAX_UIO_MAPS; ++n) {
        uio_info_read_map_addr(InfoPtr, n);
        uio_info_read_map_size(InfoPtr, n);
    }

    sprintf(file, "/dev/uio%d", InfoPtr->uio_num);
    if ((InfoPtr->uio_fd = open(file, O_RDWR)) < 0) {
        return XST_OPEN_DEVICE_FAILED;
    }

    // NOTE: slave interface '' should be mapped to uioX/map0
    InstancePtr->example_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[0].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 0 * getpagesize());
    assert(InstancePtr->example_BaseAddress);
    // NOTE: slave interface 'cav1_nco_phase_adj' should be mapped to uioX/map1
    InstancePtr->example_cav1_nco_phase_adj_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[1].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 1 * getpagesize());
    assert(InstancePtr->example_cav1_nco_phase_adj_BaseAddress);
    // NOTE: slave interface 'cav1_nco_phase_reset' should be mapped to uioX/map2
    InstancePtr->example_cav1_nco_phase_reset_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[2].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 2 * getpagesize());
    assert(InstancePtr->example_cav1_nco_phase_reset_BaseAddress);
    // NOTE: slave interface 'cav1_p1_chan_sel' should be mapped to uioX/map3
    InstancePtr->example_cav1_p1_chan_sel_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[3].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 3 * getpagesize());
    assert(InstancePtr->example_cav1_p1_chan_sel_BaseAddress);
    // NOTE: slave interface 'cav1_p1_window_start' should be mapped to uioX/map4
    InstancePtr->example_cav1_p1_window_start_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[4].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 4 * getpagesize());
    assert(InstancePtr->example_cav1_p1_window_start_BaseAddress);
    // NOTE: slave interface 'cav1_p1_window_stop' should be mapped to uioX/map5
    InstancePtr->example_cav1_p1_window_stop_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[5].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 5 * getpagesize());
    assert(InstancePtr->example_cav1_p1_window_stop_BaseAddress);
    // NOTE: slave interface 'cav1_p2_amp_out' should be mapped to uioX/map6
    InstancePtr->example_cav1_p2_amp_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[6].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 6 * getpagesize());
    assert(InstancePtr->example_cav1_p2_amp_out_BaseAddress);
    // NOTE: slave interface 'cav1_p2_chan_sel' should be mapped to uioX/map7
    InstancePtr->example_cav1_p2_chan_sel_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[7].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 7 * getpagesize());
    assert(InstancePtr->example_cav1_p2_chan_sel_BaseAddress);
    // NOTE: slave interface 'cav1_p2_comparison_i' should be mapped to uioX/map8
    InstancePtr->example_cav1_p2_comparison_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[8].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 8 * getpagesize());
    assert(InstancePtr->example_cav1_p2_comparison_i_BaseAddress);
    // NOTE: slave interface 'cav1_p2_comparison_phase' should be mapped to uioX/map9
    InstancePtr->example_cav1_p2_comparison_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[9].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 9 * getpagesize());
    assert(InstancePtr->example_cav1_p2_comparison_phase_BaseAddress);
    // NOTE: slave interface 'cav1_p2_comparison_q' should be mapped to uioX/map10
    InstancePtr->example_cav1_p2_comparison_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[10].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 10 * getpagesize());
    assert(InstancePtr->example_cav1_p2_comparison_q_BaseAddress);
    // NOTE: slave interface 'cav1_p2_dc_freq' should be mapped to uioX/map11
    InstancePtr->example_cav1_p2_dc_freq_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[11].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 11 * getpagesize());
    assert(InstancePtr->example_cav1_p2_dc_freq_BaseAddress);
    // NOTE: slave interface 'cav1_p2_dc_img' should be mapped to uioX/map12
    InstancePtr->example_cav1_p2_dc_img_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[12].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 12 * getpagesize());
    assert(InstancePtr->example_cav1_p2_dc_img_BaseAddress);
    // NOTE: slave interface 'cav1_p2_dc_real' should be mapped to uioX/map13
    InstancePtr->example_cav1_p2_dc_real_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[13].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 13 * getpagesize());
    assert(InstancePtr->example_cav1_p2_dc_real_BaseAddress);
    // NOTE: slave interface 'cav1_p2_if_amp' should be mapped to uioX/map14
    InstancePtr->example_cav1_p2_if_amp_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[14].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 14 * getpagesize());
    assert(InstancePtr->example_cav1_p2_if_amp_BaseAddress);
    // NOTE: slave interface 'cav1_p2_if_i' should be mapped to uioX/map15
    InstancePtr->example_cav1_p2_if_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[15].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 15 * getpagesize());
    assert(InstancePtr->example_cav1_p2_if_i_BaseAddress);
    // NOTE: slave interface 'cav1_p2_if_phase' should be mapped to uioX/map16
    InstancePtr->example_cav1_p2_if_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[16].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 16 * getpagesize());
    assert(InstancePtr->example_cav1_p2_if_phase_BaseAddress);
    // NOTE: slave interface 'cav1_p2_if_q' should be mapped to uioX/map17
    InstancePtr->example_cav1_p2_if_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[17].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 17 * getpagesize());
    assert(InstancePtr->example_cav1_p2_if_q_BaseAddress);
    // NOTE: slave interface 'cav1_p2_integrated_i' should be mapped to uioX/map18
    InstancePtr->example_cav1_p2_integrated_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[18].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 18 * getpagesize());
    assert(InstancePtr->example_cav1_p2_integrated_i_BaseAddress);
    // NOTE: slave interface 'cav1_p2_integrated_q' should be mapped to uioX/map19
    InstancePtr->example_cav1_p2_integrated_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[19].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 19 * getpagesize());
    assert(InstancePtr->example_cav1_p2_integrated_q_BaseAddress);
    // NOTE: slave interface 'cav1_p2_phase_out' should be mapped to uioX/map20
    InstancePtr->example_cav1_p2_phase_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[20].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 20 * getpagesize());
    assert(InstancePtr->example_cav1_p2_phase_out_BaseAddress);
    // NOTE: slave interface 'cav1_p2_window_start' should be mapped to uioX/map21
    InstancePtr->example_cav1_p2_window_start_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[21].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 21 * getpagesize());
    assert(InstancePtr->example_cav1_p2_window_start_BaseAddress);
    // NOTE: slave interface 'cav1_p2_window_stop' should be mapped to uioX/map22
    InstancePtr->example_cav1_p2_window_stop_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[22].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 22 * getpagesize());
    assert(InstancePtr->example_cav1_p2_window_stop_BaseAddress);
    // NOTE: slave interface 'cav2_p1_amp_out' should be mapped to uioX/map23
    InstancePtr->example_cav2_p1_amp_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[23].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 23 * getpagesize());
    assert(InstancePtr->example_cav2_p1_amp_out_BaseAddress);
    // NOTE: slave interface 'cav2_p1_chan_sel' should be mapped to uioX/map24
    InstancePtr->example_cav2_p1_chan_sel_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[24].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 24 * getpagesize());
    assert(InstancePtr->example_cav2_p1_chan_sel_BaseAddress);
    // NOTE: slave interface 'cav2_p1_comparison_i' should be mapped to uioX/map25
    InstancePtr->example_cav2_p1_comparison_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[25].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 25 * getpagesize());
    assert(InstancePtr->example_cav2_p1_comparison_i_BaseAddress);
    // NOTE: slave interface 'cav2_p1_comparison_phase' should be mapped to uioX/map26
    InstancePtr->example_cav2_p1_comparison_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[26].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 26 * getpagesize());
    assert(InstancePtr->example_cav2_p1_comparison_phase_BaseAddress);
    // NOTE: slave interface 'cav2_p1_comparison_q' should be mapped to uioX/map27
    InstancePtr->example_cav2_p1_comparison_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[27].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 27 * getpagesize());
    assert(InstancePtr->example_cav2_p1_comparison_q_BaseAddress);
    // NOTE: slave interface 'cav2_p1_dc_freq' should be mapped to uioX/map28
    InstancePtr->example_cav2_p1_dc_freq_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[28].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 28 * getpagesize());
    assert(InstancePtr->example_cav2_p1_dc_freq_BaseAddress);
    // NOTE: slave interface 'cav2_p1_dc_img' should be mapped to uioX/map29
    InstancePtr->example_cav2_p1_dc_img_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[29].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 29 * getpagesize());
    assert(InstancePtr->example_cav2_p1_dc_img_BaseAddress);
    // NOTE: slave interface 'cav2_p1_dc_real' should be mapped to uioX/map30
    InstancePtr->example_cav2_p1_dc_real_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[30].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 30 * getpagesize());
    assert(InstancePtr->example_cav2_p1_dc_real_BaseAddress);
    // NOTE: slave interface 'cav2_p1_if_amp' should be mapped to uioX/map31
    InstancePtr->example_cav2_p1_if_amp_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[31].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 31 * getpagesize());
    assert(InstancePtr->example_cav2_p1_if_amp_BaseAddress);
    // NOTE: slave interface 'cav2_p1_if_i' should be mapped to uioX/map32
    InstancePtr->example_cav2_p1_if_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[32].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 32 * getpagesize());
    assert(InstancePtr->example_cav2_p1_if_i_BaseAddress);
    // NOTE: slave interface 'cav2_p1_if_phase' should be mapped to uioX/map33
    InstancePtr->example_cav2_p1_if_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[33].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 33 * getpagesize());
    assert(InstancePtr->example_cav2_p1_if_phase_BaseAddress);
    // NOTE: slave interface 'cav2_p1_if_q' should be mapped to uioX/map34
    InstancePtr->example_cav2_p1_if_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[34].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 34 * getpagesize());
    assert(InstancePtr->example_cav2_p1_if_q_BaseAddress);
    // NOTE: slave interface 'cav2_p1_integrated_i' should be mapped to uioX/map35
    InstancePtr->example_cav2_p1_integrated_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[35].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 35 * getpagesize());
    assert(InstancePtr->example_cav2_p1_integrated_i_BaseAddress);
    // NOTE: slave interface 'cav2_p1_integrated_q' should be mapped to uioX/map36
    InstancePtr->example_cav2_p1_integrated_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[36].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 36 * getpagesize());
    assert(InstancePtr->example_cav2_p1_integrated_q_BaseAddress);
    // NOTE: slave interface 'cav2_p1_phase_out' should be mapped to uioX/map37
    InstancePtr->example_cav2_p1_phase_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[37].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 37 * getpagesize());
    assert(InstancePtr->example_cav2_p1_phase_out_BaseAddress);
    // NOTE: slave interface 'cav2_p1_window_start' should be mapped to uioX/map38
    InstancePtr->example_cav2_p1_window_start_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[38].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 38 * getpagesize());
    assert(InstancePtr->example_cav2_p1_window_start_BaseAddress);
    // NOTE: slave interface 'cav2_p1_window_stop' should be mapped to uioX/map39
    InstancePtr->example_cav2_p1_window_stop_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[39].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 39 * getpagesize());
    assert(InstancePtr->example_cav2_p1_window_stop_BaseAddress);
    // NOTE: slave interface 'cav2_p2_amp_out' should be mapped to uioX/map40
    InstancePtr->example_cav2_p2_amp_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[40].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 40 * getpagesize());
    assert(InstancePtr->example_cav2_p2_amp_out_BaseAddress);
    // NOTE: slave interface 'cav2_p2_chan_sel' should be mapped to uioX/map41
    InstancePtr->example_cav2_p2_chan_sel_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[41].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 41 * getpagesize());
    assert(InstancePtr->example_cav2_p2_chan_sel_BaseAddress);
    // NOTE: slave interface 'cav2_p2_comparison_i' should be mapped to uioX/map42
    InstancePtr->example_cav2_p2_comparison_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[42].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 42 * getpagesize());
    assert(InstancePtr->example_cav2_p2_comparison_i_BaseAddress);
    // NOTE: slave interface 'cav2_p2_comparison_phase' should be mapped to uioX/map43
    InstancePtr->example_cav2_p2_comparison_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[43].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 43 * getpagesize());
    assert(InstancePtr->example_cav2_p2_comparison_phase_BaseAddress);
    // NOTE: slave interface 'cav2_p2_comparison_q' should be mapped to uioX/map44
    InstancePtr->example_cav2_p2_comparison_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[44].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 44 * getpagesize());
    assert(InstancePtr->example_cav2_p2_comparison_q_BaseAddress);
    // NOTE: slave interface 'cav2_p2_dc_freq' should be mapped to uioX/map45
    InstancePtr->example_cav2_p2_dc_freq_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[45].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 45 * getpagesize());
    assert(InstancePtr->example_cav2_p2_dc_freq_BaseAddress);
    // NOTE: slave interface 'cav2_p2_dc_img' should be mapped to uioX/map46
    InstancePtr->example_cav2_p2_dc_img_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[46].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 46 * getpagesize());
    assert(InstancePtr->example_cav2_p2_dc_img_BaseAddress);
    // NOTE: slave interface 'cav2_p2_dc_real' should be mapped to uioX/map47
    InstancePtr->example_cav2_p2_dc_real_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[47].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 47 * getpagesize());
    assert(InstancePtr->example_cav2_p2_dc_real_BaseAddress);
    // NOTE: slave interface 'cav2_p2_if_amp' should be mapped to uioX/map48
    InstancePtr->example_cav2_p2_if_amp_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[48].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 48 * getpagesize());
    assert(InstancePtr->example_cav2_p2_if_amp_BaseAddress);
    // NOTE: slave interface 'cav2_p2_if_i' should be mapped to uioX/map49
    InstancePtr->example_cav2_p2_if_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[49].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 49 * getpagesize());
    assert(InstancePtr->example_cav2_p2_if_i_BaseAddress);
    // NOTE: slave interface 'cav2_p2_if_phase' should be mapped to uioX/map50
    InstancePtr->example_cav2_p2_if_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[50].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 50 * getpagesize());
    assert(InstancePtr->example_cav2_p2_if_phase_BaseAddress);
    // NOTE: slave interface 'cav2_p2_if_q' should be mapped to uioX/map51
    InstancePtr->example_cav2_p2_if_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[51].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 51 * getpagesize());
    assert(InstancePtr->example_cav2_p2_if_q_BaseAddress);
    // NOTE: slave interface 'cav2_p2_integrated_i' should be mapped to uioX/map52
    InstancePtr->example_cav2_p2_integrated_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[52].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 52 * getpagesize());
    assert(InstancePtr->example_cav2_p2_integrated_i_BaseAddress);
    // NOTE: slave interface 'cav2_p2_integrated_q' should be mapped to uioX/map53
    InstancePtr->example_cav2_p2_integrated_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[53].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 53 * getpagesize());
    assert(InstancePtr->example_cav2_p2_integrated_q_BaseAddress);
    // NOTE: slave interface 'cav2_p2_phase_out' should be mapped to uioX/map54
    InstancePtr->example_cav2_p2_phase_out_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[54].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 54 * getpagesize());
    assert(InstancePtr->example_cav2_p2_phase_out_BaseAddress);
    // NOTE: slave interface 'cav2_p2_window_start' should be mapped to uioX/map55
    InstancePtr->example_cav2_p2_window_start_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[55].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 55 * getpagesize());
    assert(InstancePtr->example_cav2_p2_window_start_BaseAddress);
    // NOTE: slave interface 'cav2_p2_window_stop' should be mapped to uioX/map56
    InstancePtr->example_cav2_p2_window_stop_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[56].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 56 * getpagesize());
    assert(InstancePtr->example_cav2_p2_window_stop_BaseAddress);
    // NOTE: slave interface 'ref_window_start' should be mapped to uioX/map57
    InstancePtr->example_ref_window_start_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[57].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 57 * getpagesize());
    assert(InstancePtr->example_ref_window_start_BaseAddress);
    // NOTE: slave interface 'ref_window_stop' should be mapped to uioX/map58
    InstancePtr->example_ref_window_stop_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[58].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 58 * getpagesize());
    assert(InstancePtr->example_ref_window_stop_BaseAddress);
    // NOTE: slave interface 'rf_ref_amp' should be mapped to uioX/map59
    InstancePtr->example_rf_ref_amp_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[59].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 59 * getpagesize());
    assert(InstancePtr->example_rf_ref_amp_BaseAddress);
    // NOTE: slave interface 'rf_ref_chan_sel' should be mapped to uioX/map60
    InstancePtr->example_rf_ref_chan_sel_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[60].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 60 * getpagesize());
    assert(InstancePtr->example_rf_ref_chan_sel_BaseAddress);
    // NOTE: slave interface 'rf_ref_i' should be mapped to uioX/map61
    InstancePtr->example_rf_ref_i_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[61].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 61 * getpagesize());
    assert(InstancePtr->example_rf_ref_i_BaseAddress);
    // NOTE: slave interface 'rf_ref_phase' should be mapped to uioX/map62
    InstancePtr->example_rf_ref_phase_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[62].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 62 * getpagesize());
    assert(InstancePtr->example_rf_ref_phase_BaseAddress);
    // NOTE: slave interface 'rf_ref_q' should be mapped to uioX/map63
    InstancePtr->example_rf_ref_q_BaseAddress = (u32)mmap(NULL, InfoPtr->maps[63].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 63 * getpagesize());
    assert(InstancePtr->example_rf_ref_q_BaseAddress);

    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}

int example_Release(example *InstancePtr) {
 example_uio_info *InfoPtr = &uio_info;

    assert(InstancePtr != NULL);
    assert(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    munmap((void*)InstancePtr->example_BaseAddress, InfoPtr->maps[0].size);
    munmap((void*)InstancePtr->example_cav1_nco_phase_adj_BaseAddress, InfoPtr->maps[1].size);
    munmap((void*)InstancePtr->example_cav1_nco_phase_reset_BaseAddress, InfoPtr->maps[2].size);
    munmap((void*)InstancePtr->example_cav1_p1_chan_sel_BaseAddress, InfoPtr->maps[3].size);
    munmap((void*)InstancePtr->example_cav1_p1_window_start_BaseAddress, InfoPtr->maps[4].size);
    munmap((void*)InstancePtr->example_cav1_p1_window_stop_BaseAddress, InfoPtr->maps[5].size);
    munmap((void*)InstancePtr->example_cav1_p2_amp_out_BaseAddress, InfoPtr->maps[6].size);
    munmap((void*)InstancePtr->example_cav1_p2_chan_sel_BaseAddress, InfoPtr->maps[7].size);
    munmap((void*)InstancePtr->example_cav1_p2_comparison_i_BaseAddress, InfoPtr->maps[8].size);
    munmap((void*)InstancePtr->example_cav1_p2_comparison_phase_BaseAddress, InfoPtr->maps[9].size);
    munmap((void*)InstancePtr->example_cav1_p2_comparison_q_BaseAddress, InfoPtr->maps[10].size);
    munmap((void*)InstancePtr->example_cav1_p2_dc_freq_BaseAddress, InfoPtr->maps[11].size);
    munmap((void*)InstancePtr->example_cav1_p2_dc_img_BaseAddress, InfoPtr->maps[12].size);
    munmap((void*)InstancePtr->example_cav1_p2_dc_real_BaseAddress, InfoPtr->maps[13].size);
    munmap((void*)InstancePtr->example_cav1_p2_if_amp_BaseAddress, InfoPtr->maps[14].size);
    munmap((void*)InstancePtr->example_cav1_p2_if_i_BaseAddress, InfoPtr->maps[15].size);
    munmap((void*)InstancePtr->example_cav1_p2_if_phase_BaseAddress, InfoPtr->maps[16].size);
    munmap((void*)InstancePtr->example_cav1_p2_if_q_BaseAddress, InfoPtr->maps[17].size);
    munmap((void*)InstancePtr->example_cav1_p2_integrated_i_BaseAddress, InfoPtr->maps[18].size);
    munmap((void*)InstancePtr->example_cav1_p2_integrated_q_BaseAddress, InfoPtr->maps[19].size);
    munmap((void*)InstancePtr->example_cav1_p2_phase_out_BaseAddress, InfoPtr->maps[20].size);
    munmap((void*)InstancePtr->example_cav1_p2_window_start_BaseAddress, InfoPtr->maps[21].size);
    munmap((void*)InstancePtr->example_cav1_p2_window_stop_BaseAddress, InfoPtr->maps[22].size);
    munmap((void*)InstancePtr->example_cav2_p1_amp_out_BaseAddress, InfoPtr->maps[23].size);
    munmap((void*)InstancePtr->example_cav2_p1_chan_sel_BaseAddress, InfoPtr->maps[24].size);
    munmap((void*)InstancePtr->example_cav2_p1_comparison_i_BaseAddress, InfoPtr->maps[25].size);
    munmap((void*)InstancePtr->example_cav2_p1_comparison_phase_BaseAddress, InfoPtr->maps[26].size);
    munmap((void*)InstancePtr->example_cav2_p1_comparison_q_BaseAddress, InfoPtr->maps[27].size);
    munmap((void*)InstancePtr->example_cav2_p1_dc_freq_BaseAddress, InfoPtr->maps[28].size);
    munmap((void*)InstancePtr->example_cav2_p1_dc_img_BaseAddress, InfoPtr->maps[29].size);
    munmap((void*)InstancePtr->example_cav2_p1_dc_real_BaseAddress, InfoPtr->maps[30].size);
    munmap((void*)InstancePtr->example_cav2_p1_if_amp_BaseAddress, InfoPtr->maps[31].size);
    munmap((void*)InstancePtr->example_cav2_p1_if_i_BaseAddress, InfoPtr->maps[32].size);
    munmap((void*)InstancePtr->example_cav2_p1_if_phase_BaseAddress, InfoPtr->maps[33].size);
    munmap((void*)InstancePtr->example_cav2_p1_if_q_BaseAddress, InfoPtr->maps[34].size);
    munmap((void*)InstancePtr->example_cav2_p1_integrated_i_BaseAddress, InfoPtr->maps[35].size);
    munmap((void*)InstancePtr->example_cav2_p1_integrated_q_BaseAddress, InfoPtr->maps[36].size);
    munmap((void*)InstancePtr->example_cav2_p1_phase_out_BaseAddress, InfoPtr->maps[37].size);
    munmap((void*)InstancePtr->example_cav2_p1_window_start_BaseAddress, InfoPtr->maps[38].size);
    munmap((void*)InstancePtr->example_cav2_p1_window_stop_BaseAddress, InfoPtr->maps[39].size);
    munmap((void*)InstancePtr->example_cav2_p2_amp_out_BaseAddress, InfoPtr->maps[40].size);
    munmap((void*)InstancePtr->example_cav2_p2_chan_sel_BaseAddress, InfoPtr->maps[41].size);
    munmap((void*)InstancePtr->example_cav2_p2_comparison_i_BaseAddress, InfoPtr->maps[42].size);
    munmap((void*)InstancePtr->example_cav2_p2_comparison_phase_BaseAddress, InfoPtr->maps[43].size);
    munmap((void*)InstancePtr->example_cav2_p2_comparison_q_BaseAddress, InfoPtr->maps[44].size);
    munmap((void*)InstancePtr->example_cav2_p2_dc_freq_BaseAddress, InfoPtr->maps[45].size);
    munmap((void*)InstancePtr->example_cav2_p2_dc_img_BaseAddress, InfoPtr->maps[46].size);
    munmap((void*)InstancePtr->example_cav2_p2_dc_real_BaseAddress, InfoPtr->maps[47].size);
    munmap((void*)InstancePtr->example_cav2_p2_if_amp_BaseAddress, InfoPtr->maps[48].size);
    munmap((void*)InstancePtr->example_cav2_p2_if_i_BaseAddress, InfoPtr->maps[49].size);
    munmap((void*)InstancePtr->example_cav2_p2_if_phase_BaseAddress, InfoPtr->maps[50].size);
    munmap((void*)InstancePtr->example_cav2_p2_if_q_BaseAddress, InfoPtr->maps[51].size);
    munmap((void*)InstancePtr->example_cav2_p2_integrated_i_BaseAddress, InfoPtr->maps[52].size);
    munmap((void*)InstancePtr->example_cav2_p2_integrated_q_BaseAddress, InfoPtr->maps[53].size);
    munmap((void*)InstancePtr->example_cav2_p2_phase_out_BaseAddress, InfoPtr->maps[54].size);
    munmap((void*)InstancePtr->example_cav2_p2_window_start_BaseAddress, InfoPtr->maps[55].size);
    munmap((void*)InstancePtr->example_cav2_p2_window_stop_BaseAddress, InfoPtr->maps[56].size);
    munmap((void*)InstancePtr->example_ref_window_start_BaseAddress, InfoPtr->maps[57].size);
    munmap((void*)InstancePtr->example_ref_window_stop_BaseAddress, InfoPtr->maps[58].size);
    munmap((void*)InstancePtr->example_rf_ref_amp_BaseAddress, InfoPtr->maps[59].size);
    munmap((void*)InstancePtr->example_rf_ref_chan_sel_BaseAddress, InfoPtr->maps[60].size);
    munmap((void*)InstancePtr->example_rf_ref_i_BaseAddress, InfoPtr->maps[61].size);
    munmap((void*)InstancePtr->example_rf_ref_phase_BaseAddress, InfoPtr->maps[62].size);
    munmap((void*)InstancePtr->example_rf_ref_q_BaseAddress, InfoPtr->maps[63].size);

    close(InfoPtr->uio_fd);

    return XST_SUCCESS;
}

#endif
