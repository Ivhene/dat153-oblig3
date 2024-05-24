.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
.super Lcom/sun/jna/Structure;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoorArgument"
.end annotation


# instance fields
.field public dataPointer:Lcom/sun/jna/Pointer;

.field public dataSize:I

.field public descriptorCount:I

.field public descriptorPointer:Lcom/sun/jna/Pointer;

.field public resultPointer:Lcom/sun/jna/Pointer;

.field public resultSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1436
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1470
    const-string v0, "dataPointer"

    const-string v1, "dataSize"

    const-string v2, "descriptorPointer"

    const-string v3, "descriptorCount"

    const-string v4, "resultPointer"

    const-string v5, "resultSize"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
