.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Response"
.end annotation


# instance fields
.field private final handle:I

.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;I)V
    .locals 0
    .param p1, "library"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;
    .param p2, "handle"    # I

    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    .line 1498
    iput p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->handle:I

    .line 1499
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1513
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    iget v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->handle:I

    invoke-interface {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->close(I)I

    .line 1514
    return-void
.end method

.method public read([B)I
    .locals 4
    .param p1, "buffer"    # [B

    .line 1505
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    iget v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;->handle:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p1

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->read(ILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 1506
    .local v0, "read":I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method
