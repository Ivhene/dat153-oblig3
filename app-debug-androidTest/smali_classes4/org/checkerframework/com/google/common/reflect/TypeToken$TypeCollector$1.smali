.class final Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector<",
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector;-><init>(Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1299
    check-cast p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;->getInterfaces(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method getInterfaces(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;>;"
        }
    .end annotation

    .line 1307
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getGenericInterfaces()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1299
    check-cast p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;->getRawType(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method getRawType(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1302
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1299
    check-cast p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeCollector$1;->getSuperclass(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method

.method getSuperclass(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Lorg/checkerframework/com/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 1313
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->getGenericSuperclass()Lorg/checkerframework/com/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
