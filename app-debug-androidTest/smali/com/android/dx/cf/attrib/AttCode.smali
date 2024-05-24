.class public final Lcom/android/dx/cf/attrib/AttCode;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "AttCode.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Code"


# instance fields
.field private final attributes:Lcom/android/dx/cf/iface/AttributeList;

.field private final catches:Lcom/android/dx/cf/code/ByteCatchList;

.field private final code:Lcom/android/dx/cf/code/BytecodeArray;

.field private final maxLocals:I

.field private final maxStack:I


# direct methods
.method public constructor <init>(IILcom/android/dx/cf/code/BytecodeArray;Lcom/android/dx/cf/code/ByteCatchList;Lcom/android/dx/cf/iface/AttributeList;)V
    .locals 3
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I
    .param p3, "code"    # Lcom/android/dx/cf/code/BytecodeArray;
    .param p4, "catches"    # Lcom/android/dx/cf/code/ByteCatchList;
    .param p5, "attributes"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 57
    const-string v0, "Code"

    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 59
    if-ltz p1, :cond_4

    .line 63
    if-ltz p2, :cond_3

    .line 67
    if-eqz p3, :cond_2

    .line 72
    :try_start_0
    invoke-virtual {p4}, Lcom/android/dx/cf/code/ByteCatchList;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 78
    nop

    .line 81
    :try_start_1
    invoke-interface {p5}, Lcom/android/dx/cf/iface/AttributeList;->isMutable()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    .line 87
    nop

    .line 89
    iput p1, p0, Lcom/android/dx/cf/attrib/AttCode;->maxStack:I

    .line 90
    iput p2, p0, Lcom/android/dx/cf/attrib/AttCode;->maxLocals:I

    .line 91
    iput-object p3, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    .line 92
    iput-object p4, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    .line 93
    iput-object p5, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    .line 94
    return-void

    .line 82
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    const-string v1, "attributes.isMutable()"

    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxStack":I
    .end local p2    # "maxLocals":I
    .end local p3    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local p4    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local p5    # "attributes":Lcom/android/dx/cf/iface/AttributeList;
    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .restart local p1    # "maxStack":I
    .restart local p2    # "maxLocals":I
    .restart local p3    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local p4    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local p5    # "attributes":Lcom/android/dx/cf/iface/AttributeList;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attributes == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    const-string v1, "catches.isMutable()"

    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxStack":I
    .end local p2    # "maxLocals":I
    .end local p3    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .end local p4    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local p5    # "attributes":Lcom/android/dx/cf/iface/AttributeList;
    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 75
    .restart local p1    # "maxStack":I
    .restart local p2    # "maxLocals":I
    .restart local p3    # "code":Lcom/android/dx/cf/code/BytecodeArray;
    .restart local p4    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local p5    # "attributes":Lcom/android/dx/cf/iface/AttributeList;
    :catch_1
    move-exception v0

    .line 77
    .restart local v0    # "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "catches == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLocals < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStack < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteLength()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/BytecodeArray;->byteLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->byteLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    .line 99
    invoke-interface {v1}, Lcom/android/dx/cf/iface/AttributeList;->byteLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    return v0
.end method

.method public getAttributes()Lcom/android/dx/cf/iface/AttributeList;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    return-object v0
.end method

.method public getCatches()Lcom/android/dx/cf/code/ByteCatchList;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    return-object v0
.end method

.method public getCode()Lcom/android/dx/cf/code/BytecodeArray;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/dx/cf/attrib/AttCode;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/dx/cf/attrib/AttCode;->maxStack:I

    return v0
.end method
