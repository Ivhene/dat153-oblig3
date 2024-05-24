.class public final Lcom/android/dx/rop/type/Prototype;
.super Ljava/lang/Object;
.source "Prototype.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/type/Prototype;",
        ">;"
    }
.end annotation


# static fields
.field private static final internTable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/android/dx/rop/type/Prototype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

.field private final parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

.field private final returnType:Lcom/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "returnType"    # Lcom/android/dx/rop/type/Type;
    .param p3, "parameterTypes"    # Lcom/android/dx/rop/type/StdTypeList;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    if-eqz p1, :cond_2

    .line 248
    if-eqz p2, :cond_1

    .line 252
    if-eqz p3, :cond_0

    .line 256
    iput-object p1, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    .line 258
    iput-object p3, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    .line 260
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterTypes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "returnType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearInternTable()V
    .locals 1

    .line 135
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 136
    return-void
.end method

.method public static fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;
    .locals 9
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Prototype;

    .line 86
    .local v0, "result":Lcom/android/dx/rop/type/Prototype;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/android/dx/rop/type/Prototype;->makeParameterArray(Ljava/lang/String;)[Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 91
    .local v1, "params":[Lcom/android/dx/rop/type/Type;
    const/4 v2, 0x0

    .line 92
    .local v2, "paramCount":I
    const/4 v3, 0x1

    .line 95
    .local v3, "at":I
    :goto_0
    move v4, v3

    .line 96
    .local v4, "startAt":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 97
    .local v5, "c":C
    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    nop

    .line 124
    .end local v4    # "startAt":I
    .end local v5    # "c":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    .line 125
    .local v4, "returnType":Lcom/android/dx/rop/type/Type;
    new-instance v5, Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v2}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 127
    .local v5, "parameterTypes":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 128
    aget-object v7, v1, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 131
    .end local v6    # "i":I
    :cond_1
    new-instance v6, Lcom/android/dx/rop/type/Prototype;

    invoke-direct {v6, p0, v4, v5}, Lcom/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V

    return-object v6

    .line 103
    .local v4, "startAt":I
    .local v5, "c":C
    :cond_2
    :goto_2
    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    .line 108
    :cond_3
    const/16 v6, 0x4c

    if-ne v5, v6, :cond_5

    .line 110
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 111
    .local v6, "endAt":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    .end local v3    # "at":I
    .local v6, "at":I
    move v3, v6

    goto :goto_3

    .line 112
    .restart local v3    # "at":I
    .local v6, "endAt":I
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "bad descriptor"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    .end local v6    # "endAt":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 119
    :goto_3
    nop

    .line 120
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v6

    aput-object v6, v1, v2

    .line 121
    nop

    .end local v4    # "startAt":I
    .end local v5    # "c":C
    add-int/lit8 v2, v2, 0x1

    .line 122
    goto :goto_0
.end method

.method public static intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;
    .locals 2
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 59
    if-eqz p0, :cond_1

    .line 63
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Prototype;

    .line 64
    .local v0, "result":Lcom/android/dx/rop/type/Prototype;
    if-eqz v0, :cond_0

    .line 65
    return-object v0

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    return-object v1

    .line 60
    .end local v0    # "result":Lcom/android/dx/rop/type/Prototype;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intern(Ljava/lang/String;Lcom/android/dx/rop/type/Type;ZZ)Lcom/android/dx/rop/type/Prototype;
    .locals 2
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "definer"    # Lcom/android/dx/rop/type/Type;
    .param p2, "isStatic"    # Z
    .param p3, "isInit"    # Z

    .line 197
    invoke-static {p0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 199
    .local v0, "base":Lcom/android/dx/rop/type/Prototype;
    if-eqz p2, :cond_0

    .line 200
    return-object v0

    .line 203
    :cond_0
    if-eqz p3, :cond_1

    .line 204
    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/android/dx/rop/type/Type;->asUninitialized(I)Lcom/android/dx/rop/type/Type;

    move-result-object p1

    .line 207
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    return-object v1
.end method

.method public static internInts(Lcom/android/dx/rop/type/Type;I)Lcom/android/dx/rop/type/Prototype;
    .locals 3
    .param p0, "returnType"    # Lcom/android/dx/rop/type/Type;
    .param p1, "count"    # I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 226
    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    return-object v1
.end method

.method private static makeParameterArray(Ljava/lang/String;)[Lcom/android/dx/rop/type/Type;
    .locals 7
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    const-string v3, "bad descriptor"

    if-ne v1, v2, :cond_5

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "closeAt":I
    const/4 v2, 0x0

    .line 161
    .local v2, "maxParams":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x29

    if-ge v4, v0, :cond_2

    .line 162
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 163
    .local v6, "c":C
    if-ne v6, v5, :cond_0

    .line 164
    move v1, v4

    .line 165
    goto :goto_1

    .line 167
    :cond_0
    const/16 v5, 0x41

    if-lt v6, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v6, v5, :cond_1

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 161
    .end local v6    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    add-int/lit8 v4, v0, -0x1

    if-eq v1, v4, :cond_4

    .line 176
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 180
    new-array v3, v2, [Lcom/android/dx/rop/type/Type;

    return-object v3

    .line 177
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v1    # "closeAt":I
    .end local v2    # "maxParams":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;
    .locals 2
    .param p0, "desc"    # Lcom/android/dx/rop/type/Prototype;

    .line 418
    sget-object v0, Lcom/android/dx/rop/type/Prototype;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/Prototype;

    .line 419
    .local v0, "result":Lcom/android/dx/rop/type/Prototype;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/type/Prototype;)I
    .locals 8
    .param p1, "other"    # Lcom/android/dx/rop/type/Prototype;

    .line 289
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 290
    return v0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    iget-object v2, p1, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    move-result v1

    .line 301
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 302
    return v1

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v2}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v2

    .line 306
    .local v2, "thisSize":I
    iget-object v3, p1, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v3}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v3

    .line 307
    .local v3, "otherSize":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 309
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 310
    iget-object v6, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v6, v5}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v6

    .line 311
    .local v6, "thisType":Lcom/android/dx/rop/type/Type;
    iget-object v7, p1, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v7, v5}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v7

    .line 313
    .local v7, "otherType":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v6, v7}, Lcom/android/dx/rop/type/Type;->compareTo(Lcom/android/dx/rop/type/Type;)I

    move-result v1

    .line 315
    if-eqz v1, :cond_2

    .line 316
    return v1

    .line 309
    .end local v6    # "thisType":Lcom/android/dx/rop/type/Type;
    .end local v7    # "otherType":Lcom/android/dx/rop/type/Type;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 320
    .end local v5    # "i":I
    :cond_3
    if-ge v2, v3, :cond_4

    .line 321
    const/4 v0, -0x1

    return v0

    .line 322
    :cond_4
    if-le v2, v3, :cond_5

    .line 323
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 265
    if-ne p0, p1, :cond_0

    .line 270
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/type/Prototype;

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/type/Prototype;

    iget-object v1, v1, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterFrameTypes()Lcom/android/dx/rop/type/StdTypeList;
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    if-nez v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 373
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 374
    .local v1, "list":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v2, 0x0

    .line 375
    .local v2, "any":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 376
    iget-object v4, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v4, v3}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v4

    .line 377
    .local v4, "one":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    const/4 v2, 0x1

    .line 379
    sget-object v4, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    .line 381
    :cond_0
    invoke-virtual {v1, v3, v4}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 375
    .end local v4    # "one":Lcom/android/dx/rop/type/Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    .end local v3    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    :goto_1
    iput-object v3, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    .line 386
    .end local v0    # "sz":I
    .end local v1    # "list":Lcom/android/dx/rop/type/StdTypeList;
    .end local v2    # "any":Z
    :cond_3
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterFrameTypes:Lcom/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getReturnType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;
    .locals 4
    .param p1, "param"    # Lcom/android/dx/rop/type/Type;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->descriptor:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "newDesc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dx/rop/type/Prototype;->parameterTypes:Lcom/android/dx/rop/type/StdTypeList;

    invoke-virtual {v1, p1}, Lcom/android/dx/rop/type/StdTypeList;->withFirst(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    .line 401
    .local v1, "newParams":Lcom/android/dx/rop/type/StdTypeList;
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 403
    new-instance v2, Lcom/android/dx/rop/type/Prototype;

    iget-object v3, p0, Lcom/android/dx/rop/type/Prototype;->returnType:Lcom/android/dx/rop/type/Type;

    invoke-direct {v2, v0, v3, v1}, Lcom/android/dx/rop/type/Prototype;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/StdTypeList;)V

    .line 406
    .local v2, "result":Lcom/android/dx/rop/type/Prototype;
    invoke-static {v2}, Lcom/android/dx/rop/type/Prototype;->putIntern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v3

    return-object v3
.end method
