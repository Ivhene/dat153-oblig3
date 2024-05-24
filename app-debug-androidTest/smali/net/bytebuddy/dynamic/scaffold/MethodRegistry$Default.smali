.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;
.super Ljava/lang/Object;
.source "MethodRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    .line 415
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    .line 424
    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 3
    .param p2, "handler"    # Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
    .param p3, "attributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;"
        }
    .end annotation

    .line 443
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p4, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-direct {v2, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>(Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;
    .locals 19
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .param p2, "methodGraphCompiler"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
    .param p3, "typeValidation"    # Lnet/bytebuddy/dynamic/scaffold/TypeValidation;
    .param p4, "visibilityBridgeStrategy"    # Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;"
        }
    .end annotation

    .line 454
    .local p5, "ignoredMethods":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 455
    .local v1, "implementations":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v9, v2

    .line 456
    .local v9, "handlers":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    .line 457
    .local v10, "declaredMethods":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/method/MethodDescription;>;"
    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v11, p1

    .end local p1    # "instrumentedType":Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .local v11, "instrumentedType":Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    .line 458
    .local v3, "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->getHandler()Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->getHandler()Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    move-result-object v4

    invoke-interface {v4, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v4

    .line 460
    .local v4, "typeDescription":Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    if-eq v11, v4, :cond_2

    .line 461
    invoke-interface {v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription;

    .line 462
    .local v6, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 463
    invoke-virtual {v3, v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asSupplementaryEntry(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v6    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    :cond_0
    goto :goto_1

    .line 467
    :cond_1
    move-object v5, v4

    move-object v11, v5

    .line 470
    .end local v3    # "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    .end local v4    # "typeDescription":Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    :cond_2
    goto :goto_0

    .line 471
    :cond_3
    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v13

    .line 473
    .local v13, "methodGraph":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    .line 474
    invoke-static {v11}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    .line 475
    invoke-static {v11}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->whereNone(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    .line 476
    move-object/from16 v14, p5

    invoke-interface {v14, v11}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v15

    .line 477
    .local v15, "relevanceMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 478
    .local v8, "methods":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/method/MethodDescription;>;"
    invoke-interface {v13}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    .line 479
    .local v3, "node":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    .line 480
    .local v4, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->isInterface()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 481
    .local v5, "visibilityBridge":Z
    :goto_3
    invoke-interface {v15, v4}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 482
    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    .line 483
    .local v7, "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    move-object/from16 p1, v2

    invoke-virtual {v7, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v2

    invoke-interface {v2, v4}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    nop

    .line 486
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getMethodTypes()Ljava/util/Set;

    move-result-object v2

    .line 487
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v6

    .line 484
    invoke-virtual {v7, v11, v4, v2, v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asPreparedEntry(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v5, 0x0

    .line 489
    goto :goto_5

    .line 491
    .end local v7    # "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    :cond_5
    move-object/from16 v2, p1

    goto :goto_4

    .line 482
    :cond_6
    move-object/from16 p1, v2

    goto :goto_5

    .line 481
    :cond_7
    move-object/from16 p1, v2

    .line 493
    :goto_5
    if-eqz v5, :cond_c

    .line 494
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isMadeVisible()Z

    move-result v2

    if-nez v2, :cond_b

    .line 495
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 496
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isFinal()Z

    move-result v2

    if-nez v2, :cond_9

    .line 497
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->isPackagePrivate()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 498
    move-object/from16 v7, p4

    invoke-interface {v7, v4}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;->generateVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 500
    invoke-interface {v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v2

    invoke-static {v4, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->forVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 497
    :cond_8
    move-object/from16 v7, p4

    goto :goto_6

    .line 496
    :cond_9
    move-object/from16 v7, p4

    goto :goto_6

    .line 495
    :cond_a
    move-object/from16 v7, p4

    goto :goto_6

    .line 494
    :cond_b
    move-object/from16 v7, p4

    goto :goto_6

    .line 493
    :cond_c
    move-object/from16 v7, p4

    .line 502
    :cond_d
    :goto_6
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .end local v3    # "node":Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .end local v4    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    .end local v5    # "visibilityBridge":Z
    move-object/from16 v2, p1

    goto/16 :goto_2

    .line 504
    :cond_e
    move-object/from16 v7, p4

    .line 505
    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v3, v15}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    invoke-direct {v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 504
    invoke-static {v2, v3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    .line 507
    .local v3, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    .line 508
    .local v5, "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    invoke-virtual {v5, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v6

    invoke-interface {v6, v3}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 509
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v4

    invoke-virtual {v5, v11, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asPreparedEntry(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    goto :goto_9

    .line 512
    .end local v5    # "entry":Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    :cond_f
    goto :goto_8

    .line 513
    :cond_10
    :goto_9
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    goto :goto_7

    .line 515
    :cond_11
    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;

    .line 516
    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-result-object v4

    .line 517
    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v5

    .line 518
    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 519
    invoke-interface {v11}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->validated()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    move-object v6, v2

    goto :goto_a

    :cond_12
    move-object v6, v11

    :goto_a
    new-instance v3, Lnet/bytebuddy/description/method/MethodList$Explicit;

    invoke-direct {v3, v8}, Lnet/bytebuddy/description/method/MethodList$Explicit;-><init>(Ljava/util/List;)V

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v7, v13

    move-object/from16 v18, v8

    .end local v8    # "methods":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local v18, "methods":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/method/MethodDescription;>;"
    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;-><init>(Ljava/util/LinkedHashMap;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/description/method/MethodList;)V

    .line 515
    return-object v16
.end method

.method public prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 3
    .param p2, "handler"    # Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
    .param p3, "attributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;"
        }
    .end annotation

    .line 433
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    .local p4, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>(Ljava/util/List;)V

    return-object v0
.end method
