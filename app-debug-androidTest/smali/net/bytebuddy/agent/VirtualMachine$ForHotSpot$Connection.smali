.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    }
.end annotation


# virtual methods
.method public varargs abstract execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
