.class Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "TypeArgInferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVariableFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Boolean;",
        "Ljava/util/Collection<",
        "Ljavax/lang/model/type/TypeVariable;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$1;

    .line 403
    invoke-direct {p0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected reduce(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "r1"    # Ljava/lang/Boolean;
    .param p2, "r2"    # Ljava/lang/Boolean;

    .line 423
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 424
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 426
    :cond_1
    if-nez p2, :cond_2

    .line 427
    return-object p1

    .line 430
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 403
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;->reduce(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 409
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "typeVars":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/lang/model/type/TypeVariable;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 410
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 413
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v1, 0x1

    .line 414
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 415
    .local v3, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, p2, v0}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    move-object v0, v4

    .line 416
    const/4 v1, 0x0

    .line 417
    .end local v3    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 418
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 403
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;->scan(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 436
    .local p2, "typeVars":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/lang/model/type/TypeVariable;>;"
    nop

    .line 437
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 436
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 403
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/TypeArgInferenceUtil$TypeVariableFinder;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
