.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "WindowsLibrary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;
    }
.end annotation


# static fields
.field public static final SEMAPHORE_ALL_ACCESS:I = 0x1f0003


# virtual methods
.method public abstract CreateMutex(Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment$WindowsLibrary$SecurityAttributes;ZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateSemaphoreW(Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;JJLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenMutex(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenSemaphoreW(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract ReleaseMutex(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract ReleaseSemaphore(Lcom/sun/jna/platform/win32/WinNT$HANDLE;JLjava/lang/Long;)Z
.end method
