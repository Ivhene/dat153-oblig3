.class Lscenelib/annotations/util/DiffVisitor;
.super Ljava/lang/Object;
.source "SceneOps.java"

# interfaces
.implements Lscenelib/annotations/el/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscenelib/annotations/el/ElementVisitor<",
        "Ljava/lang/Void;",
        "Lcom/sun/tools/javac/util/Pair<",
        "Lscenelib/annotations/el/AElement;",
        "Lscenelib/annotations/el/AElement;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static diff(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 343
    .local p0, "minuend":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p1, "subtrahend":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "difference":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    if-eqz p0, :cond_3

    .line 344
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 345
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 346
    .local v2, "mval":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 347
    .local v3, "sval":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v3, :cond_0

    .line 348
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 349
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 352
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 353
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-static {v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 354
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_1
    goto :goto_2

    .line 357
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    .line 358
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 359
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 362
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "mval":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    .end local v3    # "sval":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :goto_2
    goto :goto_0

    .line 364
    :cond_3
    return-void
.end method

.method private static diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 328
    .local p0, "minuend":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "subtrahend":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "difference":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-eqz p0, :cond_1

    .line 329
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 330
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method private elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;
    .locals 1
    .param p1, "stype"    # Lscenelib/annotations/el/AElement;
    .param p2, "dtype"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ")",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Lscenelib/annotations/el/AElement;",
            ">(",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 308
    .local p1, "minuend":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p2, "subtrahend":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p3, "difference":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 310
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 311
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    .line 312
    .local v3, "mval":Lscenelib/annotations/el/AElement;, "TV;"
    invoke-virtual {p2, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 313
    .local v4, "sval":Lscenelib/annotations/el/AElement;, "TV;"
    if-nez v4, :cond_0

    .line 314
    invoke-virtual {p3, v2, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 316
    :cond_0
    invoke-virtual {p3, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AElement;

    invoke-direct {p0, v4, v5}, Lscenelib/annotations/util/DiffVisitor;->elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lscenelib/annotations/el/AElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "mval":Lscenelib/annotations/el/AElement;, "TV;"
    .end local v4    # "sval":Lscenelib/annotations/el/AElement;, "TV;"
    :goto_1
    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 2
    .param p1, "minuend"    # Lscenelib/annotations/el/AnnotationDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AnnotationDef;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 145
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BUG: DiffVisitor.visitAnnotationDef invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitBlock(Lscenelib/annotations/el/ABlock;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lscenelib/annotations/el/ABlock;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/ABlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ABlock;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 155
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/ABlock;

    .line 156
    .local v0, "subtrahend":Lscenelib/annotations/el/ABlock;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/ABlock;

    .line 157
    .local v1, "difference":Lscenelib/annotations/el/ABlock;
    iget-object v2, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 158
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitExpression(Lscenelib/annotations/el/AExpression;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitClass(Lscenelib/annotations/el/AClass;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lscenelib/annotations/el/AClass;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/AClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AClass;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 167
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/AClass;

    .line 168
    .local v0, "subtrahend":Lscenelib/annotations/el/AClass;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 169
    .local v1, "difference":Lscenelib/annotations/el/AClass;
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 170
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 172
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 174
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 176
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 178
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 179
    iget-object v2, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 181
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitDeclaration(Lscenelib/annotations/el/ADeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/ADeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ADeclaration;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 191
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    .line 192
    .local v0, "subtrahend":Lscenelib/annotations/el/ADeclaration;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/ADeclaration;

    .line 193
    .local v1, "difference":Lscenelib/annotations/el/ADeclaration;
    iget-object v2, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 195
    iget-object v2, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 197
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitElement(Lscenelib/annotations/el/AElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitElement(Lscenelib/annotations/el/AElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitElement(Lscenelib/annotations/el/AElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 6
    .param p1, "minuend"    # Lscenelib/annotations/el/AElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AElement;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 289
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/AElement;

    .line 290
    .local v0, "subtrahend":Lscenelib/annotations/el/AElement;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/AElement;

    .line 291
    .local v1, "difference":Lscenelib/annotations/el/AElement;
    iget-object v2, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v3, v0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v4, v1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 293
    iget-object v2, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, v0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 295
    .local v2, "stype":Lscenelib/annotations/el/AElement;
    iget-object v3, v1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 296
    .local v3, "dtype":Lscenelib/annotations/el/AElement;
    iget-object v4, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v2, v3}, Lscenelib/annotations/util/DiffVisitor;->elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v2    # "stype":Lscenelib/annotations/el/AElement;
    .end local v3    # "dtype":Lscenelib/annotations/el/AElement;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitExpression(Lscenelib/annotations/el/AExpression;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpression(Lscenelib/annotations/el/AExpression;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/AExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AExpression;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 207
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/AExpression;

    .line 208
    .local v0, "subtrahend":Lscenelib/annotations/el/AExpression;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/AExpression;

    .line 209
    .local v1, "difference":Lscenelib/annotations/el/AExpression;
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 211
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 213
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 214
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 215
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 216
    iget-object v2, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 217
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitElement(Lscenelib/annotations/el/AElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitField(Lscenelib/annotations/el/AField;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitField(Lscenelib/annotations/el/AField;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 1
    .param p1, "minuend"    # Lscenelib/annotations/el/AField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AField;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 226
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitMethod(Lscenelib/annotations/el/AMethod;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lscenelib/annotations/el/AMethod;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/AMethod;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 236
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/AMethod;

    .line 237
    .local v0, "subtrahend":Lscenelib/annotations/el/AMethod;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 238
    .local v1, "difference":Lscenelib/annotations/el/AMethod;
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 239
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 241
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 243
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 245
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    .line 246
    invoke-direct {p0, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v3

    .line 245
    invoke-virtual {p0, v2, v3}, Lscenelib/annotations/util/DiffVisitor;->visitBlock(Lscenelib/annotations/el/ABlock;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    .line 247
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    .line 249
    invoke-direct {p0, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v3

    .line 248
    invoke-virtual {v2, p0, v3}, Lscenelib/annotations/el/ATypeElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v3, v0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v4, v1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 253
    invoke-direct {p0, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->elemPair(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v3

    .line 252
    invoke-virtual {v2, p0, v3}, Lscenelib/annotations/el/AField;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitDeclaration(Lscenelib/annotations/el/ADeclaration;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public visitScene(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)V
    .locals 3
    .param p1, "minuend"    # Lscenelib/annotations/el/AScene;
    .param p2, "subtrahend"    # Lscenelib/annotations/el/AScene;
    .param p3, "difference"    # Lscenelib/annotations/el/AScene;

    .line 134
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p2, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, p3, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 136
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    iget-object v1, p2, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    iget-object v2, p3, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lscenelib/annotations/util/DiffVisitor;->diff(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 137
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p2, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, p3, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v0, v1, v2}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 139
    return-void
.end method

.method public bridge synthetic visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 5
    .param p1, "minuend"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ATypeElement;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 265
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    iget-object v0, p2, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 266
    .local v0, "subtrahend":Lscenelib/annotations/el/ATypeElement;
    iget-object v1, p2, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/el/ATypeElement;

    .line 267
    .local v1, "difference":Lscenelib/annotations/el/ATypeElement;
    iget-object v2, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v4, v1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-direct {p0, v2, v3, v4}, Lscenelib/annotations/util/DiffVisitor;->visitElements(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 269
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitElement(Lscenelib/annotations/el/AElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lcom/sun/tools/javac/util/Pair;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;
    .locals 1
    .param p1, "minuend"    # Lscenelib/annotations/el/ATypeElementWithType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            "Lcom/sun/tools/javac/util/Pair<",
            "Lscenelib/annotations/el/AElement;",
            "Lscenelib/annotations/el/AElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 279
    .local p2, "eltPair":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;>;"
    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/util/DiffVisitor;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Lcom/sun/tools/javac/util/Pair;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
