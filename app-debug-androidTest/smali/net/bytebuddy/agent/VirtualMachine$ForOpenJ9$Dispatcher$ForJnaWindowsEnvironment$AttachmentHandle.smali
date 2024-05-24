.class public Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AttachmentHandle"
.end annotation


# instance fields
.field private final child:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field private final parent:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method protected constructor <init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 0
    .param p1, "parent"    # Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .param p2, "child"    # Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 2593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2594
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->parent:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 2595
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->child:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 2596
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2613
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->child:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2617
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->parent:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    .line 2618
    .local v0, "closed":Z
    nop

    .line 2619
    if-eqz v0, :cond_0

    .line 2622
    return-void

    .line 2620
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1

    .line 2614
    .end local v0    # "closed":Z
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2617
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->parent:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v1

    .line 2618
    .local v1, "closed":Z
    throw v0
.end method

.method protected getHandle()Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 1

    .line 2604
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$AttachmentHandle;->child:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-object v0
.end method
