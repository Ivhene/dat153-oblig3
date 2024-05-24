.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaWindowsEnvironment;,
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;
    }
.end annotation


# virtual methods
.method public abstract decrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
.end method

.method public abstract getOwnerIdOf(Ljava/io/File;)I
.end method

.method public abstract getTemporaryFolder()Ljava/lang/String;
.end method

.method public abstract incrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
.end method

.method public abstract isExistingProcess(I)Z
.end method

.method public abstract pid()I
.end method

.method public abstract setPermissions(Ljava/io/File;I)V
.end method

.method public abstract userId()I
.end method
