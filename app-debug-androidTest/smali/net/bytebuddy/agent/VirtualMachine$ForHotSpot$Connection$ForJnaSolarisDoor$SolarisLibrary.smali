.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "SolarisLibrary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    }
.end annotation


# virtual methods
.method public abstract close(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract door_call(ILnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;)I
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

.method public abstract open(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract read(ILjava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method
