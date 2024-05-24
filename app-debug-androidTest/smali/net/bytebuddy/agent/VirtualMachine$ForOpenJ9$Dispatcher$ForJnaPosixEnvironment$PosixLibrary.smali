.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PosixLibrary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    }
.end annotation


# static fields
.field public static final EAGAIN:I = 0xb

.field public static final EDEADLK:I = 0x23

.field public static final ESRCH:I = 0x3

.field public static final IPC_NOWAIT:S = 0x800s

.field public static final NULL_SIGNAL:I = 0x0

.field public static final SEM_UNDO:S = 0x1000s


# virtual methods
.method public abstract chmod(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ftok(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract getpid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract getuid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract kill(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract semget(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract semop(ILnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method
