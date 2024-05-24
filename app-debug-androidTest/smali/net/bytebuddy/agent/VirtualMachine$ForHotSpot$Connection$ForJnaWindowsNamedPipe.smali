.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJnaWindowsNamedPipe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;
    }
.end annotation


# static fields
.field private static final MEM_RELEASE:I = 0x8000


# instance fields
.field private final attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

.field private final code:Lcom/sun/jna/platform/win32/WinDef$LPVOID;

.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

.field private final process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)V
    .locals 1
    .param p1, "library"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;
    .param p2, "attachLibrary"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;
    .param p3, "process"    # Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .param p4, "code"    # Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    .line 992
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    .line 993
    iput-object p3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 994
    iput-object p4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->code:Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    .line 995
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->random:Ljava/security/SecureRandom;

    .line 996
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1078
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->code:Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$LPVOID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x8000

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;->VirtualFreeEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1082
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    return-void

    .line 1083
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1079
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1083
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1085
    :cond_2
    throw v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    .locals 24
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "argument"    # [Ljava/lang/String;

    .line 1002
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1004
    array-length v0, v3

    const/4 v4, 0x4

    if-gt v0, v4, :cond_12

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\\\.\\pipe\\javatool"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x1000

    const/16 v13, 0x2000

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v5

    invoke-interface/range {v7 .. v15}, Lcom/sun/jna/platform/win32/Kernel32;->CreateNamedPipe(Ljava/lang/String;IIIIIILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v14

    .line 1016
    .local v14, "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v14, :cond_11

    .line 1020
    :try_start_0
    iget-object v7, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    iget-object v8, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    array-length v0, v3

    const/4 v15, 0x0

    const/4 v13, 0x0

    if-ge v0, v6, :cond_0

    move-object v10, v13

    goto :goto_0

    :cond_0
    aget-object v0, v3, v15

    move-object v10, v0

    :goto_0
    array-length v0, v3

    const/4 v9, 0x2

    if-ge v0, v9, :cond_1

    move-object v11, v13

    goto :goto_1

    :cond_1
    aget-object v0, v3, v6

    move-object v11, v0

    :goto_1
    array-length v0, v3

    const/4 v6, 0x3

    if-ge v0, v6, :cond_2

    move-object v12, v13

    goto :goto_2

    :cond_2
    aget-object v0, v3, v9

    move-object v12, v0

    :goto_2
    array-length v0, v3

    if-ge v0, v4, :cond_3

    move-object v0, v13

    goto :goto_3

    :cond_3
    aget-object v0, v3, v6

    :goto_3
    move-object v9, v5

    move-object v4, v13

    move-object v13, v0

    invoke-interface/range {v7 .. v13}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;->allocate_remote_argument(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v0

    .line 1026
    .local v6, "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    if-eqz v6, :cond_e

    .line 1030
    const v7, 0x8000

    :try_start_1
    iget-object v0, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iget-object v8, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v9, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->code:Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinDef$LPVOID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v20

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinDef$LPVOID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    invoke-interface/range {v16 .. v23}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;->CreateRemoteThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v0

    .line 1031
    .local v8, "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v8, :cond_c

    .line 1035
    :try_start_2
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v9, -0x1

    invoke-interface {v0, v8, v9}, Lcom/sun/jna/platform/win32/Kernel32;->WaitForSingleObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)I

    move-result v0

    .line 1036
    .local v0, "result":I
    if-nez v0, :cond_a

    .line 1039
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1040
    .local v9, "exitCode":Lcom/sun/jna/ptr/IntByReference;
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    invoke-interface {v10, v8, v9}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;->GetExitCodeThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1042
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v10

    if-nez v10, :cond_8

    .line 1045
    sget-object v10, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v10, v14, v4}, Lcom/sun/jna/platform/win32/Kernel32;->ConnectNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1046
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    .line 1047
    .local v4, "code":I
    const/16 v10, 0x217

    if-ne v4, v10, :cond_4

    goto :goto_4

    .line 1048
    :cond_4
    new-instance v10, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v10, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v10

    .line 1051
    .end local v4    # "code":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_5
    :goto_4
    new-instance v4, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;

    invoke-direct {v4, v14}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;-><init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1053
    :try_start_3
    sget-object v10, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v10, v8}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_7

    .line 1058
    :try_start_4
    iget-object v10, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iget-object v11, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinDef$LPVOID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v12

    invoke-interface {v10, v11, v12, v15, v7}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;->VirtualFreeEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1051
    return-object v4

    .line 1059
    :cond_6
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v7

    invoke-direct {v4, v7}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1054
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v10

    invoke-direct {v4, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1043
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_8
    :try_start_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target VM could not dispatch command successfully: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v4

    .line 1041
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_9
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v10

    invoke-direct {v4, v10}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v4

    .line 1037
    .end local v9    # "exitCode":Lcom/sun/jna/ptr/IntByReference;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_a
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v4, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1053
    .end local v0    # "result":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_7
    sget-object v4, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v4, v8}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1054
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0

    .line 1056
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_b
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0

    .line 1032
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_c
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1058
    .end local v8    # "thread":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v4, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iget-object v8, v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;->process:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinDef$LPVOID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    invoke-interface {v4, v8, v9, v15, v7}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;->VirtualFreeEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;II)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1059
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0

    .line 1061
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_d
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0

    .line 1027
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_e
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1062
    .end local v6    # "data":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    .line 1063
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v4, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v4, v14}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1065
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_f

    .line 1066
    move-object v4, v0

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 1068
    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1064
    :cond_10
    new-instance v4, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v4

    .line 1017
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_11
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1005
    .end local v5    # "name":Ljava/lang/String;
    .end local v14    # "pipe":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot supply more then four arguments to Windows attach mechanism: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
