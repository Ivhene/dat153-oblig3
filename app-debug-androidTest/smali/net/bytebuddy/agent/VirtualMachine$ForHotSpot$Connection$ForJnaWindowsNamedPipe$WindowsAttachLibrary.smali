.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsAttachLibrary;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "WindowsAttachLibrary"
.end annotation


# virtual methods
.method public abstract allocate_remote_argument(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$LPVOID;
.end method

.method public abstract allocate_remote_code(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$LPVOID;
.end method
