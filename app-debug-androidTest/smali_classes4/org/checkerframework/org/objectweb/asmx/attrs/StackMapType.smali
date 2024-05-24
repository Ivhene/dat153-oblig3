.class public Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
.super Ljava/lang/Object;
.source "StackMapType.java"


# static fields
.field public static final ITEM_Double:I = 0x3

.field public static final ITEM_Float:I = 0x2

.field public static final ITEM_Integer:I = 0x1

.field public static final ITEM_Long:I = 0x4

.field public static final ITEM_NAMES:[Ljava/lang/String;

.field public static final ITEM_Null:I = 0x5

.field public static final ITEM_Object:I = 0x7

.field public static final ITEM_Top:I = 0x0

.field public static final ITEM_Uninitialized:I = 0x8

.field public static final ITEM_UninitializedThis:I = 0x6


# instance fields
.field private object:Ljava/lang/String;

.field private offset:Lorg/checkerframework/org/objectweb/asmx/Label;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    const-string v0, "Top"

    const-string v1, "Integer"

    const-string v2, "Float"

    const-string v3, "Double"

    const-string v4, "Long"

    const-string v5, "Null"

    const-string v6, "UninitializedThis"

    const-string v7, "Object"

    const-string v8, "Uninitialized"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->type:I

    .line 75
    return-void
.end method

.method public static getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    .locals 3
    .param p0, "itemType"    # I

    .line 82
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    .line 85
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;-><init>(I)V

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->offset:Lorg/checkerframework/org/objectweb/asmx/Label;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->object:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->type:I

    return v0
.end method

.method public setLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "offset"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 89
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->offset:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 90
    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->object:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->type:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 107
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->object:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 110
    const-string v1, ":L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->offset:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
