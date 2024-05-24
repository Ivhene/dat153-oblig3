.class public final Lorg/checkerframework/common/subtyping/SubtypingChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "SubtypingChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "quals",
        "qualDirs"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method

.method public static getSuppressWarningsKeys(Lorg/checkerframework/framework/source/SourceVisitor;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "visitor":Lorg/checkerframework/framework/source/SourceVisitor;, "Lorg/checkerframework/framework/source/SourceVisitor<**>;"
    .local p1, "superSupportedTypeQualifiers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v0, "result":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 47
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    .line 48
    invoke-virtual {v1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v1

    .line 49
    .local v1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 50
    .local v3, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSuppressWarningsKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/checkerframework/common/subtyping/SubtypingChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/common/subtyping/SubtypingChecker;->getSuppressWarningsKeys(Lorg/checkerframework/framework/source/SourceVisitor;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
