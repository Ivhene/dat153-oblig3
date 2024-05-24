.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NamedPipeResponse"
.end annotation


# instance fields
.field private final pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method protected constructor <init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 0
    .param p1, "pipe"    # Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;->pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 1203
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1226
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;->pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->DisconnectNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1230
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;->pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    return-void

    .line 1231
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1227
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;->pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1231
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1233
    :cond_2
    throw v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B

    .line 1209
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1210
    .local v4, "read":Lcom/sun/jna/ptr/IntByReference;
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$NamedPipeResponse;->pipe:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    array-length v3, p1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Kernel32;->ReadFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1211
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    .line 1212
    .local v0, "code":I
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    .line 1213
    const/4 v1, -0x1

    return v1

    .line 1215
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1

    .line 1218
    .end local v0    # "code":I
    :cond_1
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    return v0
.end method
