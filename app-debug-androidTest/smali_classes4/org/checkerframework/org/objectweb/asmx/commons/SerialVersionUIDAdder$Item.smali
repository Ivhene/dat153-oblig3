.class Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;
.super Ljava/lang/Object;
.source "SerialVersionUIDAdder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field access:I

.field desc:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    .line 477
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->access:I

    .line 478
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    .line 479
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 482
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    .line 483
    .local v0, "other":Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "retVal":I
    if-nez v1, :cond_0

    .line 485
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 487
    :cond_0
    return v1
.end method
