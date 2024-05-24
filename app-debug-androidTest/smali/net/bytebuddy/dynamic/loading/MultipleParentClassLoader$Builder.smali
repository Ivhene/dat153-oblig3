.class public Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
.super Ljava/lang/Object;
.source "MultipleParentClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ONLY:I


# instance fields
.field private final classLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final sealed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Z)V

    .line 253
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .param p2, "sealed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;Z)V"
        }
    .end annotation

    .line 270
    .local p1, "classLoaders":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/ClassLoader;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 272
    iput-boolean p2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    .line 273
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "sealed"    # Z

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    .line 262
    return-void
.end method

.method private doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 475
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 295
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v0, "classLoaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 297
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v1

    return-object v1
.end method

.method public append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 321
    .local p1, "classLoaders":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/ClassLoader;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v1, "registered":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 325
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    goto :goto_0

    .line 329
    :cond_1
    new-instance v2, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v3, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {v2, v0, v3}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public varargs append([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 284
    .local p1, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs append([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 1
    .param p1, "classLoader"    # [Ljava/lang/ClassLoader;

    .line 310
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->append(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 354
    .local p1, "types":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v0, "classLoaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 356
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v1

    return-object v1
.end method

.method public appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 380
    .local p1, "classLoaders":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/ClassLoader;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 384
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 385
    goto :goto_0

    .line 387
    :cond_0
    move-object v3, v2

    .line 389
    .local v3, "candidate":Ljava/lang/ClassLoader;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 390
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ClassLoader;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 391
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 392
    .local v5, "previous":Ljava/lang/ClassLoader;
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 395
    .end local v5    # "previous":Ljava/lang/ClassLoader;
    :cond_2
    goto :goto_1

    .line 396
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ClassLoader;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v3, v4

    if-nez v4, :cond_1

    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 399
    .restart local v5    # "previous":Ljava/lang/ClassLoader;
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 400
    goto :goto_0

    .line 402
    :cond_5
    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v5, v6

    if-nez v6, :cond_4

    .line 403
    .end local v5    # "previous":Ljava/lang/ClassLoader;
    goto :goto_2

    .line 404
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "candidate":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 406
    :cond_7
    new-instance v1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public varargs appendMostSpecific([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 342
    .local p1, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendMostSpecific([Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 1
    .param p1, "classLoader"    # [Ljava/lang/ClassLoader;

    .line 369
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->appendMostSpecific(Ljava/util/List;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/ClassLoader;
    .locals 2

    .line 441
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    .line 442
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;-><init>(Ljava/util/List;)V

    .line 441
    :goto_0
    return-object v0
.end method

.method public build(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 462
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    move-result-object v0

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->doBuild(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 462
    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;"
        }
    .end annotation

    .line 416
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/ClassLoader;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    .local v0, "classLoaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 418
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-interface {p1, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    goto :goto_0

    .line 422
    :cond_1
    new-instance v1, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;

    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->sealed:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$Builder;->classLoaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
