.class Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;
.super Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;
.source "AbstractQualifierPolymorphism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolyCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<",
        "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
        "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

.field private final visitedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;-><init>()V

    .line 336
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 337
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitedTypes:Ljava/util/Set;

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$1;

    .line 325
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;-><init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V

    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # Ljava/lang/Iterable;

    .line 325
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 325
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0
.end method

.method private visit(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 393
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "polyTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 395
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, "itert":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 398
    .local v2, "itera":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 400
    .local v3, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 401
    .local v4, "actualType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v3, v4}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 402
    .end local v3    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "actualType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 403
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 413
    return-object v0

    .line 409
    :cond_1
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "PolyCollector.visit: types is shorter than polyTypes:%n  types = %s%n  polyTypes = %s%n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 404
    :cond_2
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "PolyCollector.visit: types is longer than polyTypes:%n  types = %s%n  polyTypes = %s%n"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "polyType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 431
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 432
    .local v0, "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v3, :cond_1

    .line 433
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 435
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1

    .line 439
    :cond_2
    sget-object v1, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 447
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1

    .line 445
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1

    .line 441
    :pswitch_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    iget-object v1, v1, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 442
    invoke-static {v1, v0, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 443
    .local v1, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    return-object v2

    .line 451
    .end local v0    # "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v1    # "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    iget-object v0, v0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 453
    .local v0, "asSuper":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0, p2, v2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 344
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitedTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "aVoid"    # Ljava/lang/Void;

    .line 459
    nop

    .line 461
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    filled-new-array {p1, v0, p2, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 459
    const-string v1, "AbstractQualifierPolymorphism: Unexpected combination: type1: %s (%s) type2: %s (%s)."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    check-cast p2, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 358
    .local p1, "r1":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .local p2, "r2":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 361
    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 365
    :cond_1
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 367
    .local v0, "res":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>()V

    .line 368
    .local v1, "r2remain":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->addAll(Ljava/util/Collection;)Z

    .line 369
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 371
    .local v4, "polyQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 372
    .local v5, "a1Annos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 373
    .local v6, "a2Annos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 376
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-virtual {v7, v4, v5, v6}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->combine(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 374
    :cond_3
    :goto_1
    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :goto_2
    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->remove(Ljava/lang/Object;)Z

    .line 379
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v4    # "polyQual":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "a1Annos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    .end local v6    # "a2Annos":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 381
    .local v3, "key2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v0, v3, v4}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v3    # "key2":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_3

    .line 383
    :cond_5
    return-object v0

    .line 362
    .end local v0    # "res":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    .end local v1    # "r2remain":Lorg/checkerframework/framework/util/AnnotationMirrorSet;
    :cond_6
    :goto_4
    return-object p1

    .line 359
    :cond_7
    :goto_5
    return-object p2
.end method

.method public reset()V
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitedTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 544
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->clear()V

    .line 545
    return-void
.end method

.method protected bridge synthetic scanWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->scanWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method protected scanWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 468
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 8
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    return-object v0

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 481
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "type2Args":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 483
    .local v3, "type1Arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 484
    .local v4, "type2Arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 485
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 486
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    iget-object v7, v7, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 487
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v7

    .line 484
    invoke-static {v5, v6, v7}, Lorg/checkerframework/javacutil/TypesUtils;->isErasedSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 488
    invoke-direct {p0, v3, v4}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 490
    .end local v3    # "type1Arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "type2Arg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 492
    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 499
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 521
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 528
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->visited(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    .line 538
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v1

    return-object v1
.end method
