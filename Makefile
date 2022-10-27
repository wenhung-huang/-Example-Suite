SRCS=D_01_01.c       D_04_05.c       R_01_01.c       R_02_support.c  R_05_03.c       R_06_support.c  R_08_05_2.c  R_08_14.c       R_10_04.c             R_13_01_2.c     R_14_support.c  R_16_03.c       R_17_07.c       R_18_support.c  R_20_08.c       R_21_05.c  R_21_18.c       R_22_09.c\
D_01_support.c  D_04_06.c       R_01_02.c       R_02_system.c   R_05_04.c       R_06_system.c   R_08_06_1.c  R_08_support.c  R_10_05.c       R_11_08.c       R_13_02.c       R_14_system.c   R_16_04.c       R_17_08.c       R_18_system.c   R_20_09.c       R_21_06.c         R_22_10.c\
D_01_system.c   D_04_07.c       R_01_03.c       R_03_01.c       R_05_05.c       R_07_01.c       R_08_06_2.c  R_08_system.c   R_10_06.c       R_11_09.c       R_13_03.c       R_15_01.c       R_16_05.c       R_17_support.c  R_19_01.c       R_20_10.c       R_21_07.c  R_21_20.c       R_22_support.c\
D_02_01.c       D_04_08_1.c     R_01_support.c  R_03_02.c       R_05_06.c       R_07_02.c       R_08_07_1.c  R_09_01.c       R_10_07.c       R_11_support.c  R_13_04.c       R_15_02.c       R_16_06.c       R_17_system.c   R_19_02.c             R_21_08.c  R_21_support.c  R_22_system.c\
D_02_support.c  D_04_08_2.c     R_01_system.c   R_03_support.c         R_07_03.c       R_08_07_2.c  R_09_02.c       R_10_08.c       R_11_system.c   R_13_05_1.c     R_15_03.c       R_16_07.c       R_18_01.c       R_19_support.c  R_20_12.c       R_21_09.c  R_21_system.c\
D_02_system.c   D_04_09.c       R_02_01_1.c     R_03_system.c   R_05_08_1.c     R_07_04.c           R_09_03.c       R_10_support.c  R_12_01.c       R_13_05_2.c     R_15_04.c       R_16_support.c  R_18_02.c       R_19_system.c   R_20_13.c       R_21_10.c  R_22_01.c\
D_03_01.c       D_04_10.c       R_02_01_2.c     R_04_01.c       R_05_08_2.c     R_07_support.c  R_08_09.c    R_09_04.c       R_10_system.c   R_12_02.c       R_13_06.c       R_15_05.c       R_16_system.c   R_18_03.c       R_20_01.c              R_21_11.c  R_22_02.c\
D_03_support.c  D_04_11.c       R_02_02.c       R_04_02.c       R_05_09_1.c     R_07_system.c   R_08_10.c    R_09_05.c             R_12_03.c       R_13_support.c  R_15_06.c       R_17_01.c       R_18_04.c              R_20_support.c  R_21_12.c  R_22_03.c\
D_03_system.c   D_04_12.c       R_02_03.c       R_04_support.c  R_05_09_2.c     R_08_01.c       R_08_11_1.c  R_09_support.c  R_11_02.c       R_12_04.c       R_13_system.c   R_15_07.c       R_17_02.c       R_18_05.c             R_20_system.c   R_21_13.c  R_22_04.c\
D_04_01.c       D_04_13.c       R_02_04.c       R_04_system.c   R_05_support.c  R_08_02.c       R_08_11_2.c  R_09_system.c   R_11_03.c       R_12_05.c       R_14_01.c       R_15_support.c  R_17_03.c       R_18_06_1.c                 R_21_14.c  R_22_05.c\
D_04_02.c       D_04_14.c       R_02_05.c       R_05_01_1.c     R_05_system.c          R_08_12.c           R_11_04.c       R_12_support.c  R_14_02.c       R_15_system.c   R_17_04.c       R_18_06_2.c     R_20_05.c       R_21_02.c       R_21_15.c  R_22_06.c\
       D_04_support.c  R_02_06.c       R_05_01_2.c     R_06_01.c            R_08_13_1.c  R_10_02.c       R_11_05.c       R_12_system.c   R_14_03.c       R_16_01.c       R_17_05.c       R_18_07.c       R_20_06.c       R_21_03.c       R_21_16.c  R_22_07.c\
D_04_04.c       D_04_system.c   R_02_07.c       R_05_02.c       R_06_02.c       R_08_05_1.c       R_10_03.c              R_13_01_1.c     R_14_04.c       R_16_02.c       R_17_06.c       R_18_08.c       R_20_07.c       R_21_04.c       R_21_17.c  R_22_08.c


EXCLUDE_SRC= R_11_07.c R_21_19.c R_20_11.c  R_05_07.c R_08_08.c R_20_14.c R_11_01.c R_20_02.c R_20_03.c R_20_04.c R_21_01.c R_08_03.c R_10_01.c D_04_03.c R_08_04.c   R_08_13_2.c R_11_06.c
SRC_DIR=src
BUILD_DIR=build
CC=gcc

TARGET = MISRA
OBJS=$(SRCS:%.c=$(BUILD_DIR)/%.o)

all: $(BUILD_DIR)/$(TARGET).out
	

$(BUILD_DIR)/%.out: $(OBJS) 
	@$(CC) --unresolved-symbols=ignore-all $^ 
	

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c 
	mkdir -p $(@D)
	@$(CC) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)