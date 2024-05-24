.class public final enum Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
.super Ljava/lang/Enum;
.source "ConversionCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/formatter/qual/ConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# instance fields
.field public final chars:Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 33
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "bBhHsS"

    const-string v2, "GENERAL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 40
    new-instance v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/Byte;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Short;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Integer;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-string v6, "cC"

    const-string v10, "CHAR"

    invoke-direct {v1, v10, v7, v5, v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 46
    new-instance v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x5

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Byte;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/Short;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/Integer;

    aput-object v11, v10, v8

    const-class v11, Ljava/lang/Long;

    aput-object v11, v10, v9

    const-class v11, Ljava/math/BigInteger;

    aput-object v11, v10, v2

    const-string v11, "doxX"

    const-string v12, "INT"

    invoke-direct {v5, v12, v8, v10, v11}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 54
    new-instance v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    aput-object v12, v11, v3

    const-class v12, Ljava/lang/Double;

    aput-object v12, v11, v7

    const-class v12, Ljava/math/BigDecimal;

    aput-object v12, v11, v8

    const-string v12, "eEfgGaA"

    const-string v13, "FLOAT"

    invoke-direct {v10, v13, v9, v11, v12}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 60
    new-instance v11, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v12, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Long;

    aput-object v13, v12, v3

    const-class v13, Ljava/util/Calendar;

    aput-object v13, v12, v7

    const-class v13, Ljava/util/Date;

    aput-object v13, v12, v8

    const-string v13, "tT"

    const-string v14, "TIME"

    invoke-direct {v11, v14, v2, v12, v13}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 80
    new-instance v12, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v2, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Byte;

    aput-object v9, v2, v3

    const-class v9, Ljava/lang/Short;

    aput-object v9, v2, v7

    const-class v9, Ljava/lang/Integer;

    aput-object v9, v2, v8

    const-string v8, "CHAR_AND_INT"

    invoke-direct {v12, v8, v6, v2, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 82
    new-instance v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Long;

    aput-object v7, v2, v3

    const-string v7, "INT_AND_TIME"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v2, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 94
    new-instance v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const-string v8, "NULL"

    invoke-direct {v7, v8, v2, v3, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 107
    new-instance v8, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v2, "UNUSED"

    const/16 v3, 0x8

    invoke-direct {v8, v2, v3, v4, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 31
    move-object v2, v5

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    filled-new-array/range {v0 .. v8}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p4, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    .line 112
    iput-object p4, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 143
    .local p0, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private className(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 241
    const-string v0, "boolean"

    return-object v0

    .line 243
    :cond_0
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_1

    .line 244
    const-string v0, "char"

    return-object v0

    .line 246
    :cond_1
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_2

    .line 247
    const-string v0, "byte"

    return-object v0

    .line 249
    :cond_2
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_3

    .line 250
    const-string v0, "short"

    return-object v0

    .line 252
    :cond_3
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_4

    .line 253
    const-string v0, "int"

    return-object v0

    .line 255
    :cond_4
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_5

    .line 256
    const-string v0, "long"

    return-object v0

    .line 258
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 259
    const-string v0, "float"

    return-object v0

    .line 261
    :cond_6
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_7

    .line 262
    const-string v0, "double"

    return-object v0

    .line 264
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromConversionChar(C)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 5
    .param p0, "c"    # C

    .line 134
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 135
    .local v2, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v3, v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    return-object v2

    .line 134
    .end local v2    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad conversion character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 9
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 166
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_0

    .line 167
    return-object p1

    .line 169
    :cond_0
    if-ne p1, v0, :cond_1

    .line 170
    return-object p0

    .line 172
    :cond_1
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_2

    .line 173
    return-object p1

    .line 175
    :cond_2
    if-ne p1, v0, :cond_3

    .line 176
    return-object p0

    .line 179
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 180
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 181
    .local v1, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 183
    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v8, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    filled-new-array/range {v2 .. v8}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    .line 186
    .local v4, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v5, v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 187
    .local v5, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    return-object v4

    .line 183
    .end local v4    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v5    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static isSubsetOf(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Z
    .locals 1
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 147
    invoke-static {p0, p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static union(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 9
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 210
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 213
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_7

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v2, :cond_2

    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p1, v0, :cond_3

    :cond_2
    sget-object v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v3, :cond_4

    if-ne p1, v2, :cond_4

    .line 220
    :cond_3
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0

    .line 223
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 224
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 225
    .local v8, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v0, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 227
    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v7, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    filled-new-array/range {v1 .. v7}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_6

    aget-object v3, v1, v2

    .line 230
    .local v3, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v4, v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 231
    .local v4, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    return-object v3

    .line 227
    .end local v3    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v4    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_6
    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v1

    .line 214
    .end local v0    # "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    .end local v8    # "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_7
    :goto_1
    return-object v0

    .line 211
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 31
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " conversion category (one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/4 v1, 0x1

    .line 274
    .local v1, "first":Z
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 275
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 276
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x0

    .line 274
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
