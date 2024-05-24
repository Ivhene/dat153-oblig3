.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;
.super Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
    }
.end annotation


# instance fields
.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "temporaryDirectory"    # Ljava/lang/String;
    .param p2, "attempts"    # I
    .param p3, "pause"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 876
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V

    .line 877
    const-string v0, "c"

    const-class v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    .line 878
    return-void
.end method

.method public static withDefaultTemporaryFolder(IJLjava/util/concurrent/TimeUnit;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;
    .locals 9
    .param p0, "attempts"    # I
    .param p1, "pause"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 892
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    const-string v0, "c"

    const-class v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;

    .line 894
    .local v0, "library":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
    new-instance v1, Lcom/sun/jna/Memory;

    const-wide/16 v2, 0x1000

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 896
    .local v1, "memory":Lcom/sun/jna/Memory;
    :try_start_0
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v4

    const v6, 0x10001

    invoke-interface {v0, v6, v1, v4, v5}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;->confstr(ILcom/sun/jna/Pointer;J)J

    move-result-wide v4

    .line 897
    .local v4, "length":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    invoke-virtual {v1, v6, v7}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "temporaryDirectory":Ljava/lang/String;
    goto :goto_1

    .line 898
    .end local v2    # "temporaryDirectory":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "/tmp"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .end local v4    # "length":J
    .restart local v2    # "temporaryDirectory":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 904
    nop

    .line 905
    .end local v0    # "library":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
    .end local v1    # "memory":Lcom/sun/jna/Memory;
    goto :goto_2

    .line 903
    .end local v2    # "temporaryDirectory":Ljava/lang/String;
    .restart local v0    # "library":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
    .restart local v1    # "memory":Lcom/sun/jna/Memory;
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .line 904
    throw v2

    .line 906
    .end local v0    # "library":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory$MacLibrary;
    .end local v1    # "memory":Lcom/sun/jna/Memory;
    :cond_2
    const-string v2, "/tmp"

    .line 908
    .restart local v2    # "temporaryDirectory":Ljava/lang/String;
    :goto_2
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;

    move-object v3, v0

    move-object v4, v2

    move v5, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public doConnect(Ljava/io/File;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .locals 2
    .param p1, "socket"    # Ljava/io/File;

    .line 918
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;Ljava/io/File;)V

    return-object v0
.end method

.method protected kill(Ljava/lang/String;I)V
    .locals 2
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "signal"    # I

    .line 913
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$PosixLibrary;->kill(II)I

    .line 914
    return-void
.end method
