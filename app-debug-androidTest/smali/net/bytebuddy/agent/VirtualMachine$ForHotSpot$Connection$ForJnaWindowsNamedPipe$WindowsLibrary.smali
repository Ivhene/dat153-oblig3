.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$WindowsLibrary;
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
    name = "WindowsLibrary"
.end annotation


# virtual methods
.method public abstract CreateRemoteThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract GetExitCodeThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract VirtualAllocEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;III)Lcom/sun/jna/Pointer;
.end method

.method public abstract VirtualFreeEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;II)Z
.end method
