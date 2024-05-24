.class public Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;
.super Ljava/lang/Object;
.source "VerifierFactory.java"


# static fields
.field private static final hashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/verifier/Verifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->hashMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->observers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static attach(Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;)V
    .locals 1
    .param p0, "o"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;

    .line 98
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public static detach(Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;)V
    .locals 1
    .param p0, "o"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;

    .line 106
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public static getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .locals 3
    .param p0, "fully_qualified_classname"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->hashMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 60
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-direct {v2, p0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 62
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->notify(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v1
.end method

.method public static getVerifiers()[Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .locals 2

    .line 89
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->hashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 90
    .local v1, "vs":[Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    return-object v0
.end method

.method private static notify(Ljava/lang/String;)V
    .locals 2
    .param p0, "fully_qualified_classname"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;

    .line 75
    .local v1, "vfo":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;
    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;->update(Ljava/lang/String;)V

    .line 76
    .end local v1    # "vfo":Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
