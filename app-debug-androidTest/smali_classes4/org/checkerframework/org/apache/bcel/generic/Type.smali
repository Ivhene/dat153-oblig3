.class public abstract Lorg/checkerframework/org/apache/bcel/generic/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final CLASS:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field public static final DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final NO_ARGS:[Lorg/checkerframework/org/apache/bcel/generic/Type;

.field public static final NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

.field public static final OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field public static final SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field public static final STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field public static final STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field public static final THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field public static final UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

.field public static final VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

.field private static final consumed_chars:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected signature:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected type:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 70
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 71
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 72
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 73
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 74
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 75
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 76
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 77
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;-><init>(B)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 78
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v1, "java.lang.Object"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 79
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v1, "java.lang.Class"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CLASS:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 80
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v1, "java.lang.String"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 81
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v1, "java.lang.StringBuffer"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRINGBUFFER:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 82
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v1, "java.lang.Throwable"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NO_ARGS:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 84
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/Type$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 87
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/Type$2;

    const/16 v1, 0xf

    const-string v2, "<unknown object>"

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/Type$2;-><init>(BLjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 197
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/Type$3;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type$3;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed_chars:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "t"    # B
    .param p2, "s"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    .line 93
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    .line 94
    return-void
.end method

.method static consumed(I)I
    .locals 1
    .param p0, "coded"    # I

    .line 381
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method static encode(II)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "consumed"    # I

    .line 385
    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    return v0
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;

    .line 284
    const-string v0, "Invalid method signature: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v1, "vec":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Type;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 291
    const/4 v2, 0x1

    .line 292
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 293
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 299
    :cond_0
    nop

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 301
    .local v0, "types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 302
    return-object v0

    .line 289
    .end local v0    # "types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "index":I
    :cond_1
    :try_start_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "vec":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Type;>;"
    .end local p0    # "signature":Ljava/lang/String;
    throw v2
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .restart local v1    # "vec":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/Type;>;"
    .restart local p0    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getArgumentTypesSize(Ljava/lang/String;)I
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;

    .line 389
    const-string v0, "Invalid method signature: "

    const/4 v1, 0x0

    .line 392
    .local v1, "res":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 395
    const/4 v2, 0x1

    .line 396
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getTypeSize(Ljava/lang/String;)I

    move-result v3

    .line 398
    .local v3, "coded":I
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->size(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 399
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 400
    .end local v3    # "coded":I
    goto :goto_0

    .line 403
    :cond_0
    nop

    .line 404
    return v1

    .line 393
    .end local v2    # "index":I
    :cond_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "res":I
    .end local p0    # "signature":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .restart local v1    # "res":I
    .restart local p0    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getMethodSignature(Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;
    .locals 5
    .param p0, "return_type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p1, "arg_types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 187
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 188
    .local v3, "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .end local v3    # "arg_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 4
    .param p0, "signature"    # Ljava/lang/String;

    .line 269
    const/16 v0, 0x29

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 270
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 271
    .end local v0    # "index":I
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getReturnTypeSize(Ljava/lang/String;)I
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;

    .line 430
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 431
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getTypeSize(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->size(I)I

    move-result v1

    return v1
.end method

.method public static getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 6
    .param p0, "meth"    # Ljava/lang/reflect/Method;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 368
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 369
    .local v4, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .end local v4    # "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getType(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/org/apache/bcel/generic/Type;"
        }
    .end annotation

    .line 311
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    .line 317
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 321
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 322
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 323
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 324
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 325
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 326
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 327
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 328
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 329
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 330
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 331
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 332
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 333
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 334
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 335
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 336
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 337
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 338
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 339
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 341
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ooops, what primitive type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    return-object v0

    .line 312
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .line 227
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->typeOfSignature(Ljava/lang/String;)B

    move-result v0

    .line 228
    .local v0, "type":B
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 230
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 231
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType(B)Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-result-object v1

    return-object v1

    .line 232
    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "dim":I
    :cond_1
    add-int/2addr v1, v2

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_1

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 242
    .local v2, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v4

    add-int/2addr v4, v1

    .line 243
    .local v4, "_temp":I
    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 244
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-direct {v3, v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    return-object v3

    .line 249
    .end local v1    # "dim":I
    .end local v2    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v4    # "_temp":I
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "parsedSignature":Ljava/lang/String;
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 252
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v3

    return-object v3
.end method

.method static getTypeSize(Ljava/lang/String;)I
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .line 408
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->typeOfSignature(Ljava/lang/String;)B

    move-result v0

    .line 409
    .local v0, "type":B
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 410
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType(B)Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getSize()I

    move-result v1

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->encode(II)I

    move-result v1

    return v1

    .line 411
    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 412
    const/4 v1, 0x0

    .line 414
    .local v1, "dim":I
    :cond_1
    add-int/2addr v1, v2

    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_1

    .line 417
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getTypeSize(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->consumed(I)I

    move-result v3

    .line 418
    .local v3, "consumed":I
    add-int v4, v1, v3

    invoke-static {v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->encode(II)I

    move-result v2

    return v2

    .line 420
    .end local v1    # "dim":I
    .end local v3    # "consumed":I
    :cond_2
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 421
    .local v1, "index":I
    if-ltz v1, :cond_3

    .line 424
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->encode(II)I

    move-result v2

    return v2

    .line 422
    :cond_3
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getTypes([Ljava/lang/Class;)[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lorg/checkerframework/org/apache/bcel/generic/Type;"
        }
    .end annotation

    .line 357
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 358
    .local v0, "ret":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 359
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    aput-object v2, v0, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static size(I)I
    .locals 1
    .param p0, "coded"    # I

    .line 377
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static unwrap(Ljava/lang/ThreadLocal;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 208
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static wrap(Ljava/lang/ThreadLocal;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 213
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 111
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 113
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-byte v2, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    iget-byte v3, v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 115
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_1
    return v1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 152
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    sparse-switch v0, :sswitch_data_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 157
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 155
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public getType()B
    .locals 1

    .line 131
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 102
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public normalizeForStackOrLocal()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 142
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    return-object p0

    .line 143
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0
.end method

.method setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .line 441
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 171
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->type:B

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    .line 172
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Type;->signature:Ljava/lang/String;

    :goto_1
    return-object v0
.end method
