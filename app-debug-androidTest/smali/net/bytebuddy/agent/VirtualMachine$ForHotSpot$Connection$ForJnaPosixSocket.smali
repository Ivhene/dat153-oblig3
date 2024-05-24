.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;
.super Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJnaPosixSocket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

.field private final socket:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;Ljava/io/File;)V
    .locals 0
    .param p1, "library"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;
    .param p2, "socket"    # Ljava/io/File;

    .line 704
    invoke-direct {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;-><init>()V

    .line 705
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    .line 706
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->socket:Ljava/io/File;

    .line 707
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 748
    return-void
.end method

.method protected close(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "handle"    # Ljava/lang/Integer;

    .line 740
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->close(I)I

    .line 741
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method protected connect()Ljava/lang/Integer;
    .locals 4

    .line 711
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->socket(III)I

    move-result v0

    .line 713
    .local v0, "handle":I
    :try_start_0
    new-instance v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;

    invoke-direct {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .local v1, "address":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;
    :try_start_1
    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->socket:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;->setPath(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;->size()I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->connect(ILnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;I)I

    .line 717
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    const/4 v1, 0x0

    .line 717
    return-object v2

    .line 719
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .line 720
    nop

    .end local v0    # "handle":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 721
    .end local v1    # "address":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary$SocketAddress;
    .restart local v0    # "handle":I
    :catch_0
    move-exception v1

    .line 722
    .local v1, "exception":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-interface {v2, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->close(I)I

    .line 723
    throw v1
.end method

.method protected bridge synthetic connect()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->connect()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected read(Ljava/lang/Integer;[B)I
    .locals 4
    .param p1, "handle"    # Ljava/lang/Integer;
    .param p2, "buffer"    # [B

    .line 729
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->read(ILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 730
    .local v0, "read":I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method protected bridge synthetic read(Ljava/lang/Object;[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->read(Ljava/lang/Integer;[B)I

    move-result p1

    return p1
.end method

.method protected write(Ljava/lang/Integer;[B)V
    .locals 4
    .param p1, "handle"    # Ljava/lang/Integer;
    .param p2, "buffer"    # [B

    .line 735
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->write(ILjava/nio/ByteBuffer;I)I

    .line 736
    return-void
.end method

.method protected bridge synthetic write(Ljava/lang/Object;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;->write(Ljava/lang/Integer;[B)V

    return-void
.end method
