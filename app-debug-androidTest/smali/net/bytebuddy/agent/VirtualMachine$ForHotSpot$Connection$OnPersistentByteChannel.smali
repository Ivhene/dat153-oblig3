.class public abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnPersistentByteChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;"
    }
.end annotation


# static fields
.field private static final BLANK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->BLANK:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 579
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "argument"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->connect()Ljava/lang/Object;

    move-result-object v1

    .line 592
    .local v1, "connection":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->write(Ljava/lang/Object;[B)V

    .line 593
    sget-object v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->BLANK:[B

    invoke-virtual {p0, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->write(Ljava/lang/Object;[B)V

    .line 594
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 595
    .local v4, "anArgument":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->write(Ljava/lang/Object;[B)V

    .line 598
    :cond_0
    sget-object v5, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->BLANK:[B

    invoke-virtual {p0, v1, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->write(Ljava/lang/Object;[B)V

    .line 594
    .end local v4    # "anArgument":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_1
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;Ljava/lang/Object;Lnet/bytebuddy/agent/VirtualMachine$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    .line 602
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->close(Ljava/lang/Object;)V

    .line 603
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    .line 605
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 606
    move-object v2, v0

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 608
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 604
    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
.end method

.method protected abstract read(Ljava/lang/Object;[B)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract write(Ljava/lang/Object;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
