.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field public static final LIBRARY_NAME:Ljava/lang/String; = "net.bytebuddy.library.name"


# instance fields
.field private final attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    const-class v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "kernel32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    .line 1264
    const-string v0, "net.bytebuddy.library.name"

    const-string v1, "attach_hotspot_windows"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;->attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    .line 1265
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .locals 5
    .param p1, "processId"    # Ljava/lang/String;

    .line 1271
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1f1ffb

    invoke-interface {v0, v3, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->OpenProcess(IZI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    .line 1272
    .local v0, "process":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    if-eqz v0, :cond_3

    .line 1276
    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;->attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    invoke-interface {v1, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;->allocate_remote_code(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$LPVOID;

    move-result-object v1

    .line 1277
    .local v1, "code":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    if-eqz v1, :cond_0

    .line 1280
    new-instance v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;

    iget-object v3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;

    iget-object v4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;->attachLibrary:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;

    invoke-direct {v2, v3, v4, v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)V

    return-object v2

    .line 1278
    :cond_0
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .end local v0    # "process":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .end local p1    # "processId":Ljava/lang/String;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    .end local v1    # "code":Lcom/sun/jna/platform/win32/WinDef$LPVOID;
    .restart local v0    # "process":Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .restart local p1    # "processId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1282
    .local v1, "throwable":Ljava/lang/Throwable;
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1284
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 1285
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1287
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1283
    :cond_2
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2

    .line 1273
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method
