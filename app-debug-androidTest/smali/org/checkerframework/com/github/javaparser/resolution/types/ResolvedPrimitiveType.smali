.class public final enum Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
.super Ljava/lang/Enum;
.source "ResolvedPrimitiveType.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum BOOLEAN:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum BYTE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum CHAR:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum DOUBLE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum FLOAT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum INT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum LONG:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum SHORT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;


# instance fields
.field private boxTypeQName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private promotionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 34
    new-instance v6, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    const-string v3, "byte"

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v6, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->BYTE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 35
    new-instance v13, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v8, "SHORT"

    const/4 v9, 0x1

    const-string v10, "short"

    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v13, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->SHORT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 36
    new-instance v7, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v1, "CHAR"

    const/4 v2, 0x2

    const-string v3, "char"

    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v7, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->CHAR:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 37
    new-instance v8, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v15, "INT"

    const/16 v16, 0x3

    const-string v17, "int"

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    filled-new-array {v6, v13, v7}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object v14, v8

    invoke-direct/range {v14 .. v19}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v8, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 38
    new-instance v9, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v1, "LONG"

    const/4 v2, 0x4

    const-string v3, "long"

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v13, v8, v7}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v9, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->LONG:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 39
    new-instance v10, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v15, "BOOLEAN"

    const/16 v16, 0x5

    const-string v17, "boolean"

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    move-object v14, v10

    invoke-direct/range {v14 .. v19}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v10, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->BOOLEAN:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 40
    new-instance v11, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    const-string v3, "float"

    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v9, v8, v13, v6, v7}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v11, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->FLOAT:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 41
    new-instance v12, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-string v15, "DOUBLE"

    const/16 v16, 0x7

    const-string v17, "double"

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object v1, v9

    move-object v2, v8

    move-object v3, v13

    move-object v4, v6

    move-object v5, v7

    filled-new-array/range {v0 .. v5}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sput-object v12, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->DOUBLE:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 31
    move-object v0, v6

    move-object v1, v13

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    filled-new-array/range {v0 .. v7}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->$VALUES:[Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "boxTypeQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name",
            "boxTypeQName",
            "promotionTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p5, "promotionTypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeQName:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    .line 55
    return-void
.end method

.method public static byName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    .local v3, "ptu":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->describe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    return-object v3

    .line 59
    .end local v3    # "ptu":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    const-class v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1

    .line 31
    sget-object v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->$VALUES:[Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object v0
.end method


# virtual methods
.method public asPrimitive()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 0

    .line 75
    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxTypeQName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeQName:Ljava/lang/String;

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 6
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 106
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 107
    :cond_2
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeQName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    return v2

    .line 111
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 112
    .local v3, "promotion":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeQName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    return v2

    .line 115
    .end local v3    # "promotion":Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;
    :cond_4
    goto :goto_0

    .line 116
    :cond_5
    return v1

    .line 118
    :cond_6
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->isAssignableBy(Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public isNumeric()Z
    .locals 1

    .line 127
    sget-object v0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->BOOLEAN:Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveTypeUsage{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
