.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;
    }
.end annotation


# virtual methods
.method public abstract connect(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
