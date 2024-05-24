.class public abstract Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;
.super Ljava/lang/Object;
.source "TypeLiteral.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/lang3/reflect/Typed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/lang3/reflect/Typed<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final T:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final toString:Ljava/lang/String;

.field public final value:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->T:Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 89
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->T:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2}, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeUtils;->toLongString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 91
    const-string v3, "%s does not assign type parameter %s"

    invoke-static {v0, v3, v2}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s<%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->toString:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<TT;>;"
    if-ne p1, p0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;

    .line 106
    .local v0, "other":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<*>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    return v1
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 121
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 111
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->value:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x250

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    .local p0, "this":Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;, "Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/reflect/TypeLiteral;->toString:Ljava/lang/String;

    return-object v0
.end method
