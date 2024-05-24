.class public Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJnaWindowsEnvironment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;,
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;
    }
.end annotation


# static fields
.field private static final CREATION_MUTEX_NAME:Ljava/lang/String; = "j9shsemcreationMutex"

.field private static final NO_USER_ID:I


# instance fields
.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2296
    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "kernel32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    .line 2297
    return-void
.end method

.method private openSemaphore(Ljava/io/File;Ljava/lang/String;Z)Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    .locals 17
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "global"    # Z

    .line 2402
    move-object/from16 v1, p0

    const-string v0, "j9shsemcreationMutex"

    new-instance v2, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;

    const/high16 v3, 0x10000

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;-><init>(I)V

    .line 2404
    .local v2, "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    :try_start_0
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/sun/jna/platform/win32/Advapi32;->InitializeSecurityDescriptor(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2407
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5, v4}, Lcom/sun/jna/platform/win32/Advapi32;->SetSecurityDescriptorDacl(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;ZLcom/sun/jna/platform/win32/WinNT$ACL;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2410
    new-instance v3, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;

    invoke-direct {v3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2412
    .local v3, "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    :try_start_1
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v4, v3, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;->length:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2413
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    iput-object v4, v3, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;->securityDescriptor:Lcom/sun/jna/Pointer;

    .line 2414
    iget-object v4, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->CreateMutex(Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;ZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    .line 2415
    .local v4, "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-nez v4, :cond_2

    .line 2416
    sget-object v6, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v6}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v6

    .line 2417
    .local v6, "lastError":I
    const/16 v7, 0xb7

    if-ne v6, v7, :cond_1

    .line 2418
    iget-object v7, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    const v8, 0x1f0001

    invoke-interface {v7, v8, v5, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->OpenMutex(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    move-object v4, v0

    .line 2419
    if-eqz v4, :cond_0

    goto :goto_0

    .line 2420
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v5, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v5}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0

    .line 2423
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v6}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0

    .line 2426
    .end local v6    # "lastError":I
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_2
    :goto_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/16 v6, 0x7d0

    invoke-interface {v0, v4, v6}, Lcom/sun/jna/platform/win32/Kernel32;->WaitForSingleObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v6, v0

    .line 2427
    .local v6, "result":I
    sparse-switch v6, :sswitch_data_0

    .line 2433
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2430
    :sswitch_0
    :try_start_3
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v6}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2433
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :goto_1
    :try_start_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, ""

    if-eqz p3, :cond_3

    :try_start_5
    const-string v8, "Global\\"

    goto :goto_2

    :cond_3
    move-object v8, v7

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2434
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v9, p2

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "[^a-zA-Z0-9_]"

    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_semaphore"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2436
    .local v0, "target":Ljava/lang/String;
    iget-object v7, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    const v8, 0x1f0003

    invoke-interface {v7, v8, v5, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->OpenSemaphoreW(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2437
    .local v7, "parent":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    const-string v14, "_set0"

    if-nez v7, :cond_7

    .line 2438
    :try_start_7
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/32 v15, 0x7fffffff

    move-object v5, v14

    move-wide v14, v15

    move-object/from16 v16, v0

    invoke-interface/range {v10 .. v16}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->CreateSemaphoreW(Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;JJLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v8

    move-object v7, v8

    .line 2439
    if-eqz v7, :cond_6

    .line 2442
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x7fffffff

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v10 .. v16}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->CreateSemaphoreW(Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;JJLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v5

    .line 2443
    .local v5, "child":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v5, :cond_5

    .line 2446
    new-instance v8, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;

    invoke-direct {v8, v7, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;-><init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2455
    :try_start_8
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    invoke-interface {v10, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->ReleaseMutex(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2461
    const/4 v3, 0x0

    .line 2464
    const/4 v2, 0x0

    .line 2446
    return-object v8

    .line 2456
    :cond_4
    new-instance v8, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v10

    invoke-direct {v8, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    :goto_3
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2444
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_5
    :try_start_9
    new-instance v8, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v10, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v10}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v10

    invoke-direct {v8, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v6    # "result":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v8

    .line 2440
    .end local v5    # "child":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v6    # "result":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_6
    new-instance v5, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v8, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v8}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v8

    invoke-direct {v5, v8}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v6    # "result":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v5

    .line 2448
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v6    # "result":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_7
    move-object v10, v14

    iget-object v11, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v8, v5, v10}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->OpenSemaphoreW(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v5

    .line 2449
    .restart local v5    # "child":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v5, :cond_9

    .line 2452
    new-instance v8, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;

    invoke-direct {v8, v7, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;-><init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2455
    :try_start_a
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    invoke-interface {v10, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->ReleaseMutex(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2461
    const/4 v3, 0x0

    .line 2464
    const/4 v2, 0x0

    .line 2452
    return-object v8

    .line 2456
    :cond_8
    new-instance v8, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v10

    invoke-direct {v8, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 2450
    :cond_9
    :try_start_b
    new-instance v8, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v10, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v10}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v10

    invoke-direct {v8, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v6    # "result":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2455
    .end local v0    # "target":Ljava/lang/String;
    .end local v5    # "child":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v7    # "parent":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v6    # "result":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v9, p2

    :goto_4
    :try_start_c
    iget-object v5, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    invoke-interface {v5, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->ReleaseMutex(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2456
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0

    .line 2458
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_a
    nop

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2461
    .end local v4    # "mutex":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v6    # "result":I
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v9, p2

    :goto_5
    const/4 v3, 0x0

    .line 2462
    nop

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    :try_start_d
    throw v0

    .line 2408
    .end local v3    # "securityAttributes":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_b
    move-object/from16 v9, p2

    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0

    .line 2405
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :cond_c
    move-object/from16 v9, p2

    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2464
    .restart local v2    # "securityDescriptor":Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v9, p2

    :goto_6
    const/4 v2, 0x0

    .line 2465
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x102 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public decrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "global"    # Z
    .param p4, "count"    # I

    .line 2374
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->openSemaphore(Ljava/io/File;Ljava/lang/String;Z)Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;

    move-result-object v0

    .line 2376
    .local v0, "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    :goto_0
    add-int/lit8 v1, p4, -0x1

    .end local p4    # "count":I
    .local v1, "count":I
    if-lez p4, :cond_0

    .line 2377
    :try_start_0
    sget-object p4, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->getHandle()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p4, v2, v3}, Lcom/sun/jna/platform/win32/Kernel32;->WaitForSingleObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)I

    move-result p4

    .line 2378
    .local p4, "result":I
    sparse-switch p4, :sswitch_data_0

    .line 2385
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2389
    :sswitch_0
    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->close()V

    .line 2383
    return-void

    .line 2381
    :sswitch_1
    nop

    .line 2387
    .end local p4    # "result":I
    move p4, v1

    goto :goto_0

    .line 2385
    .restart local p4    # "result":I
    :goto_1
    :try_start_1
    invoke-direct {v2, p4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v0    # "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    .end local v1    # "count":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2389
    .end local p4    # "result":I
    .restart local v0    # "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    .restart local v1    # "count":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :catchall_0
    move-exception p4

    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->close()V

    .line 2390
    throw p4

    .line 2389
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->close()V

    .line 2390
    nop

    .line 2391
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOwnerIdOf(Ljava/io/File;)I
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public getTemporaryFolder()Ljava/lang/String;
    .locals 4

    .line 2303
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v1, 0x104

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    .line 2304
    .local v0, "length":Lcom/sun/jna/platform/win32/WinDef$DWORD;
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    new-array v1, v1, [C

    .line 2305
    .local v1, "path":[C
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetTempPath(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2308
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2306
    :cond_0
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2
.end method

.method public incrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "global"    # Z
    .param p4, "count"    # I

    .line 2358
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->openSemaphore(Ljava/io/File;Ljava/lang/String;Z)Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;

    move-result-object v0

    .line 2360
    .local v0, "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    :goto_0
    add-int/lit8 v1, p4, -0x1

    .end local p4    # "count":I
    .local v1, "count":I
    if-lez p4, :cond_1

    .line 2361
    :try_start_0
    iget-object p4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;

    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->getHandle()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {p4, v2, v3, v4, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;->ReleaseSemaphore(Lcom/sun/jna/platform/win32/WinNT$HANDLE;JLjava/lang/Long;)Z

    move-result p4

    if-eqz p4, :cond_0

    move p4, v1

    goto :goto_0

    .line 2362
    :cond_0
    new-instance p4, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {p4, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v0    # "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    .end local v1    # "count":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "global":Z
    throw p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2366
    .restart local v0    # "handle":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
    .restart local v1    # "count":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "global":Z
    :catchall_0
    move-exception p4

    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->close()V

    .line 2367
    throw p4

    .line 2366
    :cond_1
    invoke-virtual {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->close()V

    .line 2367
    nop

    .line 2368
    return-void
.end method

.method public isExistingProcess(I)Z
    .locals 5
    .param p1, "processId"    # I

    .line 2329
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/sun/jna/platform/win32/Kernel32;->OpenProcess(IZI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    .line 2330
    .local v0, "handle":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v0, :cond_2

    .line 2333
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2334
    .local v1, "exists":Lcom/sun/jna/ptr/IntByReference;
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetExitCodeProcess(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2337
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    const/16 v4, 0x103

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2335
    :cond_1
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2

    .line 2331
    .end local v1    # "exists":Lcom/sun/jna/ptr/IntByReference;
    :cond_2
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public pid()I
    .locals 1

    .line 2315
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentProcessId()I

    move-result v0

    return v0
.end method

.method public setPermissions(Ljava/io/File;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "permissions"    # I

    .line 2352
    return-void
.end method

.method public userId()I
    .locals 1

    .line 2322
    const/4 v0, 0x0

    return v0
.end method
