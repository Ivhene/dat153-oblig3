.class public Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;
.super Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForOpenJ9"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    }
.end annotation


# static fields
.field private static final IBM_TEMPORARY_FOLDER:Ljava/lang/String; = "com.ibm.tools.attach.directory"


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .line 1578
    invoke-direct {p0}, Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;-><init>()V

    .line 1579
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    .line 1580
    return-void
.end method

.method public static attach(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 5
    .param p0, "processId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;

    invoke-direct {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0xf

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    :goto_0
    const/16 v1, 0x1388

    invoke-static {p0, v1, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->attach(Ljava/lang/String;ILnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;)Lnet/bytebuddy/agent/VirtualMachine;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Ljava/lang/String;ILnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 31
    .param p0, "processId"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .param p2, "dispatcher"    # Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1605
    move-object/from16 v1, p2

    const-string v2, "attachNotificationSync"

    const-string v3, "\n"

    const-string v4, "_master"

    const-string v5, "UTF-8"

    new-instance v0, Ljava/io/File;

    const-string v6, "com.ibm.tools.attach.directory"

    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->getTemporaryFolder()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".com_ibm_tools_attach"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 1606
    .local v6, "directory":Ljava/io/File;
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/io/File;

    const-string v8, "_attachlock"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "rw"

    invoke-direct {v0, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 1608
    .local v7, "attachLock":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1b

    move-object v10, v0

    .line 1611
    .local v10, "attachLockLock":Ljava/nio/channels/FileLock;
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v11, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_19

    move-object v11, v0

    .line 1613
    .local v11, "master":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_17

    move-object v12, v0

    .line 1615
    .local v12, "masterLock":Ljava/nio/channels/FileLock;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 1616
    .local v13, "vmFolder":[Ljava/io/File;
    if-eqz v13, :cond_1d

    .line 1619
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->userId()I

    move-result v0

    int-to-long v14, v0

    .line 1620
    .local v14, "userId":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_15

    move-object/from16 v16, v0

    .line 1621
    .local v16, "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    move-object/from16 v17, v7

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .local v17, "attachLock":Ljava/io/RandomAccessFile;
    :try_start_4
    array-length v7, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    move-object/from16 v18, v10

    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .local v18, "attachLockLock":Ljava/nio/channels/FileLock;
    const/4 v10, 0x0

    :goto_0
    move-object/from16 v20, v4

    const-string v4, "processId"

    if-ge v10, v7, :cond_b

    :try_start_5
    aget-object v0, v13, v10

    move-object/from16 v21, v0

    .line 1622
    .local v21, "aVmFolder":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v22, v7

    move-object/from16 v7, v21

    .end local v21    # "aVmFolder":Ljava/io/File;
    .local v7, "aVmFolder":Ljava/io/File;
    invoke-interface {v1, v7}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->getOwnerIdOf(Ljava/io/File;)I

    move-result v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    int-to-long v8, v0

    cmp-long v0, v8, v14

    if-nez v0, :cond_9

    .line 1623
    new-instance v0, Ljava/io/File;

    const-string v8, "attachInfo"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 1624
    .local v8, "attachInfo":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1625
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v9, v0

    .line 1626
    .local v9, "virtualMachine":Ljava/util/Properties;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    move-object/from16 v24, v0

    .line 1628
    .local v24, "inputStream":Ljava/io/FileInputStream;
    move-object/from16 v25, v13

    move-object/from16 v13, v24

    .end local v24    # "inputStream":Ljava/io/FileInputStream;
    .local v13, "inputStream":Ljava/io/FileInputStream;
    .local v25, "vmFolder":[Ljava/io/File;
    :try_start_6
    invoke-virtual {v9, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1630
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1631
    nop

    .line 1632
    invoke-virtual {v9, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    move v4, v0

    .line 1635
    .local v4, "targetProcessId":I
    :try_start_8
    const-string v0, "userUid"

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_14

    .line 1638
    .local v26, "targetUserId":J
    goto :goto_1

    .line 1636
    .end local v26    # "targetUserId":J
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    const-wide/16 v26, 0x0

    .line 1639
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    .restart local v26    # "targetUserId":J
    :goto_1
    const-wide/16 v28, 0x0

    cmp-long v0, v14, v28

    if-eqz v0, :cond_0

    cmp-long v0, v26, v28

    if-nez v0, :cond_0

    .line 1640
    :try_start_9
    invoke-interface {v1, v8}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->getOwnerIdOf(Ljava/io/File;)I

    move-result v0

    move-object/from16 v24, v2

    move-object/from16 v30, v3

    int-to-long v2, v0

    move-wide/from16 v26, v2

    .end local v26    # "targetUserId":J
    .local v2, "targetUserId":J
    goto :goto_2

    .line 1639
    .end local v2    # "targetUserId":J
    .restart local v26    # "targetUserId":J
    :cond_0
    move-object/from16 v24, v2

    move-object/from16 v30, v3

    .line 1642
    :goto_2
    int-to-long v2, v4

    cmp-long v0, v2, v28

    if-eqz v0, :cond_7

    invoke-interface {v1, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->isExistingProcess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    .line 1644
    :cond_1
    cmp-long v0, v14, v28

    if-eqz v0, :cond_3

    cmp-long v0, v26, v14

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v2, v16

    goto/16 :goto_6

    .line 1645
    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1646
    .local v0, "vmFile":[Ljava/io/File;
    if-eqz v0, :cond_5

    .line 1647
    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v28, v0, v3

    .line 1648
    .local v28, "aVmFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_4

    .line 1649
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->deleteOnExit()V

    .line 1647
    .end local v28    # "aVmFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1653
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1654
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    move-object/from16 v2, v16

    goto :goto_6

    .line 1653
    :cond_6
    move-object/from16 v2, v16

    goto :goto_6

    .line 1643
    .end local v0    # "vmFile":[Ljava/io/File;
    :cond_7
    :goto_5
    move-object/from16 v2, v16

    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .local v2, "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1630
    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v4    # "targetProcessId":I
    .end local v26    # "targetUserId":J
    .restart local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    move-object v3, v0

    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1631
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "masterLock":Ljava/nio/channels/FileLock;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_14

    .line 1624
    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v9    # "virtualMachine":Ljava/util/Properties;
    .end local v25    # "vmFolder":[Ljava/io/File;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "masterLock":Ljava/nio/channels/FileLock;
    .local v13, "vmFolder":[Ljava/io/File;
    .restart local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v30, v3

    move-object/from16 v25, v13

    move-object/from16 v2, v16

    .end local v13    # "vmFolder":[Ljava/io/File;
    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v25    # "vmFolder":[Ljava/io/File;
    goto :goto_6

    .line 1622
    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v8    # "attachInfo":Ljava/io/File;
    .end local v25    # "vmFolder":[Ljava/io/File;
    .restart local v13    # "vmFolder":[Ljava/io/File;
    .restart local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v30, v3

    move-object/from16 v25, v13

    move-object/from16 v2, v16

    .end local v13    # "vmFolder":[Ljava/io/File;
    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v25    # "vmFolder":[Ljava/io/File;
    goto :goto_6

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v7    # "aVmFolder":Ljava/io/File;
    .end local v25    # "vmFolder":[Ljava/io/File;
    .restart local v13    # "vmFolder":[Ljava/io/File;
    .restart local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v21    # "aVmFolder":Ljava/io/File;
    :cond_a
    move-object/from16 v24, v2

    move-object/from16 v30, v3

    move/from16 v22, v7

    move-object/from16 v23, v9

    move-object/from16 v25, v13

    move-object/from16 v2, v16

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    .line 1621
    .end local v13    # "vmFolder":[Ljava/io/File;
    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v21    # "aVmFolder":Ljava/io/File;
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v25    # "vmFolder":[Ljava/io/File;
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v2

    move-object/from16 v4, v20

    move-object/from16 v8, v21

    move/from16 v7, v22

    move-object/from16 v9, v23

    move-object/from16 v2, v24

    move-object/from16 v13, v25

    move-object/from16 v3, v30

    goto/16 :goto_0

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v25    # "vmFolder":[Ljava/io/File;
    .restart local v13    # "vmFolder":[Ljava/io/File;
    .restart local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :cond_b
    move-object/from16 v24, v2

    move-object/from16 v30, v3

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v13

    move-object/from16 v2, v16

    .line 1661
    .end local v13    # "vmFolder":[Ljava/io/File;
    .end local v14    # "userId":J
    .end local v16    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :try_start_a
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_16

    .line 1662
    nop

    .line 1664
    .end local v12    # "masterLock":Ljava/nio/channels/FileLock;
    :try_start_b
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1665
    nop

    .line 1666
    const/4 v0, 0x0

    .line 1667
    .local v0, "target":Ljava/util/Properties;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_18

    if-eqz v7, :cond_d

    :try_start_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Properties;

    .line 1668
    .local v7, "virtualMachine":Ljava/util/Properties;
    invoke-virtual {v7, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v9, p0

    :try_start_d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1669
    move-object v0, v7

    .line 1670
    move-object v3, v0

    goto :goto_8

    .line 1672
    .end local v7    # "virtualMachine":Ljava/util/Properties;
    :cond_c
    goto :goto_7

    .line 1760
    .end local v0    # "target":Ljava/util/Properties;
    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_1a

    .line 1667
    .restart local v0    # "target":Ljava/util/Properties;
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    :cond_d
    move-object/from16 v9, p0

    move-object v3, v0

    .line 1673
    .end local v0    # "target":Ljava/util/Properties;
    .local v3, "target":Ljava/util/Properties;
    :goto_8
    if-eqz v3, :cond_1c

    .line 1676
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_18

    move-object v8, v0

    .line 1678
    .local v8, "serverSocket":Ljava/net/ServerSocket;
    move/from16 v10, p1

    :try_start_e
    invoke-virtual {v8, v10}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 1679
    new-instance v0, Ljava/io/File;

    const-string v12, "vmId"

    invoke-virtual {v3, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1680
    .local v12, "receiver":Ljava/io/File;
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1681
    .local v13, "key":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v14, "replyInfo"

    invoke-direct {v0, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    move-object v14, v0

    .line 1683
    .local v14, "reply":Ljava/io/File;
    :try_start_f
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    if-eqz v0, :cond_e

    .line 1684
    const/16 v0, 0x180

    :try_start_10
    invoke-interface {v1, v14, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->setPermissions(Ljava/io/File;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_9

    .line 1752
    :catchall_2
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    goto/16 :goto_16

    .line 1686
    :cond_e
    :goto_9
    :try_start_11
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    move-object v15, v0

    .line 1688
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    :try_start_12
    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1689
    move-object/from16 v7, v30

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1690
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1691
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 1693
    :try_start_13
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1694
    nop

    .line 1695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    move-object v7, v0

    .line 1697
    .local v7, "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    :try_start_14
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->pid()I

    move-result v0

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1698
    .local v9, "pid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    if-eqz v0, :cond_11

    :try_start_15
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v16, v0

    .line 1699
    .local v16, "virtualMachine":Ljava/util/Properties;
    move-object/from16 v22, v2

    move-object/from16 v2, v16

    .end local v16    # "virtualMachine":Ljava/util/Properties;
    .local v2, "virtualMachine":Ljava/util/Properties;
    .local v22, "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :try_start_16
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1700
    move-object/from16 v16, v4

    move-object/from16 v4, v24

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 1701
    .local v24, "attachNotificationSync":Ljava/lang/String;
    new-instance v0, Ljava/io/RandomAccessFile;

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    .end local v24    # "attachNotificationSync":Ljava/lang/String;
    .local v2, "attachNotificationSync":Ljava/lang/String;
    .local v25, "virtualMachine":Ljava/util/Properties;
    if-nez v2, :cond_f

    move-object/from16 v24, v9

    .end local v9    # "pid":Ljava/lang/String;
    .local v24, "pid":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_b

    .end local v24    # "pid":Ljava/lang/String;
    .restart local v9    # "pid":Ljava/lang/String;
    :cond_f
    move-object/from16 v24, v9

    .end local v9    # "pid":Ljava/lang/String;
    .restart local v24    # "pid":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b
    move-object/from16 v26, v2

    move-object/from16 v2, v23

    .end local v2    # "attachNotificationSync":Ljava/lang/String;
    .local v26, "attachNotificationSync":Ljava/lang/String;
    invoke-direct {v0, v9, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v9, v0

    .line 1705
    .local v9, "syncFile":Ljava/io/RandomAccessFile;
    :try_start_17
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1708
    goto :goto_c

    .line 1706
    :catch_1
    move-exception v0

    .line 1707
    .local v0, "ignored":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_c

    .line 1699
    .end local v0    # "ignored":Ljava/io/IOException;
    .end local v24    # "pid":Ljava/lang/String;
    .end local v25    # "virtualMachine":Ljava/util/Properties;
    .end local v26    # "attachNotificationSync":Ljava/lang/String;
    .local v2, "virtualMachine":Ljava/util/Properties;
    .local v9, "pid":Ljava/lang/String;
    :cond_10
    move-object/from16 v25, v2

    move-object/from16 v16, v4

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v24, v9

    .line 1710
    .end local v2    # "virtualMachine":Ljava/util/Properties;
    .end local v9    # "pid":Ljava/lang/String;
    .restart local v24    # "pid":Ljava/lang/String;
    :goto_c
    move-object/from16 v23, v2

    move-object/from16 v2, v22

    move-object/from16 v9, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    goto :goto_a

    .line 1739
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v24    # "pid":Ljava/lang/String;
    .local v2, "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    move-object/from16 v16, v3

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    goto/16 :goto_13

    .line 1711
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v9    # "pid":Ljava/lang/String;
    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v24, v9

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v9    # "pid":Ljava/lang/String;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v24    # "pid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1712
    .local v0, "notifications":I
    :try_start_19
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1713
    .local v2, "item":[Ljava/io/File;
    const-string v4, "_notifier"

    if-eqz v2, :cond_16

    .line 1714
    :try_start_1a
    array-length v9, v2

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v9, :cond_15

    aget-object v16, v2, v10

    .line 1715
    .local v16, "anItem":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v23, v19

    .line 1716
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v19, v2

    .end local v2    # "item":[Ljava/io/File;
    .local v19, "item":[Ljava/io/File;
    const-string v2, ".trash_"

    move/from16 v25, v9

    move-object/from16 v9, v23

    .end local v23    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1717
    move-object/from16 v2, v21

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 1718
    move-object/from16 v21, v2

    move-object/from16 v2, v20

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 1719
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-nez v20, :cond_14

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1717
    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v2, v20

    goto :goto_e

    .line 1716
    :cond_13
    move-object/from16 v2, v20

    .line 1714
    .end local v9    # "name":Ljava/lang/String;
    .end local v16    # "anItem":Ljava/io/File;
    :cond_14
    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    move/from16 v9, v25

    goto :goto_d

    .end local v19    # "item":[Ljava/io/File;
    .restart local v2    # "item":[Ljava/io/File;
    :cond_15
    move-object/from16 v19, v2

    .end local v2    # "item":[Ljava/io/File;
    .restart local v19    # "item":[Ljava/io/File;
    move v2, v0

    goto :goto_f

    .line 1739
    .end local v0    # "notifications":I
    .end local v19    # "item":[Ljava/io/File;
    .end local v24    # "pid":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    goto/16 :goto_13

    .line 1713
    .restart local v0    # "notifications":I
    .restart local v2    # "item":[Ljava/io/File;
    .restart local v24    # "pid":Ljava/lang/String;
    :cond_16
    move-object/from16 v19, v2

    .end local v2    # "item":[Ljava/io/File;
    .restart local v19    # "item":[Ljava/io/File;
    move v2, v0

    .line 1724
    .end local v0    # "notifications":I
    .local v2, "notifications":I
    :goto_f
    :try_start_1b
    const-string v0, "globalSemaphore"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v9, v0

    .line 1725
    .local v9, "global":Z
    invoke-interface {v1, v6, v4, v9, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->incrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 1727
    :try_start_1c
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    move-object v10, v0

    .line 1728
    .local v10, "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    move-object/from16 v16, v3

    .end local v3    # "target":Ljava/util/Properties;
    .local v16, "target":Ljava/util/Properties;
    :try_start_1d
    invoke-static {v10}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v3

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v3, v0

    .line 1729
    .local v3, "answer":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1730
    new-instance v5, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;

    invoke-direct {v5, v10}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;-><init>(Ljava/net/Socket;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 1736
    :try_start_1e
    invoke-interface {v1, v6, v4, v9, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->decrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 1739
    :try_start_1f
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    move-object/from16 v20, v0

    .line 1742
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    :try_start_20
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 1744
    :try_start_21
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1745
    nop

    .line 1748
    goto :goto_11

    .line 1744
    :catchall_5
    move-exception v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/io/RandomAccessFile;

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->close()V

    .line 1745
    nop

    .end local v2    # "notifications":I
    .end local v3    # "answer":Ljava/lang/String;
    .end local v6    # "directory":Ljava/io/File;
    .end local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v9    # "global":Z
    .end local v10    # "socket":Ljava/net/Socket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v19    # "item":[Ljava/io/File;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v24    # "pid":Ljava/lang/String;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 1746
    .restart local v2    # "notifications":I
    .restart local v3    # "answer":Ljava/lang/String;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v9    # "global":Z
    .restart local v10    # "socket":Ljava/net/Socket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "item":[Ljava/io/File;
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v24    # "pid":Ljava/lang/String;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_6
    move-exception v0

    .line 1749
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    :goto_11
    goto :goto_10

    .line 1752
    :cond_17
    :try_start_22
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1753
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 1757
    :cond_18
    :try_start_23
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    .line 1760
    :try_start_24
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileLock;->release()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1a

    .line 1763
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 1730
    return-object v5

    .line 1732
    :cond_19
    :try_start_25
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 1733
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v10

    .end local v10    # "socket":Ljava/net/Socket;
    .local v20, "socket":Ljava/net/Socket;
    const-string v10, "Unexpected answered to attachment: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "notifications":I
    .end local v6    # "directory":Ljava/io/File;
    .end local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v9    # "global":Z
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v19    # "item":[Ljava/io/File;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v24    # "pid":Ljava/lang/String;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 1736
    .end local v3    # "answer":Ljava/lang/String;
    .end local v20    # "socket":Ljava/net/Socket;
    .restart local v2    # "notifications":I
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v9    # "global":Z
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v19    # "item":[Ljava/io/File;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v24    # "pid":Ljava/lang/String;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_7
    move-exception v0

    goto :goto_12

    .end local v16    # "target":Ljava/util/Properties;
    .local v3, "target":Ljava/util/Properties;
    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    :goto_12
    :try_start_26
    invoke-interface {v1, v6, v4, v9, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;->decrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V

    .line 1737
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 1739
    .end local v2    # "notifications":I
    .end local v9    # "global":Z
    .end local v19    # "item":[Ljava/io/File;
    .end local v24    # "pid":Ljava/lang/String;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_9
    move-exception v0

    move-object v2, v0

    goto :goto_13

    .end local v16    # "target":Ljava/util/Properties;
    .restart local v3    # "target":Ljava/util/Properties;
    :catchall_a
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v0

    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    goto :goto_13

    .end local v16    # "target":Ljava/util/Properties;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .local v2, "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v3    # "target":Ljava/util/Properties;
    :catchall_b
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    move-object v2, v0

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :goto_13
    :try_start_27
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    move-object v4, v0

    .line 1742
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    :try_start_28
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 1744
    :try_start_29
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1745
    nop

    .line 1748
    goto :goto_15

    .line 1744
    :catchall_c
    move-exception v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1745
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v6    # "directory":Ljava/io/File;
    .end local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    .line 1746
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_d
    move-exception v0

    .line 1749
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    :goto_15
    goto :goto_14

    .line 1750
    :cond_1a
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :try_start_2a
    throw v2

    .line 1693
    .end local v7    # "locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v3    # "target":Ljava/util/Properties;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_e
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1694
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    .line 1752
    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "receiver":Ljava/io/File;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "reply":Ljava/io/File;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_f
    move-exception v0

    goto :goto_16

    .end local v16    # "target":Ljava/util/Properties;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v3    # "target":Ljava/util/Properties;
    :catchall_10
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :goto_16
    :try_start_2b
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1753
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 1755
    :cond_1b
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    .line 1757
    .end local v12    # "receiver":Ljava/io/File;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "reply":Ljava/io/File;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_11
    move-exception v0

    goto :goto_17

    .end local v16    # "target":Ljava/util/Properties;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v3    # "target":Ljava/util/Properties;
    :catchall_12
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v16, v3

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    :goto_17
    :try_start_2c
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 1758
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0

    .line 1674
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .end local v16    # "target":Ljava/util/Properties;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v3    # "target":Ljava/util/Properties;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :cond_1c
    move-object/from16 v22, v2

    move-object/from16 v16, v3

    .end local v2    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .end local v3    # "target":Ljava/util/Properties;
    .restart local v16    # "target":Ljava/util/Properties;
    .restart local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not locate target process info in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "directory":Ljava/io/File;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    .line 1661
    .end local v16    # "target":Ljava/util/Properties;
    .end local v22    # "virtualMachines":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    .restart local v6    # "directory":Ljava/io/File;
    .local v10, "attachLockLock":Ljava/nio/channels/FileLock;
    .local v12, "masterLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_13
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    goto :goto_18

    .line 1617
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .local v7, "attachLock":Ljava/io/RandomAccessFile;
    .restart local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .local v13, "vmFolder":[Ljava/io/File;
    :cond_1d
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v25, v13

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local v13    # "vmFolder":[Ljava/io/File;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .local v25, "vmFolder":[Ljava/io/File;
    :try_start_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No descriptor files found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "directory":Ljava/io/File;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v12    # "masterLock":Ljava/nio/channels/FileLock;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 1661
    .end local v25    # "vmFolder":[Ljava/io/File;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v12    # "masterLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_14
    move-exception v0

    goto :goto_18

    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    :catchall_15
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    :goto_18
    :try_start_2e
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V

    .line 1662
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_16

    .line 1664
    .end local v12    # "masterLock":Ljava/nio/channels/FileLock;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_16
    move-exception v0

    goto :goto_19

    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    :catchall_17
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    :goto_19
    :try_start_2f
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1665
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    .line 1760
    .end local v11    # "master":Ljava/io/RandomAccessFile;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_18
    move-exception v0

    goto :goto_1a

    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    :catchall_19
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .end local v10    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    :goto_1a
    :try_start_30
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileLock;->release()V

    .line 1761
    nop

    .end local v6    # "directory":Ljava/io/File;
    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .end local p0    # "processId":Ljava/lang/String;
    .end local p1    # "timeout":I
    .end local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    .line 1763
    .end local v18    # "attachLockLock":Ljava/nio/channels/FileLock;
    .restart local v6    # "directory":Ljava/io/File;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local p0    # "processId":Ljava/lang/String;
    .restart local p1    # "timeout":I
    .restart local p2    # "dispatcher":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
    :catchall_1a
    move-exception v0

    goto :goto_1b

    .end local v17    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v7    # "attachLock":Ljava/io/RandomAccessFile;
    :catchall_1b
    move-exception v0

    move-object/from16 v17, v7

    .end local v7    # "attachLock":Ljava/io/RandomAccessFile;
    .restart local v17    # "attachLock":Ljava/io/RandomAccessFile;
    :goto_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 1764
    throw v0
.end method

.method private static read(Ljava/net/Socket;)[B
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1892
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1893
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1895
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1896
    const/4 v2, 0x0

    if-lez v3, :cond_0

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v1, v4

    if-nez v4, :cond_0

    .line 1897
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1898
    goto :goto_1

    .line 1900
    :cond_0
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1903
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static write(Ljava/net/Socket;[B)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1879
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1880
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1881
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1882
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1864
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    const-string v1, "ATTACH_DETACH"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1865
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1868
    nop

    .line 1869
    return-void

    .line 1867
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1868
    throw v0
.end method

.method public getAgentProperties()Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    const-string v1, "ATTACH_GETAGENTPROPERTIES"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1782
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1783
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1784
    return-object v0
.end method

.method public getSystemProperties()Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1771
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    const-string v1, "ATTACH_GETSYSTEMPROPERTIES"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1772
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1773
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1774
    return-object v0
.end method

.method public loadAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "jarFile"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH_LOADAGENT(instrument,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1792
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1793
    .local v0, "answer":Ljava/lang/String;
    const-string v1, "ATTACH_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1795
    const-string v1, "ATTACH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ATTACH_RESULT="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1796
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    :cond_2
    :goto_1
    return-void

    .line 1794
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target VM failed loading agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public loadAgentLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH_LOADAGENTLIBRARY("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1818
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1819
    .local v0, "answer":Ljava/lang/String;
    const-string v1, "ATTACH_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1821
    const-string v1, "ATTACH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ATTACH_RESULT="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1822
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1824
    :cond_2
    :goto_1
    return-void

    .line 1820
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target VM failed loading native library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public loadAgentPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH_LOADAGENTPATH("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1805
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1806
    .local v0, "answer":Ljava/lang/String;
    const-string v1, "ATTACH_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1808
    const-string v1, "ATTACH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ATTACH_RESULT="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1809
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1811
    :cond_2
    :goto_1
    return-void

    .line 1807
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target VM failed loading native agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startLocalManagementAgent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1846
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    const-string v1, "ATTACH_START_LOCAL_MANAGEMENT_AGENT"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1847
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1848
    .local v0, "answer":Ljava/lang/String;
    const-string v1, "ATTACH_ERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1850
    const-string v1, "ATTACH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1851
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1852
    :cond_0
    const-string v1, "ATTACH_RESULT="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1853
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1855
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target VM could not start management agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startManagementAgent(Ljava/util/Properties;)V
    .locals 5
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1831
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1832
    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    const-string v2, "ATTACH_START_MANAGEMENT_AGENT"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1833
    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->write(Ljava/net/Socket;[B)V

    .line 1834
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;->read(Ljava/net/Socket;)[B

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1835
    .local v1, "answer":Ljava/lang/String;
    const-string v2, "ATTACH_ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1837
    const-string v2, "ATTACH_ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ATTACH_RESULT="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1838
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1840
    :cond_1
    :goto_0
    return-void

    .line 1836
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target VM could not start management agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
