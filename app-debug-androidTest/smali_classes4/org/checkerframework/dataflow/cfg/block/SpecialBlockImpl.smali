.class public Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
.super Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
.source "SpecialBlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;


# instance fields
.field protected final specialType:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    .line 9
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    .line 10
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;->specialType:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    .line 11
    return-void
.end method


# virtual methods
.method public getSpecialType()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;->specialType:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialBlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;->specialType:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
