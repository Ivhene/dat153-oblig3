.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;
.super Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "pause"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 1536
    const-string v1, "/tmp"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V

    .line 1537
    const-string v0, "c"

    const-class v1, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    .line 1538
    return-void
.end method


# virtual methods
.method protected doConnect(Ljava/io/File;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .locals 2
    .param p1, "socket"    # Ljava/io/File;

    .line 1551
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;Ljava/io/File;)V

    return-object v0
.end method

.method protected kill(Ljava/lang/String;I)V
    .locals 2
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "signal"    # I

    .line 1544
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->kill(II)I

    .line 1545
    return-void
.end method
