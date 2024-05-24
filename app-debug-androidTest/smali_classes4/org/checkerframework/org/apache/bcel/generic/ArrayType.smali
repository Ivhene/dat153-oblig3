.class public final Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
.super Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
.source "ArrayType.java"


# instance fields
.field private basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

.field private dimensions:I


# direct methods
.method public constructor <init>(BI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "dimensions"    # I

    .line 42
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType(B)Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "dimensions"    # I

    .line 52
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p2, "dimensions"    # I

    .line 64
    const/16 v0, 0xd

    const-string v1, "<dummy, will be replaced before end of constructor>"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0xff

    if-gt p2, v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    .line 78
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    goto :goto_0

    .line 70
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 71
    .local v0, "array":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    iget v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    .line 72
    iget-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 73
    goto :goto_0

    .line 75
    .end local v0    # "array":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :pswitch_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Invalid type: void[]"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    if-ge v1, v2, :cond_0

    .line 83
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->setSignature(Ljava/lang/String;)V

    .line 87
    return-void

    .line 66
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "_type"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 128
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 130
    .local v0, "array":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    iget v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 132
    .end local v0    # "array":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    :cond_1
    return v1
.end method

.method public getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    return v0
.end method

.method public getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 4

    .line 102
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0

    .line 105
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    return-object v2
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->basic_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->dimensions:I

    xor-int/2addr v0, v1

    return v0
.end method
